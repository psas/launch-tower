/* - Stepper full -
 * This example demonstrates the basic usage of a Phidget Stepper controller.  It demonstrates the manipulation 
 * of the velocity, goal position and acceleration of the stepper, as well as displays the data from generated 
 * events including current position.  If the connected Phidget STepper is Bipolar, the user will be shown 
 * Current values as well as being able to manipulate stepper torque.
 *
 * Please note that this example was designed to work with only one Phidget Stepper connected. 
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
using Phidgets; //Needed for the Stepper class, Phidget base classes, and the PhidgetException class
using Phidgets.Events; //Needed for the Phidget event handling classes

namespace Stepper_full
{
    public partial class Form1 : Form
    {
        private Stepper stepper; //Declare a Stepper object
        private ErrorEventBox errorBox;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
        }

        //initialize the stepper object and hook the event handlers
        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Tick += new EventHandler(timer1_Tick);

            stepper = new Stepper();

            stepper.Attach += new AttachEventHandler(stepper_Attach);
            stepper.Detach += new DetachEventHandler(stepper_Detach);
            stepper.Error += new ErrorEventHandler(stepper_Error);

            stepper.CurrentChange += new CurrentChangeEventHandler(stepper_CurrentChange);
            stepper.PositionChange += new StepperPositionChangeEventHandler(stepper_PositionChange);
            stepper.VelocityChange += new VelocityChangeEventHandler(stepper_VelocityChange);
            stepper.InputChange += new InputChangeEventHandler(stepper_InputChange);

            openCmdLine(stepper);
        }

        //poll the stopped property every 100ms, ignore any errors
        void timer1_Tick(object sender, EventArgs e)
        {
            try
            {
                stoppedCheckBox.Checked = stepper.steppers[(int)stepperCmb.SelectedItem].Stopped;
            }
            catch { }
        }

        //Stepper attach event handler...populate the available fields and controls
        void stepper_Attach(object sender, AttachEventArgs e)
        {
            Stepper attachedStepper = (Stepper)sender;

            attachedTxt.Text = attachedStepper.Attached.ToString();
            nameTxt.Text = attachedStepper.Name;
            serialTxt.Text = attachedStepper.SerialNumber.ToString();
            versiontxt.Text = attachedStepper.Version.ToString();
            numSteppersTxt.Text = attachedStepper.steppers.Count.ToString();

            velocityTrk.SetRange((int)attachedStepper.steppers[0].VelocityMin, (int)attachedStepper.steppers[0].VelocityMax);
            velocityTrk.TickFrequency = (int)attachedStepper.steppers[0].VelocityMax / 64;
            velocityTrk.LargeChange = (int)attachedStepper.steppers[0].VelocityMax / 64;
            accelTrk.SetRange((int)attachedStepper.steppers[0].AccelerationMin, (int)attachedStepper.steppers[0].AccelerationMax);
            accelTrk.TickFrequency = (int)attachedStepper.steppers[0].AccelerationMin * 4;
            accelTrk.LargeChange = (int)attachedStepper.steppers[0].AccelerationMin;
            positionTrk.SetRange(-20000, 20000); //Have arbitrarily chosen a range of -20000 - 20000, but the maximum range is closer to +-549000000000
            positionTrk.TickFrequency = 1000;
            positionTrk.LargeChange = 250;
            currentPositionTrk.SetRange(-20000, 20000); //Have arbitrarily chosen a range of -20000 - 20000, but the maximum range is closer to +-549000000000
            currentPositionTrk.TickFrequency = 1000;
            currentPositionTrk.LargeChange = 250;

            velocityTrk.Enabled = true;
            accelTrk.Enabled = true;
            positionTrk.Enabled = true;
            currentPositionTrk.Enabled = true;
            engagedCheckBox.Enabled = true;
            stepperCmb.Enabled = true;

            switch (attachedStepper.ID)
            {
                //Only a Bipolar stepper has access to these features
                case Phidget.PhidgetID.BIPOLAR_STEPPER_1MOTOR:
                    currentLimitTrk.Visible = true;
                    currentLimitTxt.Visible = true;
                    currentTxt.Visible = true;
                    currentLimitLbl.Visible = true;
                    currentLimitTrkLbl.Visible = true;
                    currentLbl.Visible = true;

                    currentLimitTrk.Enabled = true;

                    inputsGrp.Visible = true;

                    currentLimitTrk.SetRange((int)(stepper.steppers[0].CurrentMin * 100.0), (int)(stepper.steppers[0].CurrentMax * 100.0)); // Range for the current limit
                    currentLimitTrk.TickFrequency = 5;
                    break;

                case Phidget.PhidgetID.UNIPOLAR_STEPPER_4MOTOR:
                    currentLimitTrk.Visible = false;
                    currentLimitTxt.Visible = false;
                    currentTxt.Visible = false;
                    currentLimitLbl.Visible = false;
                    currentLimitTrkLbl.Visible = false;
                    currentLbl.Visible = false;

                    inputsGrp.Visible = false;
                    break;

                default:
                    break;
            }

            for (int i = 0; i < attachedStepper.steppers.Count; i++)
            {
                stepperCmb.Items.Add(i);
            }
            stepperCmb.SelectedIndex = 0;

            timer1.Start();
        }

        //Stepper Detach event handler...Clear all the fields and disable all the controls
        void stepper_Detach(object sender, DetachEventArgs e)
        {
            Stepper detachedStepper = (Stepper)sender;

            attachedTxt.Text = detachedStepper.Attached.ToString();
            nameTxt.Clear();
            serialTxt.Clear();
            versiontxt.Clear();
            numSteppersTxt.Clear();

            velocityTrk.Enabled = false;
            accelTrk.Enabled = false;
            positionTrk.Enabled = false;
            currentPositionTrk.Enabled = false;
            currentLimitTrk.Enabled = false;
            engagedCheckBox.Enabled = false;
            stepperCmb.Enabled = false;

            positionTrk.Value = 0;
            currentPositionTrk.Value = 0;
            velocityTrk.Value = velocityTrk.Minimum;
            accelTrk.Value = accelTrk.Minimum;
            currentLimitTrk.Value = currentLimitTrk.Minimum;

            velocityLimitTxt.Clear();
            velocityTxt.Clear();
            accelTxt.Clear();
            positionTxt.Clear();
            targetPositionTxt.Clear();
            currentLimitTxt.Clear();
            currentTxt.Clear();

            engagedCheckBox.Checked = false;
            stoppedCheckBox.Checked = false;

            stepperCmb.Items.Clear();

            timer1.Stop();
        }

        //Stepper Error event handler...Display the details of the error in a message box
        void stepper_Error(object sender, ErrorEventArgs e)
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

        //Stepper Current change event handler...Display the current data from the current change event
        void stepper_CurrentChange(object sender, CurrentChangeEventArgs e)
        {
            if (e.Index == (int)stepperCmb.SelectedItem)
            {
                currentTxt.Text = e.Current.ToString();
            }
        }

        //Stepper position change event handler...Display the position data from the position change event
        void stepper_PositionChange(object sender, StepperPositionChangeEventArgs e)
        {
            if (e.Index == (int)stepperCmb.SelectedItem)
            {
                positionTxt.Text = e.Position.ToString();
                stoppedCheckBox.Checked = stepper.steppers[e.Index].Stopped;
                if(!currentPositionTrk.Focused)
                    currentPositionTrk.Enabled = stepper.steppers[e.Index].Stopped;
            }
        }

        //Stepper Velocity Change event handler...Display the data from the velocity change event
        void stepper_VelocityChange(object sender, VelocityChangeEventArgs e)
        {
            if (e.Index == (int)stepperCmb.SelectedItem)
            {
                velocityTxt.Text = e.Velocity.ToString();
                stoppedCheckBox.Checked = stepper.steppers[e.Index].Stopped;
                if (!currentPositionTrk.Focused)
                    currentPositionTrk.Enabled = stepper.steppers[e.Index].Stopped;
            }
        }

        void stepper_InputChange(object sender, InputChangeEventArgs e)
        {
            ((CheckBox)inputsGrp.Controls["input" + e.Index.ToString() + "Chk"]).Checked = e.Value;
        }

        //Selected index changed event handler...display the data from the newly selected stepper in the fields and setup the controls
        private void stepperCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if((int)stepper.steppers[(int)stepperCmb.SelectedItem].TargetPosition >= positionTrk.Minimum
                    && (int)stepper.steppers[(int)stepperCmb.SelectedItem].TargetPosition <= positionTrk.Maximum)
                    positionTrk.Value = (int)stepper.steppers[(int)stepperCmb.SelectedItem].TargetPosition;
                targetPositionTxt.Text = stepper.steppers[(int)stepperCmb.SelectedItem].TargetPosition.ToString();
            }
            catch (PhidgetException)
            {
                positionTrk.Value = 0;
                targetPositionTxt.Clear();
            }

            try
            {
                if ((int)stepper.steppers[(int)stepperCmb.SelectedItem].CurrentPosition >= currentPositionTrk.Minimum
                    && (int)stepper.steppers[(int)stepperCmb.SelectedItem].CurrentPosition <= currentPositionTrk.Maximum)
                    currentPositionTrk.Value = (int)stepper.steppers[(int)stepperCmb.SelectedItem].CurrentPosition;
                positionTxt.Text = stepper.steppers[(int)stepperCmb.SelectedItem].CurrentPosition.ToString();
            }
            catch (PhidgetException)
            {
                currentPositionTrk.Value = 0;
                positionTxt.Clear();
            }

            try
            {
                velocityTrk.Value = (int)stepper.steppers[(int)stepperCmb.SelectedItem].VelocityLimit;
                velocityLimitTxt.Text = stepper.steppers[(int)stepperCmb.SelectedItem].VelocityLimit.ToString();
            }
            catch (PhidgetException)
            {
                velocityTrk.Value = velocityTrk.Minimum;
                velocityLimitTxt.Clear();
            }

            try
            {
                accelTrk.Value = (int)stepper.steppers[(int)stepperCmb.SelectedItem].Acceleration;
                accelTxt.Text = stepper.steppers[(int)stepperCmb.SelectedItem].Acceleration.ToString();
            }
            catch (PhidgetException)
            {
                accelTrk.Value = accelTrk.Minimum;
                accelTxt.Clear();
            }

            try
            {
                velocityTxt.Text = stepper.steppers[(int)stepperCmb.SelectedItem].Velocity.ToString();
            }
            catch (PhidgetException)
            {
                velocityTxt.Clear();
            }

            try
            {
                currentTxt.Text = stepper.steppers[(int)stepperCmb.SelectedItem].Current.ToString();
            }
            catch (PhidgetException)
            {
                currentTxt.Clear();
            }

            try
            {
                stoppedCheckBox.Checked = stepper.steppers[(int)stepperCmb.SelectedItem].Stopped;
                currentPositionTrk.Enabled = stepper.steppers[(int)stepperCmb.SelectedItem].Stopped;
            }
            catch (PhidgetException)
            {
                stoppedCheckBox.Checked = false;
            }

            try
            {
                engagedCheckBox.Checked = stepper.steppers[(int)stepperCmb.SelectedItem].Engaged;
            }
            catch (PhidgetException)
            {
                engagedCheckBox.Checked = false;
            }

            currentLimitTxt.Clear();
            currentLimitTrk.Value = currentLimitTrk.Minimum;
        }

        //Acceleration trackbar change event handler...update the acceleration value of the STepper and display the new value in the text box
        private void accelTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                double accel = accelTrk.Value;
                if (accel < stepper.steppers[(int)stepperCmb.SelectedItem].AccelerationMin)
                    accel = stepper.steppers[(int)stepperCmb.SelectedItem].AccelerationMin;
                if (accel > stepper.steppers[(int)stepperCmb.SelectedItem].AccelerationMax)
                    accel = stepper.steppers[(int)stepperCmb.SelectedItem].AccelerationMax;
                stepper.steppers[(int)stepperCmb.SelectedItem].Acceleration = accel;
                accelTxt.Text = accel.ToString();
            }
            catch (PhidgetException)
            {
                accelTxt.Text = "Err";
            }
        }

        private void positionTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                stepper.steppers[(int)stepperCmb.SelectedItem].TargetPosition = positionTrk.Value;
                targetPositionTxt.Text = positionTrk.Value.ToString();
            }
            catch (PhidgetException)
            {
                targetPositionTxt.Text = "Err";
            }
        }

        private void currentLimitTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                double current = currentLimitTrk.Value / 100.0;
                if (current < stepper.steppers[(int)stepperCmb.SelectedItem].CurrentMin)
                    current = stepper.steppers[(int)stepperCmb.SelectedItem].CurrentMin;
                if (current > stepper.steppers[(int)stepperCmb.SelectedItem].CurrentMax)
                    current = stepper.steppers[(int)stepperCmb.SelectedItem].CurrentMax;
                stepper.steppers[(int)stepperCmb.SelectedItem].CurrentLimit = current;
                currentLimitTxt.Text = current.ToString();
            }
            catch (PhidgetException)
            {
                currentLimitTxt.Text = "Err";
            }
        }

        private void velocityTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                double vel = velocityTrk.Value;
                if (vel < stepper.steppers[(int)stepperCmb.SelectedItem].VelocityMin)
                    vel = stepper.steppers[(int)stepperCmb.SelectedItem].VelocityMin;
                if (vel > stepper.steppers[(int)stepperCmb.SelectedItem].VelocityMax)
                    vel = stepper.steppers[(int)stepperCmb.SelectedItem].VelocityMax;
                stepper.steppers[(int)stepperCmb.SelectedItem].VelocityLimit = vel;
                velocityLimitTxt.Text = vel.ToString();
            }
            catch (PhidgetException)
            {
                velocityLimitTxt.Text = "Err";
            }
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            stepper.Attach -= stepper_Attach;
            stepper.Detach -= stepper_Detach;
            stepper.Error -= stepper_Error;

            stepper.CurrentChange -=stepper_CurrentChange;
            stepper.PositionChange -= stepper_PositionChange;
            stepper.VelocityChange -= stepper_VelocityChange;

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            if (stepper.Attached)
            {
                for (int i = 0; i < stepper.steppers.Count; i++)
                {
                    stepper.steppers[i].Engaged = false;
                }
            }

            stepper.close();
        }

        private void engagedCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                stepper.steppers[(int)stepperCmb.SelectedItem].Engaged = engagedCheckBox.Checked;
            }
            catch (Exception) { }
        }

        private void currentPositionTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                stepper.steppers[(int)stepperCmb.SelectedItem].CurrentPosition = currentPositionTrk.Value;
                targetPositionTxt.Text = currentPositionTrk.Value.ToString();
            }
            catch (PhidgetException)
            {
                targetPositionTxt.Text = "Err";
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