/* - InterfaceKit full -
 * In this example we display the interface kit details, including the number of inputs and outputs it allows,
 * and displays the values of the inputs and outputs.
 *
 * Please note that this example was designed to work with only one Phidget InterfaceKit connected. 
 * Using two Phidgets at the same time concurrently would require separate Phidget objects.
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
using Phidgets;         //needed for the interfacekit class and the phidget exception class
using Phidgets.Events;  //needed for the event handling classes

namespace InterfaceKit_full
{
    public partial class Form1 : Form
    {
        private InterfaceKit ifKit;
        private ErrorEventBox errorBox;
        private CheckBox[] digiInArray = new CheckBox[16];
        private CheckBox[] digiOutArray = new CheckBox[16];
        private CheckBox[] digiOutDispArray = new CheckBox[16];
        private TextBox[] sensorInArray = new TextBox[8];

        AdvancedSensorForm advSensorForm;


        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
            //Phidget.enableLogging(Phidget.LogLevel.PHIDGET_LOG_INFO, null);
        }

        //Initialize the device
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
            ratioChk.Visible = false;
            sensorsButton.Visible = false;

            try
            {
                ifKit = new InterfaceKit();

                ifKit.Attach += new AttachEventHandler(ifKit_Attach);
                ifKit.Detach += new DetachEventHandler(ifKit_Detach);
                ifKit.Error += new ErrorEventHandler(ifKit_Error);

                ifKit.InputChange += new InputChangeEventHandler(ifKit_InputChange);
                ifKit.OutputChange += new OutputChangeEventHandler(ifKit_OutputChange);
                ifKit.SensorChange += new SensorChangeEventHandler(ifKit_SensorChange);

                //Open the Phidget using the command line arguments
                openCmdLine(ifKit);

            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.ToString());
            }

        }

        //IfKit attach event handler
        //Here we'll display the interface kit details as well as determine how many output and input
        //fields to display as well as determine the range of values for input sensitivity slider
        void ifKit_Attach(object sender, AttachEventArgs e)
        {
            InterfaceKit ifKit = (InterfaceKit)sender;
            attachedTxt.Text = ifKit.Attached.ToString();
            nameTxt.Text = ifKit.Name;
            serialTxt.Text = ifKit.SerialNumber.ToString();
            versionTxt.Text = ifKit.Version.ToString();
            digiInNumTxt.Text = ifKit.inputs.Count.ToString();
            digiOutNumTxt.Text = ifKit.outputs.Count.ToString();
            sensorInNumTxt.Text = ifKit.sensors.Count.ToString();

            int i;
            for (i = 0; i < ifKit.inputs.Count; i++)
            {
                digiInArray[i].Visible = true;
                digiInArray[i].ForeColor = Color.Wheat;
                ((Label)digitalInputsGroupBox.Controls["digitalInputLabel" + i.ToString()]).Visible = true;
            }

            for (i = 0; i < ifKit.outputs.Count; i++)
            {
                digiOutArray[i].Visible = true;
                //digiOutArray[i].Checked = ifKit.outputs[i];
                digiOutArray[i].Enabled = true;
                digiOutDispArray[i].Visible = true;

                ((Label)digitalOutputsGroupBox.Controls["digitalOutputLabel" + i.ToString()]).Visible = true;
            }
            
            if (ifKit.sensors.Count > 0)
            {
                for (i = 0; i < ifKit.sensors.Count; i++)
                {
                    sensorInArray[i].Visible = true;
                    ((Label)analogInputsGroupBox.Controls["analogInputLabel" + i.ToString()]).Visible = true;
                    if (ifKit.ID == Phidget.PhidgetID.INTERFACEKIT_2_2_2
                        || ifKit.ID == Phidget.PhidgetID.INTERFACEKIT_8_8_8
                        || ifKit.ID == Phidget.PhidgetID.INTERFACEKIT_8_8_8_w_LCD)
                        ifKit.sensors[i].DataRate = 32;
                }

                label8.Visible = true;
                sensitivityTxt.Visible = true;
                inputTrk.Visible = true;
                ratioChk.Visible = true;

                // Blacklist
                if ((ifKit.Name != "Phidget Touch Slider") && (ifKit.Name != "Phidget Touch Rotation"))
                    sensorsButton.Visible = true;
                else
                    sensorsButton.Visible = false;
            }
            else
            {
                label8.Visible = false;
                sensitivityTxt.Visible = false;
                inputTrk.Visible = false;
                ratioChk.Visible = false;
            }

            inputTrk.Enabled = true;
            try
            {
                if (ifKit.sensors.Count > 0)
                    inputTrk.Value = ifKit.sensors[0].Sensitivity;

                sensitivityTxt.Text = inputTrk.Value.ToString();
            }
            catch { }

            try
            {
                ratioChk.Enabled = true;
                ratioChk.Checked = ifKit.ratiometric;
            }
            catch(PhidgetException pe)
            {
                if (pe.Type == PhidgetException.ErrorType.PHIDGET_ERR_UNSUPPORTED)
                {
                    ratioChk.Enabled = false;
                    ratioChk.Visible = false;
                }
            }

        }

        //Ifkit detach event handler
        //Here we display the attached status, which will be false as the device is disconnected. 
        //We will also clear the display fields and hide the inputs and outputs.
        void ifKit_Detach(object sender, DetachEventArgs e)
        {
            InterfaceKit ifKit = (InterfaceKit)sender;
            attachedTxt.Text = ifKit.Attached.ToString();
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
                ((Label)digitalInputsGroupBox.Controls["digitalInputLabel" + i.ToString()]).Visible = false;
            }
            for (i = 0; i < 16; i++)
            {
                digiOutArray[i].Enabled = false;
                digiOutArray[i].Visible = false;
                digiOutDispArray[i].Visible = false;

                ((Label)digitalOutputsGroupBox.Controls["digitalOutputLabel" + i.ToString()]).Visible = false; 
                digiOutDispArray[i].Checked = false;
            }
            for (i = 0; i < 8; i++)
            {
                sensorInArray[i].Visible = false;
                sensorInArray[i].Text = "";
                ((Label)analogInputsGroupBox.Controls["analogInputLabel" + i.ToString()]).Visible = false;
            }

            label8.Visible = false;
            sensitivityTxt.Visible = false;
            inputTrk.Visible = false;
            inputTrk.Value = 0;
            inputTrk.Enabled = false;
            sensitivityTxt.Text = "";

            ratioChk.Enabled = false;
            ratioChk.Checked = false;
            ratioChk.Visible = false;
            sensorsButton.Visible = false;
            if ((advSensorForm!=null)&&(advSensorForm.IsDisposed == false))
                advSensorForm.Close();
        }

        //Error event handler
        void ifKit_Error(object sender, ErrorEventArgs e)
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
                case PhidgetException.ErrorType.PHIDGET_ERREVENT_OVERRUN:
                    //Ignore this error - it's not useful in this context.
                    return;
                default:
                    if (!errorBox.Visible)
                        errorBox.Show();
                    break;
            }
            errorBox.addMessage(DateTime.Now.ToLongDateString() + " " + DateTime.Now.ToLongTimeString() + ": " + e.Description);
        }

        //Digital input change event handler
        //Here we check or uncheck the corresponding input checkbox based 
        //on the index of the digital input that generated the event
        void ifKit_InputChange(object sender, InputChangeEventArgs e)
        {
            digiInArray[e.Index].Checked = e.Value;
        }

        //Digital output change event handler
        //Here we check or uncheck the corresponding output checkbox
        //based on the index of the output that generated the event
        void ifKit_OutputChange(object sender, OutputChangeEventArgs e)
        {
            digiOutDispArray[e.Index].Checked = e.Value;
        }

        //Sensor input change event handler
        //Set the textbox content based on the input index that is communicating
        //with the interface kit
        void ifKit_SensorChange(object sender, SensorChangeEventArgs e)
        {
            sensorInArray[e.Index].Text = e.Value.ToString();
            
            if (advSensorForm != null)
                advSensorForm.SetValue(e.Index, e.Value);
        }

        //Modify the digital ouputs
        //From the properties window in the form designer, each of the CheckedChanged events for output 
        //checkboxes point to this event handler. The "tag" property for each check box stores user defined 
        //data associated with the control and has been used here to relate the box with an output index.
        private void CheckedChanged(object sender, EventArgs e)
        {
            CheckBox outputChk = (CheckBox)sender;
            
            int outputIndex = int.Parse((string)outputChk.Tag);

            ifKit.outputs[outputIndex] = outputChk.Checked;
        }

        //Modify the sensitivity of the analog inputs. In other words, the amount that the inputs
        //must change before triggering sensorchange events.
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

        //This method creates the digital input array that corresponds to the group of checkboxes
        //we are using to represent the state of the digital inputs as reported on the interface kit.
        //It will also initialize the visibiity of the check boxes and labeling to false.
        private void makeDigiInArray()
        {
            for (int i = 0; i < 16; i++)
            {
                ((Label)digitalInputsGroupBox.Controls["digitalInputLabel" + i.ToString()]).Visible = false;
                digiInArray[i] = (CheckBox)digitalInputsGroupBox.Controls["checkBox" + (i + 1).ToString()];
                digiInArray[i].Visible = false;
            }
        }

        //This method will associate the digiOutArray with check boxes that control the state of the
        //digital outputs on the interface kit. It will also associate the digiOutDispArray with check
        //boxes that represent the state of the outputs as reported on the interfacekit, and initialize 
        //the visibility of the check boxes and labeling to false.
        private void makeDigiOutArray()
        {
            for (int i = 0; i < 16; i++)
            {
                ((Label)digitalOutputsGroupBox.Controls["digitalOutputLabel" + i.ToString()]).Visible = false;
                digiOutArray[i] = (CheckBox)digitalOutputsGroupBox.Controls["checkBox" + (i + 17).ToString()];
                digiOutArray[i].Visible = false;
                digiOutDispArray[i] = (CheckBox)digitalOutputsGroupBox.Controls["checkBoxReport" + i.ToString()];
                digiOutDispArray[i].Visible = false;
            }
        }

        //This method will associate the sensorInArray with text boxes that display the current values 
        //of the analog inputs on the interface kit. It will also initialize the visibility of the
        //text boxes and analog input labeling to false.
        private void makeSensorInArray()
        {
            for (int i = 0; i < 8; i++)
            {
                ((Label)analogInputsGroupBox.Controls["analogInputLabel" + i.ToString()]).Visible = false;
                sensorInArray[i] = (TextBox)analogInputsGroupBox.Controls["textBox" + (i + 1).ToString()];
                sensorInArray[i].Visible = false;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if ((advSensorForm == null) || (advSensorForm.IsDisposed))
            {
                advSensorForm = new AdvancedSensorForm();
                advSensorForm.Show();
                advSensorForm.SetSensorCount(ifKit.sensors.Count);
                for (int i = 0; i < ifKit.sensors.Count; i++)
                {
                    advSensorForm.SetValue(i, Convert.ToInt32(sensorInArray[i].Text));
                }
            }
            advSensorForm.Focus();

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