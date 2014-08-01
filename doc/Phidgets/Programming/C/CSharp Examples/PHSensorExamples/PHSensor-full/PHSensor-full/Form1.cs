/* - PHSensor full -
 * This example displays the connected Phidget PHSensor device's details as well as the current 
 * sensor readings being generated.  This example also demonstrates the ability to modify the sensor's
 * sensitivity by setting it to a new double value in the provided textbox.
 * 
 * Please note that this example was designed to work with only one Phidget PHSensor connected. 
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
using Phidgets; //Needed for the PHSensor class, Phidget base classes, and the PhidgetException class
using Phidgets.Events; //Needed for the Phidget event handler classes

namespace PHSensor_full
{
    public partial class Form1 : Form
    {
        private PHSensor ph_sensor; //Declare a PHSensor object
        private ErrorEventBox errorBox;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
        }

        //Initialize our PHSensor object and hook the event handlers
        private void Form1_Load(object sender, EventArgs e)
        {
            sensitivityTxt.Enabled = false;

            ph_sensor = new PHSensor();

            //Hook the event handlers to the object
            ph_sensor.Attach += new AttachEventHandler(ph_sensor_Attach);
            ph_sensor.Detach += new DetachEventHandler(ph_sensor_Detach);
            ph_sensor.Error += new ErrorEventHandler(ph_sensor_Error);

            ph_sensor.PHChange += new PHChangeEventHandler(ph_sensor_PHChange);

            openCmdLine(ph_sensor);

        }

        //PHSensor Attach event handler...We'll populate the fields in the GUI and enable the modify sensitivity textbox
        void ph_sensor_Attach(object sender, AttachEventArgs e)
        {
            PHSensor attached = (PHSensor)sender;
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versionTxt.Text = attached.Version.ToString();

            try
            {
                phTxt.Text = attached.sensor.PH.ToString();
            }
            catch (PhidgetException)
            {
                phTxt.Text = "Unknown";
            }

            try
            {
                potentialTxt.Text = attached.sensor.Potential.ToString();
            }
            catch (PhidgetException)
            {
                potentialTxt.Text = "Unknown";
            }

            try
            {
                sensitivityTxt.Text = attached.sensor.Sensitivity.ToString();
            }
            catch (PhidgetException)
            {
                sensitivityTxt.Text = "Unknown";
            }
            potentialRange.Text = "(" + ph_sensor.sensor.PotentialMin.ToString() + "mV - " +
                ph_sensor.sensor.PotentialMax.ToString() + "mV)";
            phRange.Text = "(" + ph_sensor.sensor.PHMin.ToString() + " - " +
                ph_sensor.sensor.PHMax.ToString() + ")";
            sensitivityTxt.Enabled = true;
            temperatureTxt.Enabled = true;
        }

        //PHSensor Detach event handler....Clear the fields and disable the modify sensitivity textbox so that
        //new sensity value can't be sent while there is no device attached, otherwise this would generate a PhidgetException
        void ph_sensor_Detach(object sender, DetachEventArgs e)
        {
            PHSensor detached = (PHSensor)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Clear();
            serialTxt.Clear();
            versionTxt.Clear();

            phTxt.Clear();
            potentialTxt.Clear();
            sensitivityTxt.Enabled = false;
            temperatureTxt.Clear();
            temperatureTxt.Enabled = false;
        }

        //Error event handler..We'll simply display the error description in a popup messagebox window
        void ph_sensor_Error(object sender, ErrorEventArgs e)
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

        //PH Change event handler...We'll display the current PH reading from the sensor to the
        //specified textbox as they come in
        void ph_sensor_PHChange(object sender, PHChangeEventArgs e)
        {
            try
            {
                phTxt.Text = e.PH.ToString();
                potentialTxt.Text = ph_sensor.sensor.Potential.ToString();
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }
        }

        //When a new double value is entered into the textbox, we will update the sensitivity value in the sensor
        //If no PH sensor is attached when we try to update the sensitivity value, it will throw a PhidgetException,
        //so we will catch it and deal with it accordingly
        //Also, the sensitivity is a double value, so we should prevent and other values to be sent.  Since I am using the
        //Double.parse method, it will throw a FormatException if anything other than a double value is entered, so
        //we'll catch that and deal with it accordingly
        private void sensitivityTxt_TextChanged(object sender, EventArgs e)
        {
            try
            {
                ph_sensor.sensor.Sensitivity = Double.Parse(sensitivityTxt.Text);
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }
            catch (FormatException)
            {
                MessageBox.Show("Invalid sensitivity format entered - must be a decimal number");
            }
        }

        //When the application is terminating, close the Phidget.
        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            ph_sensor.Attach -= new AttachEventHandler(ph_sensor_Attach);
            ph_sensor.Detach -= new DetachEventHandler(ph_sensor_Detach);
            ph_sensor.Error -= new ErrorEventHandler(ph_sensor_Error);

            ph_sensor.PHChange -= new PHChangeEventHandler(ph_sensor_PHChange);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            ph_sensor.close();

            ph_sensor = null;
        }

        private void temperatureTxt_TextChanged(object sender, EventArgs e)
        {
            Double temp;
            if(Double.TryParse(temperatureTxt.Text, out temp))
            {
                ph_sensor.sensor.Temperature = temp;
                phRange.Text = "(" + ph_sensor.sensor.PHMin.ToString() + " - " +
                    ph_sensor.sensor.PHMax.ToString() + ")";
            }
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