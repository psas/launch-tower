/* - FrequencyCounter full -
 * In this example we display the frequency counter details.
 *
 * Please note that this example was designed to work with only one Phidget Frequency Counter connected. 
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

namespace FrequencyCounter_full
{
    public partial class Form1 : Form
    {

        private FrequencyCounter freqCounter;
        private ErrorEventBox errorBox;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            freqCounter = new FrequencyCounter();

            freqCounter.Attach += new AttachEventHandler(freqCounter_Attach);
            freqCounter.Detach += new DetachEventHandler(freqCounter_Detach);
            freqCounter.Error += new ErrorEventHandler(freqCounter_Error);

            freqCounter.Count += new FrequencyCounterCountEventHandler(freqCounter_Count);

            openCmdLine(freqCounter);
        }

        //When the form is being close, make sure to stop all the motors and close the Phidget.
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            freqCounter.Attach -= new AttachEventHandler(freqCounter_Attach);
            freqCounter.Detach -= new DetachEventHandler(freqCounter_Detach);
            freqCounter.Error -= new ErrorEventHandler(freqCounter_Error);

            freqCounter.Count -= new FrequencyCounterCountEventHandler(freqCounter_Count);

            Application.DoEvents();

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            freqCounter.close();
            freqCounter = null;
        }

        //MotorControl Attach event handler...populate the fields and controls
        void freqCounter_Attach(object sender, AttachEventArgs e)
        {
            FrequencyCounter attached = (FrequencyCounter)sender;
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versiontxt.Text = attached.Version.ToString();

            channelCmb.Enabled = true;
            enCB.Enabled = true;
            filterCmb.Enabled = true;
            timeOutTxt.Enabled = true;
            freqTxt.Enabled = true;
            totalCntTxt.Enabled = true;
            totalTimeTxt.Enabled = true;

            foreach (String filterType in System.Enum.GetNames(typeof(FrequencyCounterInput.FilterType)))
            {
                if (filterType.Equals(FrequencyCounterInput.FilterType.INVALID.ToString()))
                    break;
                filterCmb.Items.Add(filterType);
            }

            for (int i = 0; i < attached.inputs.Count; i++)
                channelCmb.Items.Add(i.ToString());

            channelCmb.SelectedIndex = 0;
        }

        //MotorControl Detach event handler...Clear all the fields and disable all the controls
        void freqCounter_Detach(object sender, DetachEventArgs e)
        {
            FrequencyCounter detached = (FrequencyCounter)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Clear();
            serialTxt.Clear();
            versiontxt.Clear();

            channelCmb.Enabled = false;
            enCB.Enabled = false;
            filterCmb.Enabled = false;
            timeOutTxt.Enabled = false;
            freqTxt.Enabled = false;
            totalCntTxt.Enabled = false;
            totalTimeTxt.Enabled = false;

            channelCmb.Items.Clear();

            freqTxt.Clear();
            totalCntTxt.Clear();
            totalTimeTxt.Clear();
            timeOutTxt.Clear();

            filterCmb.Items.Clear();
        }

        void freqCounter_Error(object sender, ErrorEventArgs e)
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

        void freqCounter_Count(object sender, FrequencyCounterCountEventArgs e)
        {
            if (e.Index == channelCmb.SelectedIndex)
            {
                try
                {
                    freqTxt.Text = freqCounter.inputs[e.Index].Frequency.ToString("f4");
                }
                catch { }

                timeTxt.Text = (e.Time / 1000.0).ToString("f2");
                countTxt.Text = e.Counts.ToString();

                totalTimeTxt.Text = (freqCounter.inputs[channelCmb.SelectedIndex].TotalTime / 1000.0).ToString("f2");
                totalCntTxt.Text = freqCounter.inputs[channelCmb.SelectedIndex].TotalCount.ToString();
            }
        }

        private void channelCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            filterCmb.SelectedItem = freqCounter.inputs[channelCmb.SelectedIndex].Filter.ToString();
            enCB.Checked = freqCounter.inputs[channelCmb.SelectedIndex].Enabled;
            timeOutTxt.Text = (freqCounter.inputs[channelCmb.SelectedIndex].Timeout / 1000.0).ToString("f2");
            totalCntTxt.Text = freqCounter.inputs[channelCmb.SelectedIndex].TotalCount.ToString();
            totalTimeTxt.Text = (freqCounter.inputs[channelCmb.SelectedIndex].TotalTime / 1000.0).ToString("f2");
            countTxt.Clear();
            timeTxt.Clear();
            try
            {
                freqTxt.Text = freqCounter.inputs[channelCmb.SelectedIndex].Frequency.ToString("f4");
            }
            catch { freqTxt.Text = "Unknown"; }
        }

        private void filterCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            freqCounter.inputs[channelCmb.SelectedIndex].Filter =
                (FrequencyCounterInput.FilterType)Enum.Parse(typeof(FrequencyCounterInput.FilterType), filterCmb.SelectedItem.ToString());
        }

        private void timeOutTxt_TextChanged(object sender, EventArgs e)
        {
            try
            {
                freqCounter.inputs[channelCmb.SelectedIndex].Timeout = Convert.ToInt32(timeOutTxt.Text) * 1000;
            }
            catch { }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            freqCounter.inputs[channelCmb.SelectedIndex].Enabled = enCB.Checked;
        }
        private void resetButton_Click(object sender, EventArgs e)
        {
            freqCounter.inputs[channelCmb.SelectedIndex].reset();
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