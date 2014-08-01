/* - MotorControl full -
 * This example demonstrates thebasic usage of a Phidget MotorControl.  It demonstrates the manipulation of the velocity and
 * acceleration of the motor, as well as displays the data from generated events.
 *
 * Please note that this example was designed to work with only one Phidget MotorControl connected. 
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
using Phidgets;
using Phidgets.Events;
using System.Collections;
using System.Threading;

namespace TextLCD_full
{
    public partial class Form1 : Form
    {
        private TextLCD lcd; //Declare a LCDControl object
        private ErrorEventBox errorBox;
        int[] picArray = new int[40];

        string[,] rowTextStorage;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
            rowTextStorage = new string[2, 4];
        }

        //initialize the LCD object and hook the event handlers
        private void Form1_Load(object sender, EventArgs e)
        {
            lcd = new TextLCD();

            lcd.Attach += new AttachEventHandler(lcdControl_Attach);
            lcd.Detach += new DetachEventHandler(lcdControl_Detach);
            lcd.Error += new ErrorEventHandler(lcdControl_Error);

            openCmdLine(lcd);
        }

        //When the form is being close, make sure to stop all the motors and close the Phidget.
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            lcd.Attach -= new AttachEventHandler(lcdControl_Attach);
            lcd.Detach -= new DetachEventHandler(lcdControl_Detach);
            lcd.Error -= new ErrorEventHandler(lcdControl_Error);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            lcd.close();
            lcd = null;
        }

        //LCD Attach event handler...populate the fields and controls
        void lcdControl_Attach(object sender, AttachEventArgs e)
        {
            TextLCD attached = (TextLCD)sender;
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versiontxt.Text = attached.Version.ToString();

            backlightChk.Enabled = true;
            cursorChk.Enabled = true;
            cursorBlinkChk.Enabled = true;
            contrastTrkBr.Enabled = true;

            memoryLocCmb.Enabled = true;
            customCharScreenCmb.Enabled = true;
            storeCustom.Enabled = true;

            switch (attached.ID)
            {
                case Phidget.PhidgetID.TEXTLCD_2x20:
                case Phidget.PhidgetID.TEXTLCD_2x20_w_0_8_8:
                    break;
                case Phidget.PhidgetID.TEXTLCD_2x20_w_8_8_8:
                    if (attached.Version >= 200)
                    {
                        brightnessTrkBr.Visible = true;
                        brightnessLbl.Visible = true;
                        brightnessTrkBr.Enabled = true;
                    }
                    break;
                case Phidget.PhidgetID.TEXTLCD_ADAPTER:
                    screenCmb.Enabled = true;
                    screenSizeCmb.Enabled = true;
                    initButton.Enabled = true;
                    initButton.Visible = true;
                    brightnessTrkBr.Visible = true;
                    brightnessLbl.Visible = true;
                    brightnessTrkBr.Enabled = true;
                    break;
            }

            foreach (String size in System.Enum.GetNames(typeof(TextLCD.ScreenSizes)))
            {
                screenSizeCmb.Items.Add(size);
            }

            for (int i = 0; i < attached.screens.Count; i++)
            {
                screenCmb.Items.Add(i.ToString());
                customCharScreenCmb.Items.Add(i.ToString());
            }

            screenCmb.SelectedIndex = 0;
            customCharScreenCmb.SelectedIndex = 0;
        }

        //LCD Detach event handler...Clear all the fields and disable all the controls
        void lcdControl_Detach(object sender, DetachEventArgs e)
        {
            TextLCD detached = (TextLCD)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Clear();
            serialTxt.Clear();
            versiontxt.Clear();

            screenCmb.Items.Clear();
            customCharScreenCmb.Items.Clear();
            screenSizeCmb.Items.Clear();

            screenCmb.Enabled = false;
            backlightChk.Enabled = false;
            cursorChk.Enabled = false;
            cursorBlinkChk.Enabled = false;
            contrastTrkBr.Enabled = false;

            memoryLocCmb.Enabled = false;
            customCharScreenCmb.Enabled = false;
            storeCustom.Enabled = false;

            screenSizeCmb.Enabled = false;
            initButton.Enabled = false;
            initButton.Visible = false;

            brightnessTrkBr.Visible = false;
            brightnessLbl.Visible = false;
            brightnessTrkBr.Enabled = false;

            row0.Enabled = false;
            row1.Enabled = false;
            row2.Enabled = false;
            row3.Enabled = false;

            cursorChk.Checked = false;
            cursorBlinkChk.Checked = false;
            backlightChk.Checked = false;
            brightnessTrkBr.Value = 0;
            contrastTrkBr.Value = 0;

            row0.Clear();
            row1.Clear();
            row2.Clear();
            row3.Clear();

            rowTextStorage[0, 0] = "";
            rowTextStorage[0, 1] = "";
            rowTextStorage[0, 2] = "";
            rowTextStorage[0, 3] = "";

            rowTextStorage[1, 0] = "";
            rowTextStorage[1, 1] = "";
            rowTextStorage[1, 2] = "";
            rowTextStorage[1, 3] = "";
        }

        //error handler...display the error description in a messagebox
        void lcdControl_Error(object sender, ErrorEventArgs e)
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

        private void screenCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (lcd.ID)
            {
                case Phidget.PhidgetID.TEXTLCD_2x20:
                case Phidget.PhidgetID.TEXTLCD_2x20_w_0_8_8:
                    backlightChk.Checked = true;
                    break;
                case Phidget.PhidgetID.TEXTLCD_2x20_w_8_8_8:
                    if (lcd.Version < 200)
                        backlightChk.Checked = true;
                    break;
                case Phidget.PhidgetID.TEXTLCD_ADAPTER:
                    backlightChk.Checked = lcd.screens[screenCmb.SelectedIndex].Backlight;
                    break;
            }

            try
            {
                brightnessTrkBr.Value = lcd.screens[screenCmb.SelectedIndex].Brightness;
            }
            catch 
            { 
                brightnessTrkBr.Value = 0;
            }

            try
            {
                contrastTrkBr.Value = lcd.screens[screenCmb.SelectedIndex].Contrast;
            }
            catch
            {
                contrastTrkBr.Value = 125;
            }

            try
            {
                cursorChk.Checked = lcd.screens[screenCmb.SelectedIndex].Cursor;
            }
            catch
            {
                cursorChk.Checked = false;
            }

            try
            {
                cursorBlinkChk.Checked = lcd.screens[screenCmb.SelectedIndex].CursorBlink;
            }
            catch
            {
                cursorBlinkChk.Checked = false;
            }
            try
            {
                screenSizeCmb.SelectedItem = lcd.screens[screenCmb.SelectedIndex].ScreenSize.ToString();
            }
            catch
            {
                screenSizeCmb.SelectedItem = TextLCD.ScreenSizes.UNKNOWN.ToString();
            }

            //restore text
            row0.Text = rowTextStorage[screenCmb.SelectedIndex, 0];
            row1.Text = rowTextStorage[screenCmb.SelectedIndex, 1];
            row2.Text = rowTextStorage[screenCmb.SelectedIndex, 2];
            row3.Text = rowTextStorage[screenCmb.SelectedIndex, 3];
        }

        private void screenSizeCmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextLCD.ScreenSizes oldSize = TextLCD.ScreenSizes.UNKNOWN;
            try
            {
                oldSize = lcd.screens[screenCmb.SelectedIndex].ScreenSize;
            }
            catch{}
            TextLCD.ScreenSizes size = (TextLCD.ScreenSizes)Enum.Parse(typeof(TextLCD.ScreenSizes), screenSizeCmb.SelectedItem.ToString());

            if (oldSize != size)
            {
                rowTextStorage[screenCmb.SelectedIndex, 0] = "";
                rowTextStorage[screenCmb.SelectedIndex, 1] = "";
                rowTextStorage[screenCmb.SelectedIndex, 2] = "";
                rowTextStorage[screenCmb.SelectedIndex, 3] = "";
            }

            try
            {
                lcd.screens[screenCmb.SelectedIndex].ScreenSize = size;
            }
            catch { }
            setRowEnables();
        }

        private Boolean initializing = false;
        private void initButton_Click_1(object sender, EventArgs e)
        {
            try
            {
                initializing = true;
                cursorBlinkChk.Checked = false;
                cursorChk.Checked = false;
                rowTextStorage[screenCmb.SelectedIndex, 0] = "";
                rowTextStorage[screenCmb.SelectedIndex, 1] = "";
                rowTextStorage[screenCmb.SelectedIndex, 2] = "";
                rowTextStorage[screenCmb.SelectedIndex, 3] = "";
                row0.Clear();
                row1.Clear();
                row2.Clear();
                row3.Clear();
                initializing = false;
                lcd.screens[screenCmb.SelectedIndex].initialize();
            }
            catch { }
        }

        private void row_TextChanged(object sender, EventArgs e)
        {
            if (!initializing)
            {
                int rowIndex = int.Parse(((TextBox)sender).Tag.ToString());
                string text = ((TextBox)sender).Text;

                try
                {
                    lcd.screens[screenCmb.SelectedIndex].rows[rowIndex].DisplayString = parseTxt(text);
                    rowTextStorage[screenCmb.SelectedIndex, rowIndex] = text;
                }
                catch { }
            }
        }

        private void backlightChk_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                lcd.screens[screenCmb.SelectedIndex].Backlight = backlightChk.Checked;
            }
            catch { }
        }

        private void cursorChk_CheckedChanged(object sender, EventArgs e)
        {
            if (!initializing)
            {
                try
                {
                    lcd.screens[screenCmb.SelectedIndex].Cursor = cursorChk.Checked;
                }
                catch { }
            }
        }

        private void cursorBlinkChk_CheckedChanged(object sender, EventArgs e)
        {
            if (!initializing)
            {
                try
                {
                    lcd.screens[screenCmb.SelectedIndex].CursorBlink = cursorBlinkChk.Checked;
                }
                catch { }
            }
        }

        private void contrastTrkBr_Scroll(object sender, EventArgs e)
        {
            try
            {
                lcd.screens[screenCmb.SelectedIndex].Contrast = contrastTrkBr.Value;
            }
            catch { }
        }

        private void brightnessTrkBr_Scroll(object sender, EventArgs e)
        {
            try
            {
                lcd.screens[screenCmb.SelectedIndex].Brightness = brightnessTrkBr.Value;
            }
            catch { }
        }

        void setRowEnables()
        {
            TextLCD.ScreenSizes size = (TextLCD.ScreenSizes)Enum.Parse(typeof(TextLCD.ScreenSizes), screenSizeCmb.SelectedItem.ToString());
            switch (size)
            {
                case TextLCD.ScreenSizes._1x8:
                    row0.Enabled = true;
                    row1.Enabled = false;
                    row2.Enabled = false;
                    row3.Enabled = false;
                    break;
                case TextLCD.ScreenSizes._2x8: // 8x2
                    row0.Enabled = true;
                    row1.Enabled = true;
                    row2.Enabled = false;
                    row3.Enabled = false;
                    break;
                case TextLCD.ScreenSizes._1x16: // 16x1
                    row0.Enabled = true;
                    row1.Enabled = false;
                    row2.Enabled = false;
                    row3.Enabled = false;
                    break;
                case TextLCD.ScreenSizes._2x16: // 16x2
                    row0.Enabled = true;
                    row1.Enabled = true;
                    row2.Enabled = false;
                    row3.Enabled = false;
                    break;
                case TextLCD.ScreenSizes._4x16: // 16x4
                    row0.Enabled = true;
                    row1.Enabled = true;
                    row2.Enabled = true;
                    row3.Enabled = true;
                    break;
                case TextLCD.ScreenSizes._2x20: // 20x2
                    row0.Enabled = true;
                    row1.Enabled = true;
                    row2.Enabled = false;
                    row3.Enabled = false;
                    break;
                case TextLCD.ScreenSizes._4x20: // 20x4
                    row0.Enabled = true;
                    row1.Enabled = true;
                    row2.Enabled = true;
                    row3.Enabled = true;
                    break;
                case TextLCD.ScreenSizes._2x24: // 24x2
                    row0.Enabled = true;
                    row1.Enabled = true;
                    row2.Enabled = false;
                    row3.Enabled = false;
                    break;
                case TextLCD.ScreenSizes._1x40: // 40x1
                    row0.Enabled = true;
                    row1.Enabled = false;
                    row2.Enabled = false;
                    row3.Enabled = false;
                    break;
                case TextLCD.ScreenSizes._2x40: // 40x2
                    row0.Enabled = true;
                    row1.Enabled = true;
                    row2.Enabled = false;
                    row3.Enabled = false;
                    break;
                case TextLCD.ScreenSizes._4x40: // 40x4
                    row0.Enabled = true;
                    row1.Enabled = true;
                    row2.Enabled = true;
                    row3.Enabled = true;
                    break;
                default:
                    row0.Enabled = false;
                    row1.Enabled = false;
                    row2.Enabled = false;
                    row3.Enabled = false;
                    break;
            }
        }

        //A method used to parse the input string for custom character memory locations using escape character '\' followed by the memory location
        string parseTxt(string displayString)
        {
            string returnString = "";
            int memLoc = 0;
            for (int i = 0; i < displayString.Length; i++)
            {
                if (displayString[i] == 0x5C)
                {
                    memLoc = Convert.ToInt32(displayString.Substring(i + 1, 1));
                    if ((memLoc >= 0) && (memLoc < 8))
                    {
                        returnString += (char)(memLoc+8);
                        i++;
                    }
                }
                else
                    returnString += displayString[i];
            }
            return returnString;
        }

        private void switchPixel(PictureBox sender)
        {
            int temp = System.Convert.ToInt32((sender.Name.Remove(0, 10)));

            if (sender.BackColor == Color.Black)
            {
                sender.BackColor = Color.White;
                picArray[temp] = 0;
            }
            else if (sender.BackColor == Color.White)
            {
                sender.BackColor = Color.Black;
                picArray[temp] = 1;
            }

            previewPic.Refresh();
        }

        private void previewPic_Paint(object sender, PaintEventArgs e)
        {
            int row = 0, col = 0;
            Graphics g = e.Graphics;
            g.Clear(Color.FromArgb(48, 48, 48));
            SolidBrush b = new SolidBrush(Color.FromArgb(197, 249, 234));
            col = 4;
            for (int i = 0; i < 40; i++)
            {
                if (picArray[i] == 1)
                {
                    //Draw white square
                    g.FillRectangle(b, col * 4 + 2, row * 4 + 2, 3, 3);
                }
                col--;
                if (col == -1)
                {
                    row++;
                    col = 4;
                }
            }
        }

        private void pictureBox35_MouseDown(object sender, MouseEventArgs e)
        {
            switchPixel((PictureBox)sender);
        }

        private void enterCustom_Click(object sender, EventArgs e)
        {
            int ValueUp = 0;
            int ValueDown = 0;
            for (int i = 0; i < 20; i++)
            {
                if (picArray[i] == 1)
                    ValueUp += (int)(Math.Pow(2, i));
            }
            for (int i = 20; i < 40; i++)
            {
                if (picArray[i] == 1)
                    ValueDown += (int)(Math.Pow(2, (i - 20)));
            }

            textBox10.Text = ValueUp.ToString();
            textBox9.Text = ValueDown.ToString();

            lcd.screens[customCharScreenCmb.SelectedIndex].
                customCharacters[memoryLocCmb.SelectedIndex].setCustomCharacter(ValueUp, ValueDown);
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