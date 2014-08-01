/* This example simply displays the Phidget AdvancedServo information when it is attached and displays 
 * the servo positions, velocity, and current with a slider for position, velocity, and acceleration manipulation.
 *
 * Please note that this example was designed to work with only one Phidget AdvanceServo connected. 
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
using Phidgets;  //for the servo class and the exceptions class
using Phidgets.Events; //for the event handling classes

namespace AdvancedServo_full
{
    public partial class Form1 : Form
    {
        private AdvancedServo advServo; //Declare an advancedservo object
        private ErrorEventBox errorBox;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
        }

        //Initialization code
        private void Form1_Load(object sender, EventArgs e)
        {
            advServo = new AdvancedServo();

            advServo.Attach += new AttachEventHandler(advServo_Attach);
            advServo.Detach += new DetachEventHandler(advServo_Detach);
            advServo.Error += new ErrorEventHandler(advServo_Error);

            advServo.CurrentChange += new CurrentChangeEventHandler(advServo_CurrentChange);
            advServo.PositionChange += new PositionChangeEventHandler(advServo_PositionChange);
            advServo.VelocityChange += new VelocityChangeEventHandler(advServo_VelocityChange);

            //This assumes that if there is a command line argument, it is a serial number
            //and we try to open that specific device. Otherwise, open any device.
            openCmdLine(advServo);
        }

        //PhidgetServo attach event handling code
        void advServo_Attach(object sender, AttachEventArgs e)
        {
            AdvancedServo attached = (AdvancedServo)sender;

            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versiontxt.Text = attached.Version.ToString();
            numServosTxt.Text = attached.servos.Count.ToString();

            velocityTrk.Enabled = true;
            positionTrk.Enabled = true;
            accelTrk.Enabled = true;
            engagedCheckBox.Enabled = true;
            speedRampingCheckBox.Enabled = true;
            maxPosnTrackBar.Enabled = true;
            minPosnTrackBar.Enabled = true;

            //Set the default servo type to the one Phidgets sells
            foreach (AdvancedServoServo motor in attached.servos)
                motor.Type = ServoServo.ServoType.HITEC_HS322HD;

            foreach(String servoType in System.Enum.GetNames(typeof(ServoServo.ServoType)))
            {
                //stop here
                if (servoType.Equals(ServoServo.ServoType.USER_DEFINED.ToString()))
                    break;
                servoTypeCmb.Items.Add(servoType);
            }

            servoTypeCmb.Enabled = true;

            for (int i = 0; i < attached.servos.Count; i++)
            {
                servoCmb.Items.Add(i);
            }
            //this will initialize all values
            servoCmb.SelectedIndex = 0;
            servoCmb.Enabled = true;
        }

        //PhidgetServo detach event handling code
        void advServo_Detach(object sender, DetachEventArgs e)
        {
            AdvancedServo detached = (AdvancedServo)sender;

            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Clear();
            serialTxt.Clear();
            versiontxt.Clear();
            numServosTxt.Clear();

            velocityTrk.Enabled = false;
            velocityTrk.Value = velocityTrk.Minimum;
            positionTrk.Enabled = false;
            positionTrk.Value = positionTrk.Minimum;
            accelTrk.Enabled = false;
            accelTrk.Value = accelTrk.Minimum;
            engagedCheckBox.Enabled = false;
            speedRampingCheckBox.Enabled = false;
            maxPosnTrackBar.Enabled = false;
            minPosnTrackBar.Enabled = false;
            servoTypeCmb.Enabled = false;
            servoCmb.Items.Clear();

            target_positionTxt.Clear();
            target_velocityTxt.Clear();

            minPosnTextBox.Clear();
            maxPosnTextBox.Clear();

            accelTxt.Clear();

            servoCmb.Enabled = false;
            servoTypeCmb.Items.Clear();
        }

        void advServo_Error(object sender, ErrorEventArgs e)
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

        //Servo current change event handling code
        void advServo_CurrentChange(object sender, CurrentChangeEventArgs e)
        {
            if (e.Index == (int)servoCmb.SelectedItem)
            {
                currentTxt.Text = e.Current.ToString();
            }
        }

        //Servo position change event handling code
        void advServo_PositionChange(object sender, PositionChangeEventArgs e)
        {
            if (e.Index == (int)servoCmb.SelectedItem)
            {
                actual_positionTxt.Text = e.Position.ToString();
                stoppedCheckBox.Checked = advServo.servos[e.Index].Stopped;
            }
        }

        //Servo velocity change event handling code
        void advServo_VelocityChange(object sender, VelocityChangeEventArgs e)
        {
            if (e.Index == (int)servoCmb.SelectedItem)
            {
                actual_velocityTxt.Text = e.Velocity.ToString();
            }
        }

        private void servoTypeCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int index = (int)servoCmb.SelectedItem;
                if(advServo.servos[index].Type != (ServoServo.ServoType)Enum.Parse(typeof(ServoServo.ServoType), servoTypeCmb.SelectedItem.ToString()))
                {
                    advServo.servos[index].Type = (ServoServo.ServoType)Enum.Parse(typeof(ServoServo.ServoType), servoTypeCmb.SelectedItem.ToString());
                    initAllValues();
                }
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }
        }

        //this code will switch between the selected servos and display their position, velocity, acceleration, and current data
        private void servoCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            initAllValues();
        }

        private void initAllValues()
        {
            int index = (int)servoCmb.SelectedItem;

            //Use a try-catch block around code where you are getting and displaying the servo data
            //if the current position state has yet to be set, it will throw a PhidgetException for value not set
            //you can use this to test this and to display that the value is unknown
            try
            {
                engagedCheckBox.Checked = advServo.servos[index].Engaged;
                speedRampingCheckBox.Checked = advServo.servos[index].SpeedRamping;

                maxPosnTrackBar.SetRange((int)advServo.servos[index].PositionMin, (int)advServo.servos[index].PositionMax);
                maxPosnTrackBar.Value = (int)advServo.servos[index].PositionMax;
                maxPosnTextBox.Text = ((int)advServo.servos[index].PositionMax).ToString();

                minPosnTrackBar.SetRange((int)advServo.servos[index].PositionMin, (int)advServo.servos[index].PositionMax);
                minPosnTrackBar.Value = (int)advServo.servos[index].PositionMin;
                minPosnTextBox.Text = ((int)advServo.servos[index].PositionMin).ToString();

                positionTrk.SetRange((int)(advServo.servos[index].PositionMin * 100), (int)(advServo.servos[index].PositionMax * 100));

                if (advServo.servos[index].Engaged)
                {
                    try
                    {
                        positionTrk.Value = (int)(advServo.servos[index].Position * 100);
                    }
                    catch { }
                    actual_positionTxt.Text = advServo.servos[index].Position.ToString();
                    target_positionTxt.Text = advServo.servos[index].Position.ToString();
                }
                else
                {
                    positionTrk.Value = (int)(minPosnTrackBar.Value * 100);
                    actual_velocityTxt.Text = advServo.servos[(int)servoCmb.SelectedItem].Velocity.ToString();
                    actual_positionTxt.Text = "Unknown";
                    target_positionTxt.Text = positionTrk.Value.ToString();
                }

                currentTxt.Text = advServo.servos[index].Current.ToString();
                actual_velocityTxt.Text = advServo.servos[index].Velocity.ToString();

                velocityTrk.SetRange((int)advServo.servos[index].VelocityMin, (int)Math.Round(advServo.servos[index].VelocityMax));
                velocityTrk.Value = (int)advServo.servos[index].VelocityLimit;
                target_velocityTxt.Text = advServo.servos[index].VelocityLimit.ToString();

                accelTrk.SetRange((int)advServo.servos[index].AccelerationMin, (int)advServo.servos[index].AccelerationMax);
                try
                {
                    accelTrk.Value = (int)advServo.servos[index].Acceleration;
                    accelTxt.Text = advServo.servos[index].Acceleration.ToString();
                }
                catch
                {
                    accelTxt.Text = "Unknown";
                }
                maxPosnTextBox.Text = ((int)advServo.servos[index].PositionMax).ToString();
                minPosnTextBox.Text = ((int)advServo.servos[index].PositionMin).ToString();

                stoppedCheckBox.Checked = advServo.servos[index].Stopped;

                servoTypeCmb.SelectedItem = advServo.servos[index].Type.ToString();
            }
            catch (PhidgetException)
            {
                actual_positionTxt.Text = "Unknown";
                actual_velocityTxt.Text = "Unknown";
                currentTxt.Text = "Unknown";

                positionTrk.Maximum = (int)(advServo.servos[0].PositionMax * 100);
                positionTrk.Minimum = (int)(advServo.servos[0].PositionMin * 100);
                positionTrk.Value = (int)(advServo.servos[0].PositionMin * 100);
                velocityTrk.Value = (int)advServo.servos[0].VelocityMin;
                accelTrk.Value = (int)advServo.servos[0].AccelerationMin;

                target_positionTxt.Text = positionTrk.Value.ToString();
                target_velocityTxt.Text = velocityTrk.Value.ToString();
                accelTxt.Text = accelTrk.Value.ToString();
            }
        }

        //Modify the servo acceleration proprty based on the value returned by the slider
        private void accelTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                Double accel = accelTrk.Value;
                if (accel < advServo.servos[(int)servoCmb.SelectedItem].AccelerationMin) 
                    accel = advServo.servos[(int)servoCmb.SelectedItem].AccelerationMin;
                if (accel > advServo.servos[(int)servoCmb.SelectedItem].AccelerationMax) 
                    accel = advServo.servos[(int)servoCmb.SelectedItem].AccelerationMax;
                advServo.servos[(int)servoCmb.SelectedItem].Acceleration = accel;
                accelTxt.Text = accelTrk.Value.ToString();
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }
        }

        //Modify the servo position based on the value returned by the slider
        private void positionTrk_Scroll(object sender, EventArgs e)
        {
            //A PhidgetException will be thrown if you try to set the position to any value NOT between -23 and 232
            try
            {
                advServo.servos[(int)servoCmb.SelectedItem].Position = positionTrk.Value / 100.0;
                target_positionTxt.Text = (positionTrk.Value / 100.0).ToString();
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }
        }

        //Modify the servo velocity property based on the value returned by the slider
        private void velocityTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                advServo.servos[(int)servoCmb.SelectedItem].VelocityLimit = velocityTrk.Value;
                target_velocityTxt.Text = velocityTrk.Value.ToString();
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }
        }

        //When the application is terminating, close the Phidget.
        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            advServo.Attach -= new AttachEventHandler(advServo_Attach);
            advServo.Detach -= new DetachEventHandler(advServo_Detach);
            advServo.Error -= new ErrorEventHandler(advServo_Error);

            advServo.CurrentChange -= new CurrentChangeEventHandler(advServo_CurrentChange);
            advServo.PositionChange -= new PositionChangeEventHandler(advServo_PositionChange);
            advServo.VelocityChange -= new VelocityChangeEventHandler(advServo_VelocityChange);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            advServo.close();
            advServo = null;
        }

        private void engagedCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            advServo.servos[(int)servoCmb.SelectedItem].Engaged = engagedCheckBox.Checked;
        }

        private void speedRampingCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            advServo.servos[(int)servoCmb.SelectedItem].SpeedRamping = speedRampingCheckBox.Checked;
        }

        private void maxPosnTrackBar_Scroll(object sender, EventArgs e)
        {
            advServo.servos[(int)servoCmb.SelectedItem].PositionMax = maxPosnTrackBar.Value;
            maxPosnTextBox.Text = maxPosnTrackBar.Value.ToString();
            positionTrk.Maximum = (int)(maxPosnTrackBar.Value * 100);
            minPosnTrackBar.Maximum = maxPosnTrackBar.Value;

        }

        private void minPosnTrackBar_Scroll(object sender, EventArgs e)
        {
            advServo.servos[(int)servoCmb.SelectedItem].PositionMin = minPosnTrackBar.Value;
            minPosnTextBox.Text = minPosnTrackBar.Value.ToString();
            positionTrk.Minimum = (int)(minPosnTrackBar.Value * 100);
            maxPosnTrackBar.Minimum = minPosnTrackBar.Value;
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