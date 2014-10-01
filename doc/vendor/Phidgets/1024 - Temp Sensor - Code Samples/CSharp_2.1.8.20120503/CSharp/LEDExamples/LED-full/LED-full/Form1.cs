/* - LED full -
 * This example demonstrates the key functionalities of a Phidget LED.  It will allow you to choose an LED 
 * index in order to control the LED plugged into that index port.  It will also display the phidget 
 * information for the connected LED.
 *
 * Please note that this example was designed to work with only one Phidget LED connected. 
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
using Phidgets; //Needed for the LED class, phidget base classes, and the PhidgetException class
using Phidgets.Events; // Needed for the event handling classes

namespace LED_full
{
    public partial class Form1 : Form
    {
        //Our LED object that will be used to interface with a connected Phidget LED board
        private LED led;
        private ErrorEventBox errorBox;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
        }

        //Create and initialize an LED object to control an attached LED.  Hook the event handlers to the object and open.
        private void Form1_Load(object sender, EventArgs e)
        {
            ledIndexCmb.Enabled = false;
            ledTrk.Enabled = false;
            ledTrk.SetRange(0, 100);
            
            led = new LED();

            led.Attach += new AttachEventHandler(led_Attach);
            led.Detach += new DetachEventHandler(led_Detach);
            led.Error += new ErrorEventHandler(led_Error);

            openCmdLine(led);
        }

        //LED Attach event handler...populate the information fields and initialize the index selector combo boxes 
        //according to the number of available LEDs on the connected Phidget LED board.  Enable all the editable controls.
        void led_Attach(object sender, AttachEventArgs e)
        {
            LED attached = (LED)sender;
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versionTxt.Text = attached.Version.ToString();
            ledNumTxt.Text = attached.leds.Count.ToString();

            int i;
            for (i = 0; i < attached.leds.Count; i++)
            {
                ledIndexCmb.Items.Add(i);
            }

            ledIndexCmb.Enabled = true;
            ledIndexCmb.SelectedIndex = 0;
            ledTrk.Enabled = true;

            try
            {
                LED.LEDVoltage voltage = led.Voltage;
                switch (voltage)
                {
                    case LED.LEDVoltage.VOLTAGE_1_7V:
                        voltageCmb.SelectedItem = "1.7V";
                        break;
                    case LED.LEDVoltage.VOLTAGE_2_75V:
                        voltageCmb.SelectedItem = "2.75V";
                        break;
                    case LED.LEDVoltage.VOLTAGE_3_9V:
                        voltageCmb.SelectedItem = "3.9V";
                        break;
                    case LED.LEDVoltage.VOLTAGE_5_0V:
                        voltageCmb.SelectedItem = "5.0V";
                        break;
                }
                voltageCmb.Enabled = true;
                voltageCmb.Visible = true;
                voltageLabel.Visible = true;
            }
            catch (PhidgetException)
            {
                //Not supported
                voltageCmb.Enabled = false;
                voltageCmb.Visible = false;
                voltageLabel.Visible = false;
            }

            try
            {
                LED.LEDCurrentLimit current = led.CurrentLimit;
                switch (current)
                {
                    case LED.LEDCurrentLimit.CURRENT_LIMIT_20mA:
                        currentLimitCmb.SelectedItem = "20mA";
                        break;
                    case LED.LEDCurrentLimit.CURRENT_LIMIT_40mA:
                        currentLimitCmb.SelectedItem = "40mA";
                        break;
                    case LED.LEDCurrentLimit.CURRENT_LIMIT_60mA:
                        currentLimitCmb.SelectedItem = "60mA";
                        break;
                    case LED.LEDCurrentLimit.CURRENT_LIMIT_80mA:
                        currentLimitCmb.SelectedItem = "80mA";
                        break;
                }
                currentLimitCmb.Enabled = true;
                currentLimitCmb.Visible = true;
                currentLimitlabel.Visible = true;
            }
            catch (PhidgetException)
            {
                //Not supported
                currentLimitCmb.Enabled = false;
                currentLimitCmb.Visible = false;
                currentLimitlabel.Visible = false;
            }

        }

        //LED Detach event handler...we'll clear all our fields and disable all the editable fields to prevent errors
        void led_Detach(object sender, DetachEventArgs e)
        {
            LED detached = (LED)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Text = "";
            serialTxt.Text = "";
            versionTxt.Text = "";
            ledNumTxt.Text = "";

            ledIndexCmb.Enabled = false;
            ledIndexCmb.Items.Clear();
            ledTrk.Enabled = false;
            ledTrk.Value = 0;
            voltageCmb.Enabled = false;
            currentLimitCmb.Enabled = false;
        }

        //Error event handler...We will just display the error message in a popup messagebox
        void led_Error(object sender, ErrorEventArgs e)
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

        //When we select an LED index, in this case for the left bank of leds, set the trackbar to the selected 
        //LED's current brightness setting.  
        //A PhidgetException could be thrown when accessing the led collection from the phidget class if no LED 
        //phidget is connected, so we'llcatch it and deal with it accordingly
        private void ledIndexCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ledTrk.Value = led.leds[(int)ledIndexCmb.SelectedItem];
            }
            catch (PhidgetException)
            {
                //value is not yet known - that's ok
                ledTrk.Value = 0;
            }
        }

        //When we scroll the trackbar for a selected LED index, we want to set the LED to that value in the created object.
        //A PhidgetException may be thrown if there is no Phidget LED connected, so we'll catch it and deal with it
        //accordingly
        private void ledTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                led.leds[(int)ledIndexCmb.SelectedItem] = ledTrk.Value;
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show("Problem setting LED: "+ex.Message);
            }
        }

        private void voltageCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                switch (voltageCmb.SelectedItem.ToString())
                {
                    case "1.7V":
                        led.Voltage = LED.LEDVoltage.VOLTAGE_1_7V;
                        break;
                    case "2.75V":
                        led.Voltage = LED.LEDVoltage.VOLTAGE_2_75V;
                        break;
                    case "3.9V":
                        led.Voltage = LED.LEDVoltage.VOLTAGE_3_9V;
                        break;
                    case "5.0V":
                        led.Voltage = LED.LEDVoltage.VOLTAGE_5_0V;
                        break;
                }
            }
            catch (PhidgetException)
            {
                //Unsupported
                voltageCmb.Enabled = false;
            }
        }

        private void currentLimitCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                switch (currentLimitCmb.SelectedItem.ToString())
                {
                    case "20mA":
                        led.CurrentLimit = LED.LEDCurrentLimit.CURRENT_LIMIT_20mA;
                        break;
                    case "40mA":
                        led.CurrentLimit = LED.LEDCurrentLimit.CURRENT_LIMIT_40mA;
                        break;
                    case "60mA":
                        led.CurrentLimit = LED.LEDCurrentLimit.CURRENT_LIMIT_60mA;
                        break;
                    case "80mA":
                        led.CurrentLimit = LED.LEDCurrentLimit.CURRENT_LIMIT_80mA;
                        break;
                }
            }
            catch (PhidgetException)
            {
                //Unsupported
                currentLimitCmb.Enabled = false;
            }
        }

        //When the application is terminating, close the phidget
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            led.Attach -= new AttachEventHandler(led_Attach);
            led.Detach -= new DetachEventHandler(led_Detach);
            led.Error -= new ErrorEventHandler(led_Error);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            led.close();
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