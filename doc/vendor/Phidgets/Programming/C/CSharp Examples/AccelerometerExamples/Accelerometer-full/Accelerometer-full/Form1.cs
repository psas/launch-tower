/* - Accelerometer full -
 * This example simply displays the accelerometer info if it is attached and displays the acceleration data 
 * for each axis as it is changing in pretty much raw form.  It also allows for modifying the sensitivity of 
 * each axis that is availabl on the attached accelerometer.

 * Please note that this example was designed to work with only one Phidget Accelerometer connected. For an 
 * example showing how to use two Phidgets of the same time concurrently, please see the Servo-multi example in the Servo Examples.

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
using Phidgets;  //needed for the accelerometer class and the phidgets exception class
using Phidgets.Events; //needed for the phidget event handling

namespace Accelerometer_full
{
    public partial class Form1 : Form
    {
        private Accelerometer accel;
        private ErrorEventBox errorBox;
        private BufferedGraphicsContext accelGraphicsContext;
        private BufferedGraphics accelGraphicsBuffer;
        private Bitmap accelDrawingSurface;
        private float xCenter, yCenter, xOld, yOld;
        private double[] xFilt, yFilt, zFilt;
        private double xOut, yOut, zOut;
        private Rectangle circleRectangle, boundsRectangle;
        private Pen xyAxisPen, circlePen;
        private int circleDiameter, circleRadius;

        public Form1()
        {
            InitializeComponent();
            errorBox = new ErrorEventBox();
        }

        //initalize the phidget device and link the event handler code
        private void Form1_Load(object sender, EventArgs e)
        {
            //initialize some of the form stuff
            axis1AccelTxt.Clear();
            axis1SensitivityScrl.Enabled = false;
            axis2AccelTxt.Clear();
            axis2SensitivityScrl.Enabled = false;
            axis3AccelTxt.Clear();
            axis3SensitivityScrl.Enabled = false;

            axis1SensitivityScrl.Minimum = 0;
            axis1SensitivityScrl.Maximum = 100;
            axis1SensitivityScrl.Value = 0;
            label14.Text = "(0.0)";
            axis2SensitivityScrl.Minimum = 0;
            axis2SensitivityScrl.Maximum = 100;
            axis2SensitivityScrl.Value = 0;
            label15.Text = "(0.0)";
            axis3SensitivityScrl.Minimum = 0;
            axis3SensitivityScrl.Maximum = 100;
            axis3SensitivityScrl.Value = 0;
            label16.Text = "(0.0)";

            //initialize the low pass filtering arrays
            xFilt = new double[7];
            yFilt = new double[7];
            zFilt = new double[7];

            //initialize our graphical representation of the acceleration data
            accelDrawingSurface = new Bitmap(panel1.ClientRectangle.Width, panel1.ClientRectangle.Height, System.Drawing.Imaging.PixelFormat.Format24bppRgb);

            boundsRectangle = new Rectangle(0, 0, accelDrawingSurface.Width, accelDrawingSurface.Height);
            boundsRectangle.Inflate(-1, -1);

            xCenter = boundsRectangle.Width / 2;
            yCenter = boundsRectangle.Height / 2;

            xOld = xCenter;
            yOld = yCenter;

            xyAxisPen = new Pen(Color.Black, 2);
            circlePen = new Pen(Color.DarkBlue, 2);

            circleDiameter = accelDrawingSurface.Width / 2;
            circleRadius = circleDiameter / 2;

            circleRectangle = new Rectangle((int)xCenter - circleRadius, (int)yCenter - circleRadius, circleDiameter, circleDiameter);

            //setup the accelerometer object and open it for attachements
            accel = new Accelerometer();

            accel.Attach += new AttachEventHandler(accel_Attach);
            accel.Detach += new DetachEventHandler(accel_Detach);
            accel.Error += new ErrorEventHandler(accel_Error);

            accel.AccelerationChange += new AccelerationChangeEventHandler(accel_AccelerationChange);

            openCmdLine(accel);
        }

        //accelerometer attach event handler
        void accel_Attach(object sender, AttachEventArgs e)
        {
            Accelerometer attached = (Accelerometer)sender;
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versionTxt.Text = attached.Version.ToString();
            axesTxt.Text = attached.axes.Count.ToString();
            rangeTxt.Text = attached.axes[0].AccelerationMin == -attached.axes[0].AccelerationMax ?
                "±" + attached.axes[0].AccelerationMax.ToString() + "g" :
                attached.axes[0].AccelerationMin.ToString() + "g to " + attached.axes[0].AccelerationMax.ToString() + "g";

            try
            {
                attached.axes[0].Sensitivity = 0;
                attached.axes[1].Sensitivity = 0;
                if(attached.axes.Count == 3)
                    attached.axes[2].Sensitivity = 0;
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }

            axis1SensitivityScrl.Enabled = true;
            axis2SensitivityScrl.Enabled = true;
            if(attached.axes.Count == 3)
                axis3SensitivityScrl.Enabled = true;
        }

        //accelerometer detach event handler
        void accel_Detach(object sender, DetachEventArgs e)
        {
            Accelerometer detached = (Accelerometer)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Text = "";
            serialTxt.Text = "";
            versionTxt.Text = "";
            axesTxt.Text = "";
            rangeTxt.Text = "";

            axis1AccelTxt.Clear();
            axis2AccelTxt.Clear();
            axis3AccelTxt.Clear();

            axis1SensitivityScrl.Enabled = false;
            axis2SensitivityScrl.Enabled = false;
            axis3SensitivityScrl.Enabled = false;
        }

        //accelerometer error event handler
        void accel_Error(object sender, ErrorEventArgs e)
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

        //acceleration change event handler
        void accel_AccelerationChange(object sender, AccelerationChangeEventArgs e)
        {
            //get our graphics buffer going so we can draw to our panel
            accelGraphicsContext = new BufferedGraphicsContext();
            accelGraphicsBuffer = accelGraphicsContext.Allocate(Graphics.FromImage(accelDrawingSurface), boundsRectangle);
            accelGraphicsBuffer.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;
            accelGraphicsBuffer.Graphics.Clear(SystemColors.Control);

            Accelerometer attached = (Accelerometer)sender;

            //in this switch statement we will do a bit of simple low pass filtering to smooth out the motion of the graphical representation of the
            //acceleration data.  We will also write the raw data to the textbox for the appropriate axis.
            int i = 0;
            try
            {
                switch (e.Index)
                {
                    case 0:
                        xOut = 0;
                        xFilt[6] = e.Acceleration;
                        for (i = 0; i < 6; i++)
                        {
                            xFilt[i] = xFilt[i + 1];
                            xOut = xOut + xFilt[i];
                        }
                        xOut = xOut / 6;
                        axis1AccelTxt.Text = e.Acceleration.ToString();
                        break;
                    case 1:
                        yOut = 0;
                        yFilt[6] = e.Acceleration;
                        for (i = 0; i < 6; i++)
                        {
                            yFilt[i] = yFilt[i + 1];
                            yOut = yOut + yFilt[i];
                        }
                        yOut = yOut / 6;
                        axis2AccelTxt.Text = e.Acceleration.ToString();
                        break;
                    case 2:
                        zOut = 0;
                        zFilt[6] = e.Acceleration;
                        for (i = 0; i < 6; i++)
                        {
                            zFilt[i] = zFilt[i + 1];
                            zOut = zOut + zFilt[i];
                        }
                        zOut = zOut / 6;
                        axis3AccelTxt.Text = e.Acceleration.ToString();
                        break;
                }
            }
            catch (PhidgetException ex)
            {
                MessageBox.Show(ex.Description);
            }

            xOld = xCenter - (float)xOut * circleRadius;
            yOld = yCenter + (float)yOut * circleRadius;

            accelGraphicsBuffer.Graphics.DrawLine(xyAxisPen, xCenter, yCenter, xOld, yOld);
            accelGraphicsBuffer.Graphics.DrawEllipse(circlePen, circleRectangle);

            if (attached.axes.Count == 3)
            {
                if (zOut > 0)
                {
                    accelGraphicsBuffer.Graphics.DrawEllipse(new Pen(Color.Red, 2),
                        new Rectangle((int)xCenter - (int)(circleRadius * zOut), (int)yCenter - (int)(circleRadius * zOut),
                        (int)(circleDiameter * zOut), (int)(circleDiameter * zOut)));
                }
                else
                {
                    accelGraphicsBuffer.Graphics.DrawEllipse(new Pen(Color.Green, 2),
                        new Rectangle((int)xCenter - (int)(circleRadius * -zOut), (int)yCenter - (int)(circleRadius * -zOut),
                        (int)(circleDiameter * -zOut), (int)(circleDiameter * -zOut)));
                }
            }

            accelGraphicsBuffer.Render(panel1.CreateGraphics());

            accelGraphicsBuffer.Dispose();

            accelGraphicsContext.Dispose();
        }

        private void axis1SensitivityScrl_Scroll(object sender, EventArgs e)
        {
            if ((axis1SensitivityScrl.Enabled == true) && ((accel.Attached == true) || (accel.AttachedToServer == true)))
            {
                try
                {
                    double value = (double)axis1SensitivityScrl.Value / 100;
                    accel.axes[0].Sensitivity = value;
                    label14.Text = "(" + value + ")";
                }
                catch (PhidgetException ex)
                {
                    MessageBox.Show(ex.Description);
                }
            }
        }

        private void axis2SensitivityScrl_Scroll(object sender, EventArgs e)
        {
            if ((axis2SensitivityScrl.Enabled == true) && ((accel.Attached == true) || (accel.AttachedToServer == true)))
            {
                try
                {
                    double value = (double)axis2SensitivityScrl.Value / 100;
                    accel.axes[1].Sensitivity = value;
                    label15.Text = "(" + value + ")";
                }
                catch (PhidgetException ex)
                {
                    MessageBox.Show(ex.Description);
                }
            }
        }

        private void axis3SensitivityScrl_Scroll(object sender, EventArgs e)
        {
            if ((axis3SensitivityScrl.Enabled == true) && ((accel.Attached == true) || (accel.AttachedToServer == true)))
            {
                try
                {
                    double value = (double)axis3SensitivityScrl.Value / 100;
                    accel.axes[2].Sensitivity = value;
                    label16.Text = "(" + value + ")";
                }
                catch (PhidgetException ex)
                {
                    MessageBox.Show(ex.Description);
                }
            }
        }

        //When the application is being terminated, close the Phidget
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            accel.Attach -= new AttachEventHandler(accel_Attach);
            accel.Detach -= new DetachEventHandler(accel_Detach);
            accel.AccelerationChange -= new AccelerationChangeEventHandler(accel_AccelerationChange);
            accel.Error -= new ErrorEventHandler(accel_Error);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            accel.close();

            accelDrawingSurface.Dispose();
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