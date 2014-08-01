using System;
using System.Collections.Generic;
using System.Text;
using Phidgets;
using Phidgets.Events;
using System.Collections;
using System.ComponentModel;

namespace PhidgetsGeneric
{
    public class Bridge : Generic
    {
        public BridgeBridgeCollection bridges;
        private int dataRate = 80;
        private int dataRateMin = 8, dataRateMax = 1000;
        private bool autoPowered;
        internal Byte[] output_queue;
        internal Gains gain = Gains._1;

        internal double[] valueSums;
        private int msCounter = 0;
        private int dataCounter = 0;

        public enum Gains
        {
            _1 = 1,
            _8 = 8,
            _16 = 16,
            _32 = 32,
            _64 = 64,
            _128 = 128
        }

        public Bridge()
        {
            this.Packet += new Phidgets.Events.PacketEventHandler(Bridge_Packet);
            this.Attach += new AttachEventHandler(Bridge_Attach);
            this.Detach += new DetachEventHandler(Bridge_Detach);           
        }

        //Nullify collection arrays
        void Bridge_Detach(object sender, DetachEventArgs e)
        {
            bridges = null;
        }

        //Initialize collection arrays
        void Bridge_Attach(object sender, AttachEventArgs e)
        {
            valueSums = new double[4];
            output_queue = new byte[this.OUTPacketLength];
            bridges = new BridgeBridgeCollection(this, 4);      
        }



        void Bridge_Packet(object sender, Phidgets.Events.PacketEventArgs e)
        {
            int[] strain = new int[4];
            double[] oldValue = new double[4];
            int x = 1;
            int y = 2;
            int z = 3;

            if (e.Packet[0] == 1)
                msCounter += 8;
            dataCounter++;

            for (int i = 0; i < 4; i++)
            {
                strain[i] = ((e.Packet[x] << 16) + (e.Packet[y] << 8) + e.Packet[z]);
                x += 3;
                y += 3;
                z += 3;
                //oldValue[i] = bridges[i].bridgeValue;
                if (bridges[i].enabled)
                    valueSums[i] += (strain[i] - (int)(Math.Pow(2, 23))) / (int)gain / (Math.Pow(2, 23)) * 1000;
                else
                    valueSums[i] += 0; 

                    //bridges[i].bridgeValue = (strain[i] - (int)(Math.Pow(2, 23))) / (int)gain / (Math.Pow(2, 23)) * 1000;

                if (msCounter >= dataRate)
                {
                    bridges[i].bridgeValue = valueSums[i] / dataCounter;
                    OnBridgeChange(new BridgeChangeEventArgs(i, bridges[i].bridgeValue));
                    msCounter = 0;
                    valueSums[i] = 0;
                }
            }



        }

        public Gains Gain
        {
            get
            {
                return this.gain;
            }
            set
            {
                for(int i = 0; i < 4; i++)
                    bridges[i].bridgeMax = (1000 / (int)value) * 2;

                this.gain = value;
                switch (value)
                {
                    case Gains._1:
                        output_queue[0] &= 0xF1;
                        break;
                    case Gains._8:
                        output_queue[0] &= 0xF1;
                        output_queue[0] |= 0x06;
                        break;
                    case Gains._16:
                        output_queue[0] &= 0xF1;
                        output_queue[0] |= 0x08;
                        break;
                    case Gains._32:
                        output_queue[0] &= 0xF1;
                        output_queue[0] |= 0x0A;
                        break;
                    case Gains._64:
                        output_queue[0] &= 0xF1;
                        output_queue[0] |= 0x0C;
                        break;
                    case Gains._128:
                        output_queue[0] &= 0xF1;
                        output_queue[0] |= 0x0E;
                        break;
                    default:
                        break;
                }
                sendPacket(output_queue);
            }
        }

        public int DataRate //Datarate in ms
        {
            get 
            {
                return this.dataRate;
            }
            set 
            {
                if (value < 8 || value > 1000)
                    ;//error
                else
                {
                    this.dataRate = value;

                    output_queue[4] = (byte)(value & 0xFF);
                    output_queue[5] = (byte)((value & 0xFF00) >> 8);

                    sendPacket(output_queue);
                }
            }
        }

        public int DataRateMin
        {
            get
            {
                return 8;
            }
        }


        public int DataRateMax
        {
            get 
            {
                return 1000;
            }
        }

        /*public bool AutoPower
        {
            get 
            {
                return this.autoPowered;
            }
            set 
            {
                this.autoPowered = value;
            }
        }*/

        #region Events
        public event BridgeChangeEventHandler BridgeChange;
        internal virtual void OnBridgeChange(BridgeChangeEventArgs e)
        {
            if (null != BridgeChange)
            {
                foreach (BridgeChangeEventHandler BridgeChangeHandler in BridgeChange.GetInvocationList())
                {
                    ISynchronizeInvoke syncInvoke = BridgeChangeHandler.Target as ISynchronizeInvoke;
                    if ((null != syncInvoke) && (syncInvoke.InvokeRequired))
                    {
                        try
                        {
                            syncInvoke.Invoke(BridgeChangeHandler, new object[] { this, e });
                        }
                        catch { }
                    }
                    else
                        BridgeChangeHandler(this, e);
                }
            }
        }
        #endregion
    }

    #region Collections
    public class BridgeBridge
    {
        Bridge phid;
        internal int index;
        internal double bridgeValue;
        internal double holdValue; //variable used to hold the last retrieved bridge value when disabled
        internal bool enabled = false;
        internal double bridgeMin = 0, bridgeMax;

        internal BridgeBridge(Bridge phid, int index)
        {
            this.phid = phid;
            this.index = index;
        }


        public bool Enabled
        {
            get 
            {
                return this.enabled;
            }
            set 
            {
                this.enabled = value;

                if (value)
                    phid.output_queue[index] |= 0x01;
                else
                {
                    phid.output_queue[index] &= 0xFE;
                    holdValue = bridgeValue;
                    phid.valueSums[index] = 0;
                }
                phid.sendPacket(phid.output_queue);                    
            }
        }

        public double BridgeValue
        {
            get 
            {
                if(enabled)
                    return this.bridgeValue;
                else
                    return this.holdValue;
            }
        }

        public double BridgeMinimum
        {
            get 
            {
                return this.bridgeMin;
            }
        }

        public double BridgeMaximum
        {
            get 
            {
                return this.bridgeMax;
            }
        }
    }

    public class BridgeBridgeCollection : ReadOnlyCollectionBase
    {
        Bridge phid;

        internal BridgeBridgeCollection(Bridge phid, int numBridges)
        {
            this.phid = phid;
            for (int i = 0; i < numBridges; i++)
                this.InnerList.Add(new BridgeBridge(phid, i));
        }

        internal void Initialize()
        {
        }

        internal void Clear()
        {
            InnerList.Clear();
        }

        public BridgeBridge this[int index]
        {
            get
            {
                return this.InnerList[index] as BridgeBridge;
            }
        }
    }


    #endregion

    #region event stuff
    public delegate void BridgeChangeEventHandler(object sender, BridgeChangeEventArgs e);
        public class BridgeChangeEventArgs : EventArgs
        {
            public readonly int Index;
            public readonly double Value;

            internal BridgeChangeEventArgs(int Index, double Value)
            {
                this.Index = Index;
                this.Value = Value;
            }
        }
        #endregion


    
}
