using System;
using System.Collections.Generic;
using System.Text;
using Phidgets;
using Phidgets.Events;
using System.Collections;
using System.ComponentModel;


namespace PhidgetsGeneric
{
    class Analog : Generic
    {
        public AnalogChannelCollection channels;

        public Analog()
        {
            this.Packet += new Phidgets.Events.PacketEventHandler(Analog_Packet);
            this.Attach += new AttachEventHandler(Analog_Attach);
            this.Detach += new DetachEventHandler(Analog_Detach);
        }

        //Nullify collection arrays
        void Analog_Detach(object sender, DetachEventArgs e)
        {
            channels = null;
        }

        //Initialize collection arrays
        void Analog_Attach(object sender, AttachEventArgs e)
        {
            //4 channels
            channels = new AnalogChannelCollection(this, 4);
            foreach (AnalogChannel channel in channels)
            {
                channel.voltageMax = 10.0;
                channel.voltageMin = -10.0;
                //channel.Voltage = 0;
            } 
        }

        void Analog_Packet(object sender, Phidgets.Events.PacketEventArgs e)
        {


        }

        public void sendData()
        {
            Byte[] packet = new byte[this.OUTPacketLength];
            for (int i = 0; i < packet.Length; i++)
                packet[i] = 0;

            byte enables = (byte)((channels[0].enabled ? 0x01 : 0x00) |
                           (channels[1].enabled ? 0x02 : 0x00) |
                           (channels[2].enabled ? 0x04 : 0x00) |
                           (channels[3].enabled ? 0x08 : 0x00));

            packet[0] = (byte)((channels[0].voltageINT << 4) | enables);
            packet[1] = (byte)(channels[0].voltageINT >> 4);
            packet[2] = (byte)((channels[1].voltageINT << 4));// | 0x03);
            packet[3] = (byte)(channels[1].voltageINT >> 4);
            packet[4] = (byte)(channels[2].voltageINT << 4);
            packet[5] = (byte)(channels[2].voltageINT >> 4);
            packet[6] = (byte)(channels[3].voltageINT << 4);
            packet[7] = (byte)(channels[3].voltageINT >> 4);

            sendPacket(packet);
        }

        #region Events
        //No Events
        #endregion
    }

    #region Collections
    public class AnalogChannel
    {
        Analog phid;
        public int index;
        public double voltage;
        public int voltageINT;
        public bool enabled;
        public double voltageMax;
        public double voltageMin;

        internal AnalogChannel(Analog phid, int index)
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
                phid.sendData();
            }
        }

        public double Voltage
        {
            get
            {
                return this.voltage;
            }
            set
            {
                this.voltage = value;
                //voltageINT = (int)(Math.Round((2047 / (10 / value)),0));
                voltageINT = (int)Math.Round(value * 2048 / 10.0);
                phid.sendData();
            }
        }
    }

    public class AnalogChannelCollection : ReadOnlyCollectionBase
    {
        Analog phid;

        internal AnalogChannelCollection(Analog phid, int numChannels)
        {
            this.phid = phid;
            for (int i = 0; i < numChannels; i++)
            {
                this.InnerList.Add(new AnalogChannel(phid, i));
            }
        }

        internal void Initialize()
        {
        }

        internal void Clear()
        {
            InnerList.Clear();
        }

        public AnalogChannel this[int index]
        {
            get
            {
                return this.InnerList[index] as AnalogChannel;
            }
        }
    }
    #endregion

}
