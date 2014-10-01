/* - Analog full -
 * In this example we display the phidget analog details, including the number of outputs it allows,
 * and controls for the outputs.
 *
 * Please note that this example was designed to work with only one Phidget Analog connected. 
 * Using two Phidgets at the same time concurrently would require separate Phidget objects.
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
using System.Text;
using System.Windows.Forms;
using Phidgets;
using Phidgets.Events;
using System.Collections;

namespace Analog_full
{
    public partial class Form1 : Form
    {
        private Analog analog;
        private ErrorEventBox errorBox;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            analog = new Phidgets.Analog();

            analog.Attach += new AttachEventHandler(analog_Attach);
            analog.Detach += new DetachEventHandler(analog_Detach);
            analog.Error += new ErrorEventHandler(analog_Error);

            openCmdLine(analog);
        }

        //When the form is being close, make sure to shutdown all the outputs and close the Phidget.
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            analog.Attach -= new AttachEventHandler(analog_Attach);
            analog.Detach -= new DetachEventHandler(analog_Detach);
            analog.Error -= new ErrorEventHandler(analog_Error);

            if (analog.Attached)
            {
                foreach (Phidgets.AnalogOutput channel in analog.outputs)
                {
                    channel.Enabled = false;
                }
            }

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            analog.close();

            analog = null;
        }

        //Analog Attach event handler...populate the fields and controls
        void analog_Attach(object sender, AttachEventArgs e)
        {
            Phidgets.Analog attached = (Phidgets.Analog)sender;
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versiontxt.Text = attached.Version.ToString();
            numChannelsTxt.Text = attached.outputs.Count.ToString();

            for (int i = 0; i < 4; i++)
            {
                ChannelBox.Controls["vSlider" + i].Enabled = true;
                ChannelBox.Controls["en" + i].Enabled = true;

                ((TrackBar)ChannelBox.Controls["vSlider" + i]).Minimum = (int)Math.Round(attached.outputs[i].VoltageMin * 100);
                ((TrackBar)ChannelBox.Controls["vSlider" + i]).Maximum = (int)Math.Round(attached.outputs[i].VoltageMax * 100);

                ((TextBox)ChannelBox.Controls["volt" + i]).Text = attached.outputs[i].Voltage.ToString("F2")+"v";
                ((TrackBar)ChannelBox.Controls["vSlider" + i]).Value = (int)Math.Round(attached.outputs[i].Voltage * 100);
                ((CheckBox)ChannelBox.Controls["en" + i]).Checked = attached.outputs[i].Enabled;
            }
        }

        //Analog Detach event handler...Clear all the fields and disable all the controls
        void analog_Detach(object sender, DetachEventArgs e)
        {
            Phidgets.Analog detached = (Phidgets.Analog)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Clear();
            serialTxt.Clear();
            versiontxt.Clear();
            numChannelsTxt.Clear();

            for (int i = 0; i < 4; i++)
            {
                ChannelBox.Controls["en" + i].Enabled = false;
                ChannelBox.Controls["vSlider" + i].Enabled = false;

                ((TextBox)ChannelBox.Controls["volt" + i]).Clear();
                ((TrackBar)ChannelBox.Controls["vSlider" + i]).Value = 0;
                ((CheckBox)ChannelBox.Controls["en" + i]).Checked = false;
            }
        }

        //error handler...display the error description in a messagebox
        void analog_Error(object sender, ErrorEventArgs e)
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
                default:
                    if (!errorBox.Visible)
                        errorBox.Show();
                    break;
            }
            errorBox.addMessage(DateTime.Now.ToLongDateString() + " " + DateTime.Now.ToLongTimeString() + ": " + e.Description);
        }

        private void en_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                analog.outputs[int.Parse(((CheckBox)sender).Tag.ToString())].Enabled = 
                    ((CheckBox)sender).Checked;
            }
            catch { }
        }

        private void vSlider_Scroll(object sender, EventArgs e)
        {
            try
            {
                analog.outputs[int.Parse(((TrackBar)sender).Tag.ToString())].Voltage =
                    ((TrackBar)sender).Value / 100.0;
                ((TextBox)ChannelBox.Controls["volt" + ((TrackBar)sender).Tag.ToString()]).Text = 
                    (((TrackBar)sender).Value / 100.0).ToString("F2") + "v";
            }
            catch { }
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