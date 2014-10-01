/* - InterfaceKit full -
 * In this example we display the interface kit details including the number of inputs and outputs it allows,
 * and displays the values of the inputs and outputs.
 * Note: This example was developed and run with an LED in digital output 0 and an LED in digital output 7 to test
 * the simulated digital output.
 *
 * Please note that this example was designed to work with only one Phidget InterfaceKit connected. 
 * For an example using multiple Phidget InterfaceKits, please see a "multiple" example in the 
 * InterfaceKit Examples folder.
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
using Phidgets;  //needed for the interfacekit class and the phidget exception class
using Phidgets.Events;  //needed for the event handling classes

namespace InterfaceKit_full
{
    public partial class Form1 : Form
    {
        private InterfaceKit ifKit;
        private CheckBox[] digiInArray = new CheckBox[16];
        private CheckBox[] digiOutArray = new CheckBox[16];
        private TextBox[] sensorInArray = new TextBox[8];

        public Form1()
        {
            InitializeComponent();
        }

        //initialize the device
        private void Form1_Load(object sender, EventArgs e)
        {
            makeDigiInArray();
            makeDigiOutArray();
            makeSensorInArray();

            label8.Visible = false;
            inputTrk.Value = 0;
            inputTrk.Enabled = false;
            inputTrk.Visible = false;
            sensitivityTxt.Text = "";
            sensitivityTxt.Visible = false;

            ratioChk.Enabled = false;
            ratioChk.Checked = false;

            try
            {
                ifKit = new InterfaceKit();

                ifKit.Attach += new AttachEventHandler(ifKit_Attach);
                //ifKit.Detach += new DetachEventHandler(ifKit_Detach);
                ifKit.Detach += new DetachEventHandler(ifKit_Detach);
                ifKit.Error += new ErrorEventHandler(ifKit_Error);

                ifKit.InputChange += new InputChangeEventHandler(ifKit_InputChange);
                ifKit.OutputChange += new OutputChangeEventHandler(ifKit_OutputChange);
                ifKit.SensorChange += new SensorChangeEventHandler(ifKit_SensorChange);

                //This assumes that if there is a command line argument, it is a serial number
                //and we try to open that specific device. Otherwise, open any device.
                String[] args = Environment.GetCommandLineArgs();
                if (args.Length > 2 && args[2].Equals("remote"))
                    ifKit.open(int.Parse(args[1]), null);
                else if (args.Length > 1)
                    ifKit.open(int.Parse(args[1]));
                else
                    ifKit.open();

            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.ToString());
            }

        }

        

        //attach event handler... here we'll display the interface kit details as well as determine how many output
        //and input fields to display as well as determine the range of values for the output simulator slider
        void ifKit_Attach(object sender, AttachEventArgs e)
        {
            InterfaceKit attached = (InterfaceKit)sender;
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versionTxt.Text = attached.Version.ToString();
            digiInNumTxt.Text = attached.inputs.Count.ToString();
            digiOutNumTxt.Text = attached.outputs.Count.ToString();
            sensorInNumTxt.Text = attached.sensors.Count.ToString();

            int i;
            for (i = 0; i < attached.inputs.Count; i++)
            {
                digiInArray[i].Visible = true;
                digiInArray[i].ForeColor = Color.Wheat;
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

                label8.Visible = true;
                sensitivityTxt.Visible = true;
                inputTrk.Visible = true;
            }
            else
            {
                label8.Visible = false;
                sensitivityTxt.Visible = false;
                inputTrk.Visible = false;
            }

            inputTrk.Enabled = true;
            inputTrk.SetRange(0, 1000);

            if(attached.sensors.Count > 0)
                inputTrk.Value = attached.sensors[0].Sensitivity;

            sensitivityTxt.Text = inputTrk.Value.ToString();

            try
            {
                ratioChk.Checked = attached.ratiometric;
                ratioChk.Enabled = true;
            }
            catch(PhidgetException){}

        }

        //ifkit detach event handler... here we display the statu, which will be false as the device is not attached. 
        //We will also clear the display fields and hide the inputs and outputs.
        void ifKit_Detach(object sender, DetachEventArgs e)
        {
            InterfaceKit detached = (InterfaceKit)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Text = "";
            serialTxt.Text = "";
            versionTxt.Text = "";
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

            label8.Visible = false;
            sensitivityTxt.Visible = false;
            inputTrk.Visible = false;
            inputTrk.Value = 0;
            inputTrk.Enabled = false;
            sensitivityTxt.Text = "";

            ratioChk.Enabled = false;
            ratioChk.Checked = false;
        }

        //error event handler
        void ifKit_Error(object sender, ErrorEventArgs e)
        {
            MessageBox.Show(e.Description);
        }

        //digital input change event handler... here we check or uncheck the corresponding input checkbox based 
        //on the index of the digital input that generated the event
        void ifKit_InputChange(object sender, InputChangeEventArgs e)
        {
            digiInArray[e.Index].Checked = e.Value;
        }

        //digital output change event handler... here we check or uncheck the corresponding output checkbox
        //based on the index of the output that generated the event
        void ifKit_OutputChange(object sender, OutputChangeEventArgs e)
        {
            digiOutArray[e.Index].Checked = e.Value;
        }

        //sensor input change event handler...Set the textbox content based on the input index that is 
        //communicating with the interface kit
        void ifKit_SensorChange(object sender, SensorChangeEventArgs e)
        {
            sensorInArray[e.Index].Text = e.Value.ToString();
        }

        //Modify the digital ouputs...Please observe the properties window in the ofrm designer for the 
        //digital output checkboxes. Each of the output checkboxes CheckedChanged events point to this one 
        //event handler, I use the sender object (the checkbox triggering the event) to get the checkbox that 
        //is changing.  Also note that there is a "tag" property that is basically user defined data associated 
        //with the control.  I used this to store the output index that the checkbox is supposed to represent 
        //for use in the following code to easily index the output we wanted to change.  Hopefully this clarifies what
        //was done in this method.
        private void CheckedChanged(object sender, EventArgs e)
        {
            CheckBox outputChk = (CheckBox)sender;

            int outputIndex = int.Parse((string)outputChk.Tag);
            try
            {
                ifKit.outputs[outputIndex] = outputChk.Checked;
            }
            catch { }
        }

        //Modify the sensitivity of the analog inputs. In other words, the amount that the inputs must change between 
        //sensorchange events.
        private void inputTrk_Scroll(object sender, EventArgs e)
        {
            try
            {
                for (int i = 0; i < ifKit.sensors.Count; i++)
                {
                    ifKit.sensors[i].Sensitivity = inputTrk.Value;
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
            try
            {
                ifKit.ratiometric = ratioChk.Checked;
            }
            catch (PhidgetException) { }
        }

        //When the application is terminating, close the Phidget.
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            ifKit.Attach -= new AttachEventHandler(ifKit_Attach);
            ifKit.Detach -= new DetachEventHandler(ifKit_Detach);
            ifKit.InputChange -= new InputChangeEventHandler(ifKit_InputChange);
            ifKit.OutputChange -= new OutputChangeEventHandler(ifKit_OutputChange);
            ifKit.SensorChange -= new SensorChangeEventHandler(ifKit_SensorChange);
            ifKit.Error -= new ErrorEventHandler(ifKit_Error);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            ifKit.close();
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

        //this method creates the analog input array (mst likelely connected to analog sensors) that corresponds 
        //to the group of textboxes which will be holding the current values of the analog inputs that are being 
        //sent to the interface kit
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