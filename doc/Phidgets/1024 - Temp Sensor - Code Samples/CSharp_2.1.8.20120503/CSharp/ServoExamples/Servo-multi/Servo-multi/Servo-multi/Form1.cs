/* - Servo multi -
 * This example is very similar to the Servo-full example, except that this example demonstrates attaching and using two Phidget
 * Servo Controllers simultaneously.  Please note the two serial number variables declared at the beginning of the class.
 * These are used to store the serial numbers of the Phidgets Servos that we are attaching.  Please change these to reflect the serial
 * numbers of your own phidgets before running the program or you will find that it won't work.
 *
 * Note: This example can be easily modified to support more than two Phidget Servos.  To do this you simply need to create
 * seperate servo objects for each new Phidget Servo Controller you wish to be able to control and supply the serial number of each
 * subsequent device to the respect object's open() method.
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

namespace Servo_multi
{
    public partial class Form1 : Form
    {
        private Servo servo1; //Declare a servo object for one servo
        private Servo servo2; //Declare a servo object for the second servo

        //IMPORTANT: Need to change these serial numbers to the serial numbers of your own Phidgets that you will be attaching
        //These are the serial numbers from the Phidgets that were used to develop this example and no other phidgets will work
        //until this value is changed.  You can use your Phidget21Manager agent to look up the serial numbers of your Phidget Servos
        //and enter their vlaues here and rebuilding the code before trying this example.
        int serialNum1 = 19738; 
        int serialNum2 = 5952;

        public Form1()
        {
            InitializeComponent();
        }

        //Initialization code
        private void Form1_Load(object sender, EventArgs e)
        {
            servo1 = new Servo();
            servo2 = new Servo();

            controllerCmb.Enabled = false;
            servoNumCombo.Enabled = false;

            positionTrk.SetRange(-23, 232);

            servo1.Attach += new AttachEventHandler(servo_Attach);
            servo1.Detach += new DetachEventHandler(servo_Detach);
            servo1.Error += new ErrorEventHandler(servo_Error);

            servo1.PositionChange += new PositionChangeEventHandler(servo_PositionChange);
            
            servo2.Attach += new AttachEventHandler(servo_Attach);
            servo2.Detach += new DetachEventHandler(servo_Detach);
            servo2.Error += new ErrorEventHandler(servo_Error);

            servo2.PositionChange += new PositionChangeEventHandler(servo_PositionChange);

            servo1.open(serialNum1);
            servo2.open(serialNum2);
        }

        //PhidgetServo attach event handling code
        void servo_Attach(object sender, AttachEventArgs e)
        {
            Servo attached = (Servo)sender;

            controllerCmb.Items.Add(attached.SerialNumber);
            controllerCmb.SelectedItem = attached.SerialNumber;

            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versionTxt.Text = attached.Version.ToString();
            servosTxt.Text = attached.servos.Count.ToString();
            servoNumCombo.Items.Clear();
            servoNumCombo.Enabled = true;
            controllerCmb.Enabled = true;

            for (int i = 0; i < attached.servos.Count; i++)
            {
                servoNumCombo.Items.Add(i);

                try
                {
                    attached.servos[i].Position = 0.0;
                }
                catch (PhidgetException ex)
                {
                    MessageBox.Show(ex.StackTrace);
                }
            }


            servoNumCombo.SelectedIndex = 0;

            //Use a try-catch block around code where you are getting and displaying the servo position data
            //if the current position state has yet to be set, it will throw a PhidgetException for value not set
            //you can use this to test this and to display that the value is unknown
            try
            {
                positionTxt.Text = attached.servos[0].Position.ToString();
                positionTrk.Value = (int)attached.servos[0].Position;
            }
            catch (PhidgetException)
            {
                positionTxt.Text = "Unknown";
            }
        }

        //PhidgetServo detach event handling code
        void servo_Detach(object sender, DetachEventArgs e)
        {
            Servo detached = (Servo)sender;

            controllerCmb.SelectedItem = detached.SerialNumber;

            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Text = "";
            serialTxt.Text = "";
            versionTxt.Text = "";
            servosTxt.Text = "";
            servoNumCombo.Enabled = false;
            servoNumCombo.Items.Clear();
            positionTxt.Text = "";
            positionTrk.Value = 0;

            controllerCmb.Items.Remove(detached.SerialNumber);
        }

        //PhidgetServo Error event handling code
        void servo_Error(object sender, ErrorEventArgs e)
        {
            MessageBox.Show(e.Description);
        }

        //Servo position change event handling code
        void servo_PositionChange(object sender, PositionChangeEventArgs e)
        {
            Servo attached = (Servo)sender;

            try
            {
                positionTxt.Text = attached.servos[e.Index].Position.ToString();
            }
            catch (PhidgetException)
            {
                positionTxt.Text = "Unknown";
            }
        }

        //Switch between the connected Phidget Servo Controllers
        private void controllerCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            if ((int)controllerCmb.SelectedItem == servo1.SerialNumber)
            {
                attachedTxt.Text = servo1.Attached.ToString();
                nameTxt.Text = servo1.Name;
                serialTxt.Text = servo1.SerialNumber.ToString();
                versionTxt.Text = servo1.Version.ToString();
                servosTxt.Text = servo1.servos.Count.ToString();
                servoNumCombo.Items.Clear();

                for (int i = 0; i < servo1.servos.Count; i++)
                {
                    servoNumCombo.Items.Add(i);
                }

                servoNumCombo.SelectedIndex = 0;
                
                //Use a try-catch block around code where you are getting and displaying the servo position data
                //if the current position state has yet to be set, it will throw a PhidgetException for value not set
                //you can use this to test this and to display that the value is unknown
                try
                {
                    positionTxt.Text = servo1.servos[0].Position.ToString();
                    positionTrk.Value = (int)servo1.servos[0].Position;
                }
                catch (PhidgetException)
                {
                    positionTxt.Text = "Unknown";
                }
            }
            else if ((int)controllerCmb.SelectedItem == servo2.SerialNumber)
            {
                attachedTxt.Text = servo2.Attached.ToString();
                nameTxt.Text = servo2.Name;
                serialTxt.Text = servo2.SerialNumber.ToString();
                versionTxt.Text = servo2.Version.ToString();
                servosTxt.Text = servo2.servos.Count.ToString();
                servoNumCombo.Items.Clear();

                for (int i = 0; i < servo2.servos.Count; i++)
                {
                    servoNumCombo.Items.Add(i);
                }

                servoNumCombo.SelectedIndex = 0;

                //Use a try-catch block around code where you are getting and displaying the servo position data
                //if the current position state has yet to be set, it will throw a PhidgetException for value not set
                //you can use this to test this and to display that the value is unknown
                try
                {
                    positionTxt.Text = servo2.servos[0].Position.ToString();
                    positionTrk.Value = (int)servo2.servos[0].Position;
                }
                catch (PhidgetException)
                {
                    positionTxt.Text = "Unknown";
                }
            }
            else
            {
                MessageBox.Show("invalid index");
            }
        }

        //If using a 4-motor Phidget Servo, this code wi;; switch between the selected servos and display their position data
        private void servoNumCombo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = servoNumCombo.SelectedIndex;

            //Use a try-catch block around code where you are getting and displaying the servo position data
            //if the current position state has yet to be set, it will throw a PhidgetException for value not set
            //you can use this to test this and to display that the value is unknown
            try
            {
                if ((int)controllerCmb.SelectedItem == servo1.SerialNumber)
                {
                    positionTxt.Text = servo1.servos[index].Position.ToString();
                    positionTrk.Value = (int)servo1.servos[index].Position;
                }
                else if ((int)controllerCmb.SelectedItem == servo2.SerialNumber)
                {
                    positionTxt.Text = servo2.servos[index].Position.ToString();
                    positionTrk.Value = (int)servo2.servos[index].Position;
                }
            }
            catch (PhidgetException)
            {
                positionTxt.Text = "Unknown";
            }
        }

        //Modify the servo position based on the value returned by the slider
        private void positionTrk_Scroll(object sender, EventArgs e)
        {
            int index = servoNumCombo.SelectedIndex;

            //A PhidgetException will be thrown if you try to set the position to any value NOT between -23 and 232
            try
            {
                if ((int)controllerCmb.SelectedItem == servo1.SerialNumber)
                {
                    servo1.servos[index].Position = positionTrk.Value;
                }
                else if ((int)controllerCmb.SelectedItem == servo2.SerialNumber)
                {
                    servo2.servos[index].Position = positionTrk.Value;
                }
            }
            catch (PhidgetException)
            {
                MessageBox.Show("position value out of bounds!");
            }

        }

        //When the application is terminating, close the Phidgets.
        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            servo1.Attach -= new AttachEventHandler(servo_Attach);
            servo1.Detach -= new DetachEventHandler(servo_Detach);
            servo1.PositionChange -= new PositionChangeEventHandler(servo_PositionChange);

            servo2.Attach -= new AttachEventHandler(servo_Attach);
            servo2.Detach -= new DetachEventHandler(servo_Detach);
            servo2.PositionChange -= new PositionChangeEventHandler(servo_PositionChange);

            Application.DoEvents();

            servo1.close();
            servo1 = null;
            servo2.close();
            servo2 = null;
        }
    }
}