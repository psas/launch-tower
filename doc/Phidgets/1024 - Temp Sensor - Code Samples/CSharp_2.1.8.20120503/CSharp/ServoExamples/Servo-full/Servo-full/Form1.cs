/* - Servo full -
 * This example simply displays the PhidgetServo information when it is attached and displays the servo 
 * positions with a slider for position manipulation
 *
 * Please note that this example was designed to work with only one Phidget Servo connected. 
 * For an example using multiple Phidget Servos, please see a "multiple" example in the Servos Examples folder.
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

namespace Servo_full
{
    public partial class Form1 : Form
    {
        private Phidgets.Servo servo; //Declare a servo object
        private ErrorEventBox errorBox;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
        }

        //Initialization code
        private void Form1_Load(object sender, EventArgs e)
        {
            servo = new Servo();

            servo.Attach += new AttachEventHandler(servo_Attach);
            servo.Detach += new DetachEventHandler(servo_Detach);
            servo.Error += new ErrorEventHandler(servo_Error);

            servo.PositionChange += new PositionChangeEventHandler(servo_PositionChange);

            servoNumCombo.Enabled = false;
            positionTrk.SetRange(-22, 232); //the maximum bound of the phidget servo is 232, it's minimum bound is -23

            openCmdLine(servo);
        }

        //PhidgetServo attach event handling code
        void servo_Attach(object sender, AttachEventArgs e)
        {
            Servo attached = (Servo)sender;
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versionTxt.Text = attached.Version.ToString();
            servosTxt.Text = attached.servos.Count.ToString();
            positionTrk.Enabled = true;
            engagedCheckBox.Enabled = true;

            //Set the default servo type to the one Phidgets sells
            foreach (ServoServo motor in attached.servos)
                motor.Type = ServoServo.ServoType.HITEC_HS322HD;

            //Setting custom servo parameters example - 600us-2000us == 120 degrees
            //servo.servos[0].setServoParameters(600, 2000, 120);

            foreach (String servoType in System.Enum.GetNames(typeof(ServoServo.ServoType)))
            {
                //stop here
                if (servoType.Equals(ServoServo.ServoType.USER_DEFINED.ToString()))
                    break;
                servoTypeCmb.Items.Add(servoType);
            }

            servoTypeCmb.Enabled = true;

            for (int i = 0; i < attached.servos.Count; i++)
            {
                servoNumCombo.Items.Add(i);
            }

            servoNumCombo.SelectedIndex = 0;
            servoNumCombo.Enabled = true;
        }

        //PhidgetServo detach event handling code
        void servo_Detach(object sender, DetachEventArgs e)
        {
            Servo detached = (Servo)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Text = "";
            serialTxt.Text = "";
            versionTxt.Text = "";
            servosTxt.Text = "";
            servoNumCombo.Enabled = false;
            servoNumCombo.Items.Clear();
            positionTxt.Text = "";
            positionTrk.Value = 0;
            engagedCheckBox.Checked = false;
            servoTypeCmb.Enabled = false;
            positionTrk.Enabled = false;
            servoTypeCmb.Items.Clear();
        }

        void servo_Error(object sender, ErrorEventArgs e)
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

        //Servo position change event handling code
        void servo_PositionChange(object sender, PositionChangeEventArgs e)
        {
            Servo attached = (Servo)sender;
            if (servoNumCombo.SelectedIndex == e.Index)
            {
                try
                {
                    positionTxt.Text = attached.servos[e.Index].Position.ToString();
                    engagedCheckBox.Checked = attached.servos[e.Index].Engaged;
                }
                catch (PhidgetException)
                {
                    positionTxt.Text = "Unknown";
                }
            }
        }

        //Modify the servo position based on the value returned by the slider
        private void positionTrk_Scroll(object sender, EventArgs e)
        {
            int index = servoNumCombo.SelectedIndex;

            //A PhidgetException will be thrown if you try to set the position to any value NOT between -23 and 232
            try
            {
                servo.servos[index].Position = (double)positionTrk.Value;
            }
            catch (PhidgetException)
            {
                MessageBox.Show("position value out of bounds!");
            }
            catch { }
        }

        private void servoTypeCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int index = (int)servoNumCombo.SelectedItem;
                if (servo.servos[index].Type != (ServoServo.ServoType)Enum.Parse(typeof(ServoServo.ServoType), servoTypeCmb.SelectedItem.ToString()))
                {
                    servo.servos[index].Type = (ServoServo.ServoType)Enum.Parse(typeof(ServoServo.ServoType), servoTypeCmb.SelectedItem.ToString());
                    initAllValues();
                }
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }
        }

        //If using a 4-motor Phidget Servo, this code wi;; switch between the selected servos and display their position data
        private void servoNumCombo_SelectedIndexChanged(object sender, EventArgs e)
        {
            initAllValues();
        }

        private void initAllValues()
        {
            int index = servoNumCombo.SelectedIndex;

            positionTrk.SetRange((int)(servo.servos[0].PositionMin), (int)(servo.servos[0].PositionMax));

            //Use a try-catch block around code where you are getting and displaying the servo position data
            //if the current position state has yet to be set, it will throw a PhidgetException for value not set
            //you can use this to test this and to display that the value is unknown
            try
            {
                positionTxt.Text = servo.servos[index].Position.ToString();
                positionTrk.Value = (int)servo.servos[index].Position;
                engagedCheckBox.Checked = servo.servos[index].Engaged;
            }
            catch (PhidgetException)
            {
                positionTxt.Text = "Unknown";
                engagedCheckBox.Checked = false;
            }
            catch { }
            servoTypeCmb.SelectedItem = servo.servos[index].Type.ToString();
        }

        //When the application is terminating, close the Phidget.
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            servo.Attach -= new AttachEventHandler(servo_Attach);
            servo.Detach -= new DetachEventHandler(servo_Detach);
            servo.PositionChange -= new PositionChangeEventHandler(servo_PositionChange);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            servo.close();
        }

        private void engagedCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            int index = servoNumCombo.SelectedIndex;

            //A PhidgetException will be thrown if you try to set the position to any value NOT between -23 and 232
            try
            {
                servo.servos[index].Engaged = engagedCheckBox.Checked;
            }
            catch (PhidgetException)
            {
                MessageBox.Show("couldn't set engaged state");
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