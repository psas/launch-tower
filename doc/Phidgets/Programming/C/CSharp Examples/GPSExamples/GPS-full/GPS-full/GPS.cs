using System;
using System.Collections.Generic;
using System.Text;
using Phidgets;
using Phidgets.Events;
using System.Collections;
using System.ComponentModel;
namespace PhidgetsGeneric
{
    class GPS : Generic 
    {

        public struct GPSTime
        {
            public short Second, Minute, Hour;

            public GPSTime(string time)
            {
                try
                {
                    Hour = Convert.ToInt16(time.Remove(2));
                    Minute = Convert.ToInt16((time.Remove(4)).Remove(0, 2));
                    Second = Convert.ToInt16((time.Remove(6)).Remove(0, 4));
                }
                catch 
                {
                    Hour = 0;
                    Minute = 0;
                    Second = 0;
                }
            }

        }

        public struct GPSDate
        {
            public short Day, Month, Year;

            public GPSDate(string date)
            {
                try
                {
                    Day = Convert.ToInt16(date.Remove(2));
                    Month = Convert.ToInt16((date.Remove(4)).Remove(0, 2));
                    Year = Convert.ToInt16(date.Remove(0, 4));
                }
                catch
                {
                    Day = 0;
                    Month = 0;
                    Year = 0;
                }
            }
        }
 
        double latitude, longitude, altitude, heading, velocity;
        GPSTime time;
        GPSDate date;
        bool fix, lastFix;

        double lastLongitude, lastLatitude;
        //double PositionChangeTrigger;

        byte[] sckbuf = new byte[256];
        byte sckbuf_write, sckbuf_read;
        char[] delims = {',', '*'};

        StringBuilder currentMsg = new StringBuilder("");

        public GPS()
        {
            this.Packet += new Phidgets.Events.PacketEventHandler(GPS_Packet);
            this.Attach += new AttachEventHandler(GPS_Attach);
            this.Detach += new DetachEventHandler(GPS_Detach);
        }

        //Nullify collection arrays
        void GPS_Detach(object sender, DetachEventArgs e)
        {
            //no collections
        }

        //Initialize collection arrays
        void GPS_Attach(object sender, AttachEventArgs e)
        {
            //no collections
        }

        void GPS_Packet(object sender, Phidgets.Events.PacketEventArgs e)
        {
            int i = 0;
            while ((i < 64) && ((byte)(sckbuf_write + 1) != sckbuf_read))
            {
                sckbuf[(byte)sckbuf_write++] = e.Packet[i];
	            i++;
            }
            parse_GPS_packets();
        }

        void parse_GPS_packets() 
        {
            while (sckbuf_read != sckbuf_write)
            {
                if (sckbuf[sckbuf_read] == '$')
                {
                    currentMsg.Remove(0, currentMsg.Length);
                    currentMsg.Append((char)(sckbuf[sckbuf_read]));
                }
                else if (sckbuf[sckbuf_read] == 10)
                    parse_GPS_msg();
                else
                    currentMsg.Append((char)(sckbuf[sckbuf_read]));

                sckbuf_read++;
            }
        }

        void parse_GPS_msg()
        {
            string temp = currentMsg.ToString();
            string[] tempArray = new string[100];
            tempArray = temp.Split(delims);

            switch (tempArray[0])
            {
                case "$GPGGA":
                    try
                    {
                        if (tempArray[9] == "")
                            tempArray[9] = "0";
                        if (tempArray[7] == "")
                            tempArray[7] = "0";
                        time = new GPSTime(tempArray[1]);
                        lastFix = fix;
                        fix = (tempArray[6] != "0");
                        altitude = Convert.ToDouble(tempArray[9]);

                        lastLatitude = latitude;
                        lastLongitude = longitude;

                        latitude = Math.Round(((Convert.ToDouble(tempArray[2].Remove(0, 2)) / 60) + (Convert.ToDouble(tempArray[2].Remove(2)))), 6);
                        longitude = Math.Round(((Convert.ToDouble(tempArray[4].Remove(0, 3)) / 60) + (Convert.ToDouble(tempArray[4].Remove(3)))), 6);

                        if (tempArray[3] == "S")
                            latitude = -latitude;
                        if (tempArray[5] == "W")
                            longitude = -longitude;
                    }
                    catch
                    {

                    }
                    if(lastLongitude != longitude)
                        OnPositionChange(new PositionChangeEventArgs(latitude, longitude));
                    else if(lastLatitude != latitude)
                        OnPositionChange(new PositionChangeEventArgs(latitude, longitude));
                    if(lastFix != fix)
                        OnPositionFixChange(new PositionFixChangeEventArgs(fix));

                    break;
                case "$GPGSA":

                    break;
                case "$GPGSV":

                    break;
                case "$GPRMC":
                    try
                    {
                        if (tempArray[7] == "")
                            tempArray[7] = "0";
                        if (tempArray[8] == "")
                            tempArray[8] = "0";
                        if (tempArray[9] == "")
                            tempArray[9] = "0";
                        date = new GPSDate(tempArray[9]);
                        velocity = (Convert.ToDouble(tempArray[7]))/0.5399568;
                        heading = Convert.ToDouble(tempArray[8]);
                    }
                    catch { }
                    break;
                case "$GPVTG":

                    break;
                case "$GPGLL":

                    break;
                default:
                    break;
            }
        }

        public GPSDate Date
        {
            get 
            {
                return date;
            }
        }

        public GPSTime Time
        {
            get 
            {
                return time;
            }
        }

        public double Altitude
        {
            get 
            {
                return altitude;
            }
        }

        public double Latitude
        {
            get
            {
                return latitude;
            }
        }

        public double Longitude
        {
            get
            {
                return longitude;
            }
        }

        public double Velocity
        {
            get 
            {
                return velocity;
            }
        }

        public double Heading
        {
            get 
            {
                return heading;
            }
        }

        public bool AvailableFix
        {
            get 
            {
                return fix;
            }
        }

        //Need to call only upon the first startup. (should be implemented in firmware instead?)
        public void set10Hz()
        {
            Byte[] packet = new byte[this.OUTPacketLength];
            for (int i = 0; i < packet.Length; i++)
                packet[i] = 0;

            packet[0] = (byte)0x06;

            sendPacket(packet);
        }

        #region Events
        public event PositionChangeEventHandler PositionChange;
        internal virtual void OnPositionChange(PositionChangeEventArgs e)
        {
            if (null != PositionChange)
            {
                foreach (PositionChangeEventHandler PositionChangeHandler in PositionChange.GetInvocationList())
                {
                    ISynchronizeInvoke syncInvoke = PositionChangeHandler.Target as ISynchronizeInvoke;
                    if ((null != syncInvoke) && (syncInvoke.InvokeRequired))
                    {
                        try
                        {
                            syncInvoke.Invoke(PositionChangeHandler, new object[] { this, e });
                        }
                        catch { }
                    }
                    else
                        PositionChangeHandler(this, e);
                }
            }
        }

        public event PositionFixChangeEventHandler PositionFixChange;
        internal virtual void OnPositionFixChange(PositionFixChangeEventArgs e)
        {
            if (null != PositionFixChange)
            {
                foreach (PositionFixChangeEventHandler PositionFixChangeHandler in PositionFixChange.GetInvocationList())
                {
                    ISynchronizeInvoke syncInvoke = PositionFixChangeHandler.Target as ISynchronizeInvoke;
                    if ((null != syncInvoke) && (syncInvoke.InvokeRequired))
                    {
                        try
                        {
                            syncInvoke.Invoke(PositionFixChangeHandler, new object[] { this, e });
                        }
                        catch { }
                    }
                    else
                        PositionFixChangeHandler(this, e);
                }
            }
        }
        #endregion
    }

    #region event stuff
    public delegate void PositionChangeEventHandler(object sender, PositionChangeEventArgs e);
    public delegate void PositionFixChangeEventHandler(object sender, PositionFixChangeEventArgs e);
    public class PositionChangeEventArgs : EventArgs
    {
        public readonly double Latitude, Longitude;

        internal PositionChangeEventArgs(double Latitude, double Longitude)
        {
            this.Latitude = Latitude;
            this.Longitude = Longitude;
        }
    }
    public class PositionFixChangeEventArgs : EventArgs
    {
        public readonly bool Fix;

        internal PositionFixChangeEventArgs(bool Fix)
        {
            this.Fix = Fix;
        }
    }

    #endregion

}
