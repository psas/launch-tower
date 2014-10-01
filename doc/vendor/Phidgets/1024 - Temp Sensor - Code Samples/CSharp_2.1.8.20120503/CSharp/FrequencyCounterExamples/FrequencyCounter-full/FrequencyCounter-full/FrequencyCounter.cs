using System;
using System.Collections.Generic;
using System.Text;
using Phidgets;
using Phidgets.Events;
using System.Collections;
using System.ComponentModel;

namespace PhidgetsGeneric
{
    class FrequencyCounter : Generic
    {
        public FrequencyCounterInputCollection inputs;

        const double tickspersec = 24000000 / 16 / 15 / 1;

        public FrequencyCounter()
        {
            this.Packet += new Phidgets.Events.PacketEventHandler(FrequencyCounter_Packet);
            this.Attach += new AttachEventHandler(FrequencyCounter_Attach);
            this.Detach += new DetachEventHandler(FrequencyCounter_Detach);
        }

        //Nullify collection arrays
        void FrequencyCounter_Detach(object sender, DetachEventArgs e)
        {
            inputs = null;
        }

        //Initialize collection arrays
        void FrequencyCounter_Attach(object sender, AttachEventArgs e)
        {
            inputs = new FrequencyCounterInputCollection(this, 2);
        }

        void FrequencyCounter_Packet(object sender, Phidgets.Events.PacketEventArgs e)
        {
            int[] Count = new int[2];
            int[] TimeLastEvent = new int[2];

            //Read the packet
            int n = 0; 
            int TimerCount = ((int)e.Packet[n++]) | ((int)e.Packet[n++] << 8);
            Count[0] = (((int)e.Packet[n++]) | ((int)e.Packet[n++] << 8) | ((int)e.Packet[n++] << 16));
            TimeLastEvent[0] = ((int)e.Packet[n++]) | ((int)e.Packet[n++] << 8);
            Count[1] = (((int)e.Packet[n++]) | ((int)e.Packet[n++] << 8) | ((int)e.Packet[n++] << 16));
            TimeLastEvent[1] = ((int)e.Packet[n++]) | ((int)e.Packet[n++] << 8);

            for (int i = 0; i < 2; i++)
            {
                long lastCount = inputs[i].totalCount;
                double lastFreq = inputs[i].frequency;
                inputs[i].totalCount += Count[i]; 
                inputs[i].totalTime += TimerCount;
                

                if (Count[i] == 0)
                {
                    if (i == 0)
                        i = 0;
                    if (inputs[i].adjust != -1) //Do not accumulate if timed out
                        inputs[i].adjust += TimerCount;
                    if (inputs[i].adjust > inputs[i].timeOut * tickspersec)
                    {
                        inputs[i].adjust = -1;
                        inputs[i].frequency = 0;
                        OnCountChange(new CountChangeEventArgs(i, (int)Count[i], (int)inputs[i].frequency, (int)TimerCount));
                    }
                }
                else if (Count[i] >= 1)
                {
                    if ((inputs[i].adjust == -1) && (Count[i] == 1))
                        inputs[i].adjust = TimerCount - TimeLastEvent[i];
                    else
                    {
                        if (inputs[i].adjust == -1)
                            inputs[i].adjust = 0;
                        inputs[i].frequency = (double)((double)Count[i] / (inputs[i].adjust + TimeLastEvent[i]) * tickspersec);
                        inputs[i].adjust = TimerCount - TimeLastEvent[i];
                    }
                }

                if(lastCount != inputs[i].totalCount)
                    OnCountChange(new CountChangeEventArgs(i, (int)Count[i], (double)inputs[i].frequency, (long)TimerCount));

                    
            }     
        }

        int NumberOfChannels
        {
            get
            {
                return 2;
            }
        }

        public void sendData()
        {
            Byte[] packet = new byte[this.OUTPacketLength];
            for (int i = 0; i < packet.Length; i++)
                packet[i] = 0;

            packet[0] = (byte)(((byte)((Convert.ToByte(inputs[1].enabled)) << 3)) + 
                ((byte)((Convert.ToByte(inputs[0].enabled)) << 2)) + 
                ((byte)inputs[1].currentFilter << 1) + 
                (byte)inputs[0].currentFilter);

            sendPacket(packet);

                
        }

        #region Events
        public event CountChangeEventHandler CountChange;
        internal virtual void OnCountChange(CountChangeEventArgs e)
        {
            if (null != CountChange)
            {
                foreach (CountChangeEventHandler CountChangeHandler in CountChange.GetInvocationList())
                {
                    ISynchronizeInvoke syncInvoke = CountChangeHandler.Target as ISynchronizeInvoke;
                    if ((null != syncInvoke) && (syncInvoke.InvokeRequired))
                    {
                        try
                        {
                            syncInvoke.Invoke(CountChangeHandler, new object[] { this, e });
                        }
                        catch { }
                    }
                    else
                        CountChangeHandler(this, e);
                }
            }
        }
        #endregion
    }

    #region Collections

    public class FrequencyCounterInput
    {
        FrequencyCounter phid;
        public int index;
        public long totalCount = 0;
        public long totalTime = 0;
        public double frequency = 0;
        public int adjust = 0;
        public int timeOut = 0;
        public enum Filters { Zero, Logic }
        public bool enabled = false;

        public Filters currentFilter;

        internal FrequencyCounterInput(FrequencyCounter phid, int index)
        {
            this.index = index;
            this.phid = phid;
        }

        public long TotalCount
        {
            get
            {
                return totalCount;
            }
        }

        public long TotalTime
        {
            get
            {
                return totalTime;
            }
        }

        public double Frequency
        {
            get
            {
                return frequency;
            }
        }

        public void Reset()
        {
            //TODO
            frequency = 0;
            totalTime = 0;
            totalCount = 0;
            timeOut = 0;
        }

        public int TimeOut
        {
            get
            {
                return timeOut;
            }
            set
            {
                timeOut = value;
            }
        }

        public bool Enabled
        {
            get
            {
                return enabled;
            }
            set
            {
                enabled = value;
                phid.sendData();
            }
        }

        public Filters Filter
        {
            get
            {
                return currentFilter;
            }
            set
            {
                currentFilter = value;
                phid.sendData();
            }
        }
    }

    public class FrequencyCounterInputCollection : ReadOnlyCollectionBase
    {
        FrequencyCounter phid;

        internal FrequencyCounterInputCollection (FrequencyCounter phid, int numInputs)
        {
            this.phid = phid;
            for (int i = 0; i < numInputs; i++)
            {
                this.InnerList.Add(new FrequencyCounterInput(phid, i));
            }
        }

        internal void Initialize()
        {
        }

        internal void Clear()
        {
            InnerList.Clear();
        }

        public FrequencyCounterInput this[int index]
        {
            get
            {
                return this.InnerList[index] as FrequencyCounterInput;
            }
        }
    }


    #endregion


    #region event stuff

    public delegate void CountChangeEventHandler(object sender, CountChangeEventArgs e);
    public class CountChangeEventArgs : EventArgs
    {
        public readonly int index;
        public readonly int Count;
        public readonly double Frequency;
        public readonly long Time;

        internal CountChangeEventArgs(int index, int Count, double Frequency, long Time)
        {
            this.index = index;
            this.Count = Count;
            this.Frequency = Frequency;
            this.Time = Time;
        }
    }
    #endregion

}
