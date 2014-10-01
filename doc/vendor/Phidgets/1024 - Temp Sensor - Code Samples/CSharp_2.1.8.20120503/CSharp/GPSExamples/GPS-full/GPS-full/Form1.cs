/* - GPS full -
 * This example displays the connected Phidget GPS device's details as well as the current 
 * position, velocity, heading. There is also a map view that shows the current location on a map.
 * 
 * Please note that this example was designed to work with only one Phidget GPS connected. 
 * For an example showing how to use two Phidgets of the same time concurrently, please see the
 * Servo-multi example in the Servo Examples.
 *
 * Copyright 2010 Phidgets Inc.  
 * This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/
 */

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Text;
using System.Windows.Forms;
using Phidgets;
using Phidgets.Events;
using System.Collections;
using System.Runtime.InteropServices;
using System.Diagnostics;

namespace GPS_full
{
    public partial class Form1 : Form
    {
        Graphics mapGraphic;
        private GPS gps;
        private ErrorEventBox errorBox;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
            //Phidget.enableLogging(Phidget.LogLevel.PHIDGET_LOG_INFO, null);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            gps = new GPS();

            gps.Attach += new AttachEventHandler(gps_Attach);
            gps.Detach += new DetachEventHandler(gps_Detach);
            gps.Error += new ErrorEventHandler(gps_Error);

            gps.PositionChange += new GPSPositionChangeEventHandler(gps_PositionChange);
            gps.PositionFixStatusChange += new GPSPositionFixStatusChangeEventHandler(gps_PositionFixStatusChange);

            openCmdLine(gps);

            gMapControl1.CurrentPosition = new GMap.NET.PointLatLng(0, 0);
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            gps.PositionChange -= new GPSPositionChangeEventHandler(gps_PositionChange);
            gps.PositionFixStatusChange -= new GPSPositionFixStatusChangeEventHandler(gps_PositionFixStatusChange);

            Application.DoEvents();

            gps.close();
        }

        void gps_Attach(object sender, AttachEventArgs e)
        {
            GPS attached = (GPS)sender;
            serialTxt.Text = attached.SerialNumber.ToString();
            attachedTxt.Text = attached.Attached.ToString();
            versiontxt.Text = attached.Version.ToString();
            nameTxt.Text = attached.Name.ToString();
            timer1.Start();

            mapGraphic = pictureBox1.CreateGraphics();
        }

        void gps_Detach(object sender, DetachEventArgs e)
        {
            GPS detached = (GPS)sender;
            serialTxt.Clear();
            attachedTxt.Clear();
            versiontxt.Clear();
            nameTxt.Clear();
            checkBox1.Checked = false;

            timer1.Stop();

            timeTxt.Text = "Time: Unknown";
            dateTxt.Text = "Date: Unknown";

            latTxt.Text = "Unknown";
            longTxt.Text = "Unknown";
            altTxt.Text = "Unknown";
            headTxt.Text = "Unknown";
            velTxt.Text = "Unknown";
        }

        void gps_Error(object sender, ErrorEventArgs e)
        {
            Phidget phid = (Phidget)sender;
            DialogResult result;
            switch (e.Type)
            {
                case PhidgetException.ErrorType.PHIDGET_ERREVENT_BADPASSWORD:
                    phid.close();
                    TextInputBox dialog = new TextInputBox("Error Event",
                        "Authentication error: This server requires a password.", "Please enter the password, or cancel.");
                    result = dialog.ShowDialog();
                    if (result == DialogResult.OK)
                        openCmdLine(phid, dialog.password);
                    else
                        Environment.Exit(0);
                    break;
                case PhidgetException.ErrorType.PHIDGET_ERREVENT_PACKETLOST:
                    //Ignore this error - it's not useful in this context.
                    return;
                default:
                    if (!errorBox.Visible)
                        errorBox.Show();
                    break;
            }
            errorBox.addMessage(DateTime.Now.ToLongDateString() + " " + DateTime.Now.ToLongTimeString() + ": " + e.Description);
        }

        void gps_PositionChange(object sender, GPSPositionChangeEventArgs e)
        {
            latTxt.Text = e.Latitude.ToString("f6");
            longTxt.Text = e.Longitude.ToString("f6");
            altTxt.Text = e.Altitude.ToString("f1") + "m";
            try
            {
                headTxt.Text = gps.Heading.ToString();
                velTxt.Text = gps.Velocity.ToString("f1") + "km/h";
            }
            catch { }

            try
            {
                if (checkBox1.Checked)
                    gMapControl1.CurrentPosition = new GMap.NET.PointLatLng(e.Latitude, e.Longitude);

            }
            catch { }
            double xcoor1 = 0, ycoor1 = 0, xcoor2 = 0, ycoor2 = 0;
            double head = 0;
            try
            {
                head = gps.Heading;
            }
            catch { }
            xcoor1 = (Math.Sin(((head + 180) * 0.0174532925)) * 10) + 10;
            ycoor1 = (Math.Cos(((head + 180) * 0.0174532925)) * 10) + 10;
            xcoor2 = 10 - (Math.Sin(((head + 180) * 0.0174532925)) * 10);
            ycoor2 = 10 - (Math.Cos(((head + 180) * 0.0174532925)) * 10);

            mapGraphic.Clear(Color.FromName("Control"));
            mapGraphic.SmoothingMode = SmoothingMode.AntiAlias;
            Pen p = new Pen(Color.Black, 4);
            p.StartCap = LineCap.Round;
            p.EndCap = LineCap.ArrowAnchor;
            mapGraphic.DrawLine(p, (float)xcoor2, (float)ycoor2, (float)xcoor1, (float)ycoor1);
            p.Dispose();
        }

        void gps_PositionFixStatusChange(object sender, GPSPositionFixStatusChangeEventArgs e)
        {
            checkBox1.Checked = e.PositionFixStatus;
            if (e.PositionFixStatus == false)
            {
                latTxt.Text = "Unknown";
                longTxt.Text = "Unknown";
                altTxt.Text = "Unknown";
                headTxt.Text = "Unknown";
                velTxt.Text = "Unknown";
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (gps.Attached)
            {
                try
                {
                    //GPS time is in UTC, convert to local time
                    DateTime localTime = gps.GPSDateAndTime.ToLocalTime();

                    timeTxt.Text = "Time: " + localTime.Hour.ToString("D2") + ":" + localTime.Minute.ToString("D2") + ":" + localTime.Second.ToString("D2") + "." + localTime.Millisecond.ToString("D3");
                    dateTxt.Text = "Date: " + localTime.Day + "/" + localTime.Month + "/" + localTime.Year;
                }
                catch { }
            }
        }

        private void Open_GE_Click(object sender, EventArgs e)
        {
            this.Height = 637;
            Open_GM.Enabled = false;
            Close_GM.Enabled = true;
        }

        private void Close_GE_Click(object sender, EventArgs e)
        {
            this.Height = 267;
            Open_GM.Enabled = true;
            Close_GM.Enabled = false;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            gMapControl1.MapType = GMap.NET.MapType.GoogleMap;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            gMapControl1.MapType = GMap.NET.MapType.GoogleSatellite;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            gMapControl1.MapType = GMap.NET.MapType.GoogleHybrid;
        }

        //Parses command line arguments and calls the appropriate open
        #region Command line open functions
        private void openCmdLine(Phidget p)
        {
            openCmdLine(p, null);
        }
        private void openCmdLine(Phidget p, String pass)
        {
            int serial = -1;
            int port = 5001;
            String host = null;
            bool remote = false, remoteIP = false;
            string[] args = Environment.GetCommandLineArgs();
            String appName = args[0];

            try
            { //Parse the flags
                for (int i = 1; i < args.Length; i++)
                {
                    if (args[i].StartsWith("-"))
                        switch (args[i].Remove(0, 1).ToLower())
                        {
                            case "n":
                                serial = int.Parse(args[++i]);
                                break;
                            case "r":
                                remote = true;
                                break;
                            case "s":
                                remote = true;
                                host = args[++i];
                                break;
                            case "p":
                                pass = args[++i];
                                break;
                            case "i":
                                remoteIP = true;
                                host = args[++i];
                                if (host.Contains(":"))
                                {
                                    port = int.Parse(host.Split(':')[1]);
                                    host = host.Split(':')[0];
                                }
                                break;
                            default:
                                goto usage;
                        }
                    else
                        goto usage;
                }

                if (remoteIP)
                    p.open(serial, host, port, pass);
                else if (remote)
                    p.open(serial, host, pass);
                else
                    p.open(serial);
                return; //success
            }
            catch { }
        usage:
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("Invalid Command line arguments." + Environment.NewLine);
            sb.AppendLine("Usage: " + appName + " [Flags...]");
            sb.AppendLine("Flags:\t-n   serialNumber\tSerial Number, omit for any serial");
            sb.AppendLine("\t-r\t\tOpen remotely");
            sb.AppendLine("\t-s   serverID\tServer ID, omit for any server");
            sb.AppendLine("\t-i   ipAddress:port\tIp Address and Port. Port is optional, defaults to 5001");
            sb.AppendLine("\t-p   password\tPassword, omit for no password" + Environment.NewLine);
            sb.AppendLine("Examples: ");
            sb.AppendLine(appName + " -n 50098");
            sb.AppendLine(appName + " -r");
            sb.AppendLine(appName + " -s myphidgetserver");
            sb.AppendLine(appName + " -n 45670 -i 127.0.0.1:5001 -p paswrd");
            MessageBox.Show(sb.ToString(), "Argument Error", MessageBoxButtons.OK, MessageBoxIcon.Error);

            Application.Exit();
        }
        #endregion
    }
}