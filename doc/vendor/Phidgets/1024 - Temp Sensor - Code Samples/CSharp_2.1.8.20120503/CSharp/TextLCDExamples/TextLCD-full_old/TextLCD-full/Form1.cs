/* - TextLCD full -
 * This example creates a nice gui to display the connected TextLCD's details as well as provides fields 
 * and checkboxes to manipulate all of the available controls and methods for a TextLCD such as backligh, 
 * cursor, cursor blink, contrast, and a simulation of the custom characters ability of the TextLCD api.
 * 
 * NOTE: You can only create and display a maximum of 8 custom characters at a time on the TextLCD.  
 * The method to create a custom character is not simply straight bit setting.  There is a web tool 
 * located in the documentation section of the website that one can refer to in order to generate the
 * int values to generate a custom character
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
using Phidgets; //Needed for the TextLCD class and the phidget exception class
using Phidgets.Events; //Needed for the phidget event handling classes

namespace TextLCD_full
{
    public partial class Form1 : Form
    {
        private TextLCD lcd; //Declare a textLCD object
        private ErrorEventBox errorBox;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
        }

        //initialize our TextLCD Phidget and hook the event handlers
        private void Form1_Load(object sender, EventArgs e)
        {
            lcd = new TextLCD();

            lcd.Attach += new AttachEventHandler(lcd_Attach);
            lcd.Detach += new DetachEventHandler(lcd_Detach);
            lcd.Error += new ErrorEventHandler(lcd_Error);

            openCmdLine(lcd);

            dispText1.Enabled = false;
            dispText2.Enabled = false;
            clearBtn.Enabled = false;
            backlightChk.Enabled = false;
            cursorChk.Enabled = false;
            contrastTrkBr.Enabled = false;
            cursorBlinkChk.Enabled = false;
            customChrChk.Enabled = false;
            brightnessTrkBr.Enabled = false;
        }

        //attach event handler...we will display the attach status and the attached TextLCD device's details
        //We will also enable the fields used to manipulate the TextLCD as well as do some initializing of
        //ranges and maximum values for some of these fields
        void lcd_Attach(object sender, AttachEventArgs e)
        {
            TextLCD attached = (TextLCD)sender;
            attachedText.Text = attached.Attached.ToString();
            nameText.Text = attached.Name;
            serialText.Text = attached.SerialNumber.ToString();
            versionText.Text = attached.Version.ToString();
            dispText1.Enabled = true;
            dispText1.MaxLength = lcd.rows[0].MaximumLength;
            dispText2.Enabled = true;
            dispText2.MaxLength = lcd.rows[1].MaximumLength;
            clearBtn.Enabled = true;
            backlightChk.Enabled = true;
            cursorChk.Enabled = true;
            contrastTrkBr.Enabled = true;
            cursorBlinkChk.Enabled = true;
            customChrChk.Enabled = true;
            contrastTrkBr.Value = 130;

            if(attached.Version >= 200 && attached.ID == Phidget.PhidgetID.TEXTLCD_2x20_w_8_8_8)
                backlightChk.Checked = false;
            else
                backlightChk.Checked = true;
            cursorBlinkChk.Checked = false;
            cursorChk.Checked = false;
            customChrChk.Checked = false;

            try
            {
                brightnessTrkBr.Visible = true;
                brightnessLbl.Visible = true;
                brightnessTrkBr.Enabled = true;
                brightnessTrkBr.Value = attached.Brightness;
            }
            catch (PhidgetException ex)
            {
                if (ex.Type == PhidgetException.ErrorType.PHIDGET_ERR_UNSUPPORTED)
                {
                    brightnessTrkBr.Visible = false;
                    brightnessLbl.Visible = false;
                }
            }
        }

        //detach event handler.... we will display the device attach status and clear all the other fields
        void lcd_Detach(object sender, DetachEventArgs e)
        {
            TextLCD detached = (TextLCD)sender;
            attachedText.Text = detached.Attached.ToString();
            nameText.Text = "";
            serialText.Text = "";
            versionText.Text = "";
            dispText1.Enabled = false;
            dispText2.Enabled = false;
            clearBtn.Enabled = false;
            backlightChk.Enabled = false;
            cursorChk.Enabled = false;
            contrastTrkBr.Enabled = false;
            cursorBlinkChk.Enabled = false;
            customChrChk.Enabled = false;
            brightnessTrkBr.Enabled = false;
        }

        //Error event handler..we will simply display the error details text in a popup message box
        void lcd_Error(object sender, ErrorEventArgs e)
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

        //line 1 textChanged event handler...when the user is entering text, pass it on to the textLCD to be displayed
        private void dispText1_TextChanged(object sender, EventArgs e)
        {
            TextBox tb = (TextBox)sender;
            lcd.rows[0].DisplayString = tb.Text;
        }

        //line 2 textChanged event handler...when the user is entering text, pass it on to the textLCD to be displayed
        private void dispText2_TextChanged(object sender, EventArgs e)
        {
            TextBox tb = (TextBox)sender;
            lcd.rows[1].DisplayString = tb.Text;
        }

        //If the clear button is clicked, we want to clear the fields as well as clear the TextLCD screen
        private void clearBtn_Click(object sender, EventArgs e)
        {
            dispText1.Clear();
            dispText2.Clear();
            lcd.rows[0].DisplayString = "";
            lcd.rows[1].DisplayString = "";
        }

        //Enable or disable the backlight by clicking on the checkbox
        private void backlightChk_CheckedChanged(object sender, EventArgs e)
        {
            lcd.Backlight = backlightChk.Checked;
        }

        //enable or disable the cursor by clicking on the checkbox
        private void cursorChk_CheckedChanged(object sender, EventArgs e)
        {
            lcd.Cursor = cursorChk.Checked;
        }

        //enable or disable a blinking cursor by clicking on the checkbox
        private void cursorBlinkChk_CheckedChanged(object sender, EventArgs e)
        {
            lcd.CursorBlink = cursorBlinkChk.Checked;
        }

        //display ou simulation of the custom characters when the checkbox is clicked
        private void customChrChk_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chk = (CheckBox)sender;
            if (chk.Checked)
            {
                /*
                lcd.rows[0].DisplayString = "Custom..";
                lcd.customCharacters[0].setCustomCharacter(949247, 536);
                lcd.customCharacters[1].setCustomCharacter(1015791, 17180);
                lcd.customCharacters[2].setCustomCharacter(1048039, 549790);
                lcd.customCharacters[3].setCustomCharacter(1031395, 816095);
                lcd.customCharacters[4].setCustomCharacter(498785, 949247);
                lcd.customCharacters[5].setCustomCharacter(232480, 1015791);
                lcd.customCharacters[6].setCustomCharacter(99328, 1048039);
                lcd.rows[1].DisplayString = lcd.customCharacters[0].StringCode +
                                            lcd.customCharacters[1].StringCode +
                                            lcd.customCharacters[2].StringCode +
                                            lcd.customCharacters[3].StringCode +
                                            lcd.customCharacters[4].StringCode +
                                            lcd.customCharacters[5].StringCode +
                                            lcd.customCharacters[6].StringCode;
                 */

                lcd.customCharacters[0].setCustomCharacter(137248, 540936);
                lcd.customCharacters[1].setCustomCharacter(558, 10570);
                lcd.customCharacters[2].setCustomCharacter(143872, 33858);
                lcd.customCharacters[3].setCustomCharacter(139536, 38);
                lcd.customCharacters[4].setCustomCharacter(14880, 14880);
                lcd.customCharacters[5].setCustomCharacter(133185, 524);
                lcd.customCharacters[6].setCustomCharacter(99360, 1031399);
                lcd.customCharacters[7].setCustomCharacter(803328, 1047452);

                lcd.rows[0].DisplayString = "  Custom      " + lcd.customCharacters[0].StringCode +
                                            lcd.customCharacters[1].StringCode +
                                            lcd.customCharacters[2].StringCode;
                lcd.rows[1].DisplayString = "Characters!  " + lcd.customCharacters[7].StringCode + 
                                            lcd.customCharacters[3].StringCode +
                                            lcd.customCharacters[4].StringCode +
                                            lcd.customCharacters[5].StringCode +
                                            lcd.customCharacters[6].StringCode;
            }
            else
            {
                lcd.rows[0].DisplayString = "";
                lcd.rows[1].DisplayString = "";
            }
        }

        //adjust the contast of the screen on the textLCD based on the value selected on the slider (100 to 0)
        private void contrastTrkBr_Scroll(object sender, EventArgs e)
        {
            lcd.Contrast = contrastTrkBr.Value;
        }

        private void brightnessTrkBr_Scroll(object sender, EventArgs e)
        {
            lcd.Brightness = brightnessTrkBr.Value;
        }

        //When the application is terminating, close the Phidget.
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            lcd.Attach -= new AttachEventHandler(lcd_Attach);
            lcd.Detach -= new DetachEventHandler(lcd_Detach);
            lcd.Error -= new ErrorEventHandler(lcd_Error);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            lcd.close();
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