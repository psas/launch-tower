/* - IR full -
 * This example displays a gui that shows the attached Phidgets IR reader device's details and will 
 * display and tag data that is scanned by the antenna.  it also provides checkboxes to manipulate the 
 * different attirbutes of the IR reader as well as the digital outputs.
 *
 * Please note that this example was designed to work with only one Phidget IR connected. 
 * For an example showing how to use two Phidgets of the same time concurrently, please see the
 * Servo-multi example in the Servo Examples.
 *
 * Copyright 2007 Phidgets Inc.  
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
using Phidgets; //Needed for the IR class and the PhidgetException class
using Phidgets.Events; //Needed for the phidget event handling classes
using System.Threading;

namespace IR_full
{
    public partial class Form1 : Form
    {
        private IR ir; //Declare an IR object
        private ErrorEventBox errorBox;
        int repeatCount = 0;

        bool buttonPressed = false;

        IRCode lastLearnedCode = null;
        IRCodeInfo lastLearnedCodeInfo = null;

        int rawDataCol = 0;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
            //Phidget.enableLogging(Phidget.LogLevel.PHIDGET_LOG_INFO, null);
        }

        //initialize our Phidgets IR reader and hook the event handlers
        private void Form1_Load(object sender, EventArgs e)
        {
            ir = new IR();

            ir.Attach += new AttachEventHandler(ir_Attach);
            ir.Detach += new DetachEventHandler(ir_Detach);
            ir.Error += new ErrorEventHandler(ir_Error);

            ir.Code += new IRCodeEventHandler(ir_Code);
            ir.Learn += new IRLearnEventHandler(ir_Learn);
            //For now we are reading RAW data using polling
            ir.RawData += new IRRawDataEventHandler(ir_RawData);

            openCmdLine(ir);
        }

        delegate void bufferDelegate(int[] data, int length);

        public void printRawData(int[] data, int length)
        {
            if (rawDataBox.InvokeRequired)
            {
                try { rawDataBox.Invoke(new bufferDelegate(printRawData), new Object[] { data, length }); }
                catch { }
            }
            else
            {
                if (rawDataCheckBox.Checked)
                {
                    for (int i = 0; i < length; i++)
                    {

                        if (data[i] == IR.RAWDATA_LONGSPACE)
                        {
                            rawDataBox.AppendText(Environment.NewLine + Environment.NewLine);
                            rawDataBox.AppendText("LONG");
                            rawDataBox.AppendText(Environment.NewLine);
                            rawDataBox.ScrollToCaret();
                            rawDataCol = -1;
                        }
                        else if (data[i] > 100000)
                        {
                            rawDataBox.AppendText(Environment.NewLine + Environment.NewLine);
                            rawDataBox.AppendText(data[i].ToString().PadLeft(7) + ",");
                            rawDataBox.AppendText(Environment.NewLine);
                            rawDataBox.ScrollToCaret();
                            rawDataCol = -1;
                        }
                        else
                            rawDataBox.AppendText(data[i].ToString().PadLeft(7) + ",");

                        rawDataCol++;
                        if (rawDataCol >= 10)
                        {
                            rawDataBox.AppendText(Environment.NewLine);
                            rawDataBox.ScrollToCaret();
                            rawDataCol = 0;
                        }
                    }
                }
            }
        }

        private void readRawDataThreadFunction()
        {
            while (ir.Attached)
            {
                try
                {
                    int[] buffer = new int[1024];
                    int size;
                    //don't make busy loops!
                    Thread.Sleep(100);
                    size = ir.readRaw(buffer);
                    if (size > 0)
                    {
                        if(pollRawDataRadio.Checked)
                            printRawData(buffer, size);
                    }
                }
                catch { }
            }
        }

        void ir_RawData(object sender, IRRawDataEventArgs e)
        {
            if (eventRawDataRadio.Checked)
                printRawData(e.RawData, e.RawData.Length);
        }

        void ir_Learn(object sender, IRLearnEventArgs e)
        {
            codeLearnTextBox.Text = "0x" + e.LearnedCode.Code.ToString();

            bitLengthLearnTextBox.Text = e.LearnedCode.CodeInfo.BitCount.ToString();
            lengthLearnTextBox.Text = e.LearnedCode.CodeInfo.Length.ToString() + " Length";
            encodingTextBox.Text = e.LearnedCode.CodeInfo.Encoding.ToString();
            gapTextBox.Text = e.LearnedCode.CodeInfo.Gap.ToString();

            if (e.LearnedCode.CodeInfo.Trail != 0)
                trailTextBox.Text = e.LearnedCode.CodeInfo.Trail.ToString();
            else
                trailTextBox.Text = "None";

            oneTextBox.Text = e.LearnedCode.CodeInfo.One[0].ToString() + ", " + e.LearnedCode.CodeInfo.One[1].ToString();
            zeroTextBox.Text = e.LearnedCode.CodeInfo.Zero[0].ToString() + ", " + e.LearnedCode.CodeInfo.Zero[1].ToString();

            if (e.LearnedCode.CodeInfo.Header != null)
            {
                StringBuilder sb = new StringBuilder(e.LearnedCode.CodeInfo.Header.Length * 2);
                foreach (int i in e.LearnedCode.CodeInfo.Header)
                {
                    sb.Append(i.ToString());
                    sb.Append(", ");
                }
                headerTextBox.Text = sb.ToString();
            }
            else
                headerTextBox.Text = "No Header";

            if (e.LearnedCode.CodeInfo.ToggleMask != null)
            {
                toggleTextBox.Text = "0x" + e.LearnedCode.CodeInfo.ToggleMask.ToString();
            }
            else
                toggleTextBox.Text = "No Toggle Mask";

            if (e.LearnedCode.CodeInfo.Repeat != null)
            {
                StringBuilder sb = new StringBuilder(e.LearnedCode.CodeInfo.Repeat.Length * 2);
                foreach (int i in e.LearnedCode.CodeInfo.Repeat)
                {
                    sb.Append(i.ToString());
                    sb.Append(", ");
                }
                repeatTextBox.Text = sb.ToString();
            }
            else
                repeatTextBox.Text = "No Repeat Code";

            lastLearnedCode = e.LearnedCode.Code;
            lastLearnedCodeInfo = e.LearnedCode.CodeInfo;
            retransmitButton.Enabled = true;
        }

        void ir_Code(object sender, IRCodeEventArgs e)
        {
            codeTxt.Text = "0x"+e.Code;
            bitLengthTextBox.Text = e.Code.BitCount.ToString();

            repeatCount++;
            if (!e.Repeat)
                repeatCount = 0;

            repeatCountTextBox.Text = repeatCount.ToString();
        }

        //attach event handler..populate the details fields as well as display the attached status.  enable the checkboxes to change
        //the values of the attributes of the IR reader such as enable or disable the antenna and onboard led.
        void ir_Attach(object sender, AttachEventArgs e)
        {
            IR attached = (IR)sender;
            //attachedTxt.Text = e.Device.Attached.ToString();
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versionTxt.Text = attached.Version.ToString();

            //clear fields
            codeTxt.Clear();
            repeatCountTextBox.Clear();
            bitLengthTextBox.Clear();

            Thread readRawDataThread = new Thread(new ThreadStart(readRawDataThreadFunction));
            readRawDataThread.Start();
        }

        //detach event handler...clear all the fields, display the attached status, and disable the checkboxes.
        void ir_Detach(object sender, DetachEventArgs e)
        {
            IR detached = (IR)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Text = "";
            serialTxt.Text = "";
            versionTxt.Text = "";

            retransmitButton.Enabled = false;
        }

        void ir_Error(object sender, ErrorEventArgs e)
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

        //When the application is being terminated, close the Phidget.
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            ir.Attach -= new AttachEventHandler(ir_Attach);
            ir.Detach -= new DetachEventHandler(ir_Detach);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            ir.close();
        }

        private void retransmitThread()
        {
            Thread.Sleep(100);
            try
            {
                ir.transmit(lastLearnedCode, lastLearnedCodeInfo);
                while (buttonPressed)
                {
                    ir.transmitRepeat();
                }
            }
            catch (PhidgetException)
            { }
        }

        private void retransmitButton_MouseDown(object sender, MouseEventArgs e)
        {
            buttonPressed = true;
            Thread buttonThread = new Thread(new ThreadStart(retransmitThread));
            buttonThread.Start();
        }

        private void retransmitButton_MouseUp(object sender, MouseEventArgs e)
        {
            buttonPressed = false;
        }

        private void rawDataCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (rawDataCheckBox.Checked)
            {
                rawDataBox.Visible = true;
                clearButton.Visible = true;
                eventRawDataRadio.Visible = true;
                pollRawDataRadio.Visible = true;
                this.Size = new Size(900, this.Size.Height);
            }
            else
            {
                rawDataBox.Visible = false;
                clearButton.Visible = false;
                eventRawDataRadio.Visible = false;
                pollRawDataRadio.Visible = false;
                this.Size = new Size(300, this.Size.Height);
            }
        }

        private void clearButton_Click(object sender, EventArgs e)
        {
            rawDataBox.Clear();
        }

        //example of sending RAW Data - this was captured from an Apple remote Volume UP command
        private void button1_Click(object sender, EventArgs e)
        {
            int[] data = {
               9040,   4590,    540,    630,    550,   1740,    550,   1750,    550,   1740,
                550,    620,    550,   1750,    550,   1740,    550,   1750,    550,   1740,
                550,   1740,    560,   1740,    540,    630,    550,    620,    550,    620,
                540,    630,    550,   1750,    550,   1740,    560,   1740,    550,    620,
                550,   1740,    550,    620,    550,    620,    560,    610,    550,    620,
                550,   1750,    550,   1740,    550,    620,    550,   1740,    550,   1750,
                550,    620,    550,    620,    550,    620,    540};

            ir.transmitRaw(data, 37850);
        }

        private void eventRawDataRadio_CheckedChanged(object sender, EventArgs e)
        {
            if (eventRawDataRadio.Checked)
                pollRawDataRadio.Checked = false;
        }

        private void pollRawDataRadio_CheckedChanged(object sender, EventArgs e)
        {
            if (pollRawDataRadio.Checked)
                eventRawDataRadio.Checked = false;
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