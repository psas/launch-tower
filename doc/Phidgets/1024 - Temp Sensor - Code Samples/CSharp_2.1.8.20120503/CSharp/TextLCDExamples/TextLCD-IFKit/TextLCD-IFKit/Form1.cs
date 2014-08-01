/* - TextLCD IFKit -
 * This example demonstrates how to use the full functionality of a TextLCD as well as shows how one can use two 
 * different phidgets together for one purpose.  In this example I open a textLCD Phidget and the attached Interfacekit
 * 8/8/8 using the phidget's serial number.  I then use the TextLCD to display the value of a sensor attached to sernsor 
 * input 0.
 *
 * Please note that this example was designed to work with only one Phidget TextLCD connected. 
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
using Phidgets; //Needed for the phidgets
using Phidgets.Events; //needed for the events

namespace TextLCD_IFKit
{
    public partial class Form1 : Form
    {
        private TextLCD lcd; //create a TextLCD object
        private InterfaceKit ifk; //create an INterfaceKit object

        //these arrays will hold refereces to checkboxes and text fields corresponding to digital inputs/outputs and the sensors
        private CheckBox[] digiInArray = new CheckBox[16];
        private CheckBox[] digiOutArray = new CheckBox[16];
        private TextBox[] sensorInArray = new TextBox[8];

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //build the arrays
            makeDigiInArray();
            makeDigiOutArray();
            makeSensorInArray();

            //initialize some of the form elements basedo n nothing being attached yet
            label9.Visible = false;
            inputTrk.Value = 0;
            inputTrk.Enabled = false;
            inputTrk.Visible = false;
            sensitivityTxt.Text = "";
            sensitivityTxt.Visible = false;

            ratioChk.Enabled = false;
            ratioChk.Checked = false;

            contrastTrkBr.Enabled = false;

            //initiallize the TextLCD object
            lcd = new TextLCD();

            //hook the event handlers
            lcd.Attach += new AttachEventHandler(lcd_Attach);
            lcd.Detach += new DetachEventHandler(lcd_Detach);
            lcd.Error += new ErrorEventHandler(lcd_Error);

            //initialize the InterfaceKit object
            ifk = new InterfaceKit();

            //hook the event handlers
            ifk.Attach += new AttachEventHandler(ifk_Attach);
            ifk.Detach += new DetachEventHandler(ifk_Detach);
            ifk.Error += new ErrorEventHandler(ifk_Error);

            ifk.InputChange += new InputChangeEventHandler(ifk_InputChange);
            ifk.OutputChange += new OutputChangeEventHandler(ifk_OutputChange);
            ifk.SensorChange += new SensorChangeEventHandler(ifk_SensorChange);

            //open the phidgets
            //Since TextLCDs come with an attached InterfaceKit 8/8/8 open the lcd and the interfacekit 
            //as seperate objects. Here we are assuming the PhidgetTextLCD with 8/8/8 is the only Phidget
            //attached to your pc. If you have more phidgets or want connect to phidgets on other PC's look for the
            //other variations of open().
            lcd.open();
            ifk.open();
        }

        //attach event handler... here we'll display the interface kit details as well as determine how many output and input
        //fields to display as well as determine the range of values for the output simulator slider
        void ifk_Attach(object sender, AttachEventArgs e)
        {
            InterfaceKit attached = (InterfaceKit)sender;
            IFKattachedTXT.Text = attached.Attached.ToString();
            IFKnameTXT.Text = attached.Name;
            IFKserialTXT.Text = attached.SerialNumber.ToString();
            IFKversionTXT.Text = attached.Version.ToString();

            digiInNumTxt.Text = attached.inputs.Count.ToString();
            digiOutNumTxt.Text = attached.outputs.Count.ToString();
            sensorInNumTxt.Text = attached.sensors.Count.ToString();

            int i;
            for (i = 0; i < attached.inputs.Count; i++)
            {
                digiInArray[i].Visible = true;
            }

            for (i = 0; i < attached.outputs.Count; i++)
            {
                digiOutArray[i].Visible = true;
                digiOutArray[i].Checked = false;
                digiOutArray[i].Enabled = true;
            }

            if (attached.sensors.Count > 0)
            {
                for (i = 0; i < attached.sensors.Count; i++)
                {
                    sensorInArray[i].Visible = true;
                }

                label9.Visible = true;
                sensitivityTxt.Visible = true;
                inputTrk.Visible = true;
            }
            else
            {
                label9.Visible = false;
                sensitivityTxt.Visible = false;
                inputTrk.Visible = false;
            }

            inputTrk.Enabled = true;
            inputTrk.SetRange(0, 1000);
            inputTrk.Value = attached.sensors[0].Sensitivity;
            sensitivityTxt.Text = inputTrk.Value.ToString();

            attached.ratiometric = true;

            ratioChk.Enabled = true;
            ratioChk.Checked = attached.ratiometric;
        }

        //detach event handler.... we will display the device attach status and clear all the other fields
        void ifk_Detach(object sender, DetachEventArgs e)
        {
            InterfaceKit detached = (InterfaceKit)sender;
            IFKattachedTXT.Text = detached.Attached.ToString();
            IFKnameTXT.Text = "";
            IFKserialTXT.Text = "";
            IFKversionTXT.Text = "";
            digiInNumTxt.Text = "";
            digiOutNumTxt.Text = "";
            sensorInNumTxt.Text = "";

            int i;
            for (i = 0; i < 16; i++)
            {
                digiInArray[i].Visible = false;
                digiInArray[i].Checked = false;
            }
            for (i = 0; i < 16; i++)
            {
                digiOutArray[i].Visible = false;
                digiOutArray[i].Checked = false;
                digiOutArray[i].Enabled = false;
            }
            for (i = 0; i < 8; i++)
            {
                sensorInArray[i].Visible = false;
                sensorInArray[i].Text = "";
            }

            label9.Visible = false;
            sensitivityTxt.Visible = false;
            inputTrk.Visible = false;
            inputTrk.Value = 0;
            inputTrk.Enabled = false;
            sensitivityTxt.Text = "";

            ratioChk.Enabled = false;
            ratioChk.Checked = false;
        }

        //error event handler
        void ifk_Error(object sender, ErrorEventArgs e)
        {
            MessageBox.Show(e.Description);
        }

        //attach event handler...we will display the attach status and the attached TextLCD device's details
        //We will also enable the fields used to manipulate the TextLCD as well as do some initializing of
        //ranges and maximum values for some of these fields
        void lcd_Attach(object sender, AttachEventArgs e)
        {
            TextLCD attached = (TextLCD)sender;
            LCDattachedText.Text = attached.Attached.ToString();
            LCDnameText.Text = attached.Name;
            LCDserialText.Text = attached.SerialNumber.ToString();
            LCDversionText.Text = attached.Version.ToString();

            contrastTrkBr.Enabled = true;
            contrastTrkBr.SetRange(0, 255);
            contrastTrkBr.Value = 130;
        }

        //detach event handler.... we will display the device attach status and clear all the other fields
        void lcd_Detach(object sender, DetachEventArgs e)
        {
            TextLCD detached = (TextLCD)sender;
            LCDattachedText.Text = detached.Attached.ToString();
            LCDnameText.Text = "";
            LCDserialText.Text = "";
            LCDversionText.Text = "";

            contrastTrkBr.Enabled = false;
        }

        //error event handler
        void lcd_Error(object sender, ErrorEventArgs e)
        {
            MessageBox.Show(e.Description);
        }

        //digital input change event handler... here we check or uncheck the corresponding input checkbox based on the index of
        //the digital input that generated the event
        void ifk_InputChange(object sender, InputChangeEventArgs e)
        {
            digiInArray[e.Index].Checked = e.Value;
        }

        //digital output change event handler... here we check or uncheck the corresponding output checkbox based on the index of
        //the output that generated the event
        void ifk_OutputChange(object sender, OutputChangeEventArgs e)
        {
            digiOutArray[e.Index].Checked = e.Value;
        }

        //sensor input change event handler...Set the textbox content based on the input index that is communicating with the
        //interface kit
        //also, display the sensor information in the attached TextLCD
        void ifk_SensorChange(object sender, SensorChangeEventArgs e)
        {
            sensorInArray[e.Index].Text = e.Value.ToString();

            lcd.rows[0].DisplayString = "Sensor: " + e.Index;
            lcd.rows[1].DisplayString = "Value: " + e.Value;
        }

        //adjust the contast of the screen on the textLCD based on the value selected on the slider (100 to 0)
        private void contrastTrkBr_Scroll(object sender, EventArgs e)
        {
            lcd.Contrast = contrastTrkBr.Value;
        }

        //Modify the digital ouputs...Please observe the properties window in the ofrm designer for the digital output checkboxes.
        //Each of the output checkboxes CheckedChanged events point to this one event handler, I use the sender object (the checkbox
        //triggering the event) to get the checkbox that is changing.  Also note that there is a "tag" property that is basically
        //user defined data associated with the control.  I used this to store the output index that the checkbox is supposed to
        //represent for use in the following code to easily index the output we wanted to change.  Hopefully this clarifies what
        //was done in this method.
        private void CheckedChanged(object sender, EventArgs e)
        {
            CheckBox outputChk = (CheckBox)sender;

            int outputIndex = int.Parse((string)outputChk.Tag);

            ifk.outputs[outputIndex] = outputChk.Checked;
        }

        //Modify the sensitivity of the analog inputs. In other words, the amount that the inputs must change between 
        //sensorchange events.
        private void inputTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                for (int i = 0; i < ifk.sensors.Count; i++)
                {
                    ifk.sensors[i].Sensitivity = inputTrk.Value;
                }
                sensitivityTxt.Text = inputTrk.Value.ToString();
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }
        }

        private void ratioChk_CheckedChanged(object sender, EventArgs e)
        {
            ifk.ratiometric = ratioChk.Checked;
        }

        //When the application is terminating, close the Phidget.
        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            lcd.rows[0].DisplayString = "";
            lcd.rows[1].DisplayString = "";

            lcd.Attach -= new AttachEventHandler(lcd_Attach);
            lcd.Detach -= new DetachEventHandler(lcd_Detach);
            lcd.Error -= new ErrorEventHandler(lcd_Error);

            ifk.Attach -= new AttachEventHandler(ifk_Attach);
            ifk.Detach -= new DetachEventHandler(ifk_Detach);
            ifk.Error -= new ErrorEventHandler(ifk_Error);

            ifk.InputChange -= new InputChangeEventHandler(ifk_InputChange);
            ifk.OutputChange -= new OutputChangeEventHandler(ifk_OutputChange);
            ifk.SensorChange -= new SensorChangeEventHandler(ifk_SensorChange);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            lcd.close();
            ifk.close();

            lcd = null;
            ifk = null;
        }

        //this method creates the digital input array that corresponds to the group of checkboxes
        //we are suing to represent the state of the digital inputs on the interface kit
        private void makeDigiInArray()
        {
            digiInArray[0] = checkBox1;
            digiInArray[1] = checkBox2;
            digiInArray[2] = checkBox3;
            digiInArray[3] = checkBox4;
            digiInArray[4] = checkBox5;
            digiInArray[5] = checkBox6;
            digiInArray[6] = checkBox7;
            digiInArray[7] = checkBox8;
            digiInArray[8] = checkBox9;
            digiInArray[9] = checkBox10;
            digiInArray[10] = checkBox11;
            digiInArray[11] = checkBox12;
            digiInArray[12] = checkBox13;
            digiInArray[13] = checkBox14;
            digiInArray[14] = checkBox15;
            digiInArray[15] = checkBox16;

            for (int i = 0; i < 16; i++)
            {
                digiInArray[i].Visible = false;
            }
        }

        //this method creates the digital output array that corresponds to the group of checkboxes
        //we are using to represent the state of the digital outputs on the interface kit
        private void makeDigiOutArray()
        {
            digiOutArray[0] = checkBox17;
            digiOutArray[1] = checkBox18;
            digiOutArray[2] = checkBox19;
            digiOutArray[3] = checkBox20;
            digiOutArray[4] = checkBox21;
            digiOutArray[5] = checkBox22;
            digiOutArray[6] = checkBox23;
            digiOutArray[7] = checkBox24;
            digiOutArray[8] = checkBox25;
            digiOutArray[9] = checkBox26;
            digiOutArray[10] = checkBox27;
            digiOutArray[11] = checkBox28;
            digiOutArray[12] = checkBox29;
            digiOutArray[13] = checkBox30;
            digiOutArray[14] = checkBox31;
            digiOutArray[15] = checkBox32;

            for (int i = 0; i < 16; i++)
            {
                digiOutArray[i].Visible = false;
            }
        }

        //this method creates the analog input array (mst likelely connected to analog sensors) that corresponds to the group
        //of textboxes which will be holding the current values of the analog inputs that are being sent to the interface kit
        private void makeSensorInArray()
        {
            sensorInArray[0] = textBox1;
            sensorInArray[1] = textBox2;
            sensorInArray[2] = textBox3;
            sensorInArray[3] = textBox4;
            sensorInArray[4] = textBox5;
            sensorInArray[5] = textBox6;
            sensorInArray[6] = textBox7;
            sensorInArray[7] = textBox8;

            for (int i = 0; i < 8; i++)
            {
                sensorInArray[i].Visible = false;
            }
        }
    }
}