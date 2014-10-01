using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Phidgets;
using Phidgets.Events;

namespace Accelerometer_graphical
{
    public partial class Form1 : Form
    {
        private Accelerometer accel;
        private BufferedGraphicsContext formGraphicsContext;
        private BufferedGraphics formGraphicsBuffer;
        private Bitmap formDrawingSurface;
        private float xCenter, yCenter, x1Old, y1Old;
        private double[] xFilt, yFilt, zFilt;
        private double xOut, yOut, zOut;
        private Rectangle circleRectangle, rectBounds;
        private Pen xyAxisPen, circlePen;
        private int circleDiameter, circleRadius;

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            accel = new Accelerometer();

            accel.Attach += new AttachEventHandler(accel_Attach);
            accel.Detach += new DetachEventHandler(accel_Detach);

            accel.AccelerationChange += new AccelerationChangeEventHandler(accel_AccelerationChange);

            label1.Text = "Attach a Phidget Accelerometer...";
            label2.Text = "";
            label6.Text = "";
            label7.Text = "";
            label8.Text = "";

            accel.open();

            formDrawingSurface = new Bitmap(panel1.ClientRectangle.Width, panel1.ClientRectangle.Height, System.Drawing.Imaging.PixelFormat.Format24bppRgb);

            rectBounds = new Rectangle(0, 0, formDrawingSurface.Width, formDrawingSurface.Height);
            rectBounds.Inflate(-1, -1);

            xFilt = new double[7];
            yFilt = new double[7];
            zFilt = new double[7];

            xCenter = rectBounds.Width / 2;
            yCenter = rectBounds.Height / 2;

            x1Old = xCenter;
            y1Old = yCenter;

            xyAxisPen = new Pen(Color.Black, 2);
            circlePen = new Pen(Color.DarkBlue, 2);

            circleDiameter = formDrawingSurface.Width / 2;
            circleRadius = circleDiameter / 2;
            circleRectangle = new Rectangle((int)xCenter - circleRadius, (int)yCenter - circleRadius, circleDiameter, circleDiameter);
        }

        void accel_Attach(object sender, AttachEventArgs e)
        {
            Accelerometer attached = (Accelerometer)sender;
            label1.Text = "Phidget Accelerometer Attached.";
            label2.Text = "Serial Number: " + attached.SerialNumber;

            attached.axes[0].Sensitivity = 0;
            attached.axes[1].Sensitivity = 0;
            if (attached.axes.Count > 2)
                attached.axes[2].Sensitivity = 0;
        }

        void accel_Detach(object sender, DetachEventArgs e)
        {
            label1.Text = "Attach a Phidget Accelerometer...";
            label2.Text = "";
        }

        void accel_AccelerationChange(object sender, AccelerationChangeEventArgs e)
        {
            formGraphicsContext = new BufferedGraphicsContext();

            formGraphicsBuffer = formGraphicsContext.Allocate(Graphics.FromImage(formDrawingSurface), rectBounds);

            formGraphicsBuffer.Graphics.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;

            formGraphicsBuffer.Graphics.Clear(SystemColors.Control);

            int i = 0;
            //low pass filtering
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
                    label6.Text = e.Acceleration.ToString();
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
                    label7.Text = e.Acceleration.ToString();
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
                    label8.Text = e.Acceleration.ToString();
                    break;
            }

            x1Old = xCenter - (float)xOut * circleRadius;
            y1Old = yCenter + (float)yOut * circleRadius;

            formGraphicsBuffer.Graphics.DrawLine(xyAxisPen, xCenter, yCenter, x1Old, y1Old);
            formGraphicsBuffer.Graphics.DrawEllipse(circlePen, circleRectangle);

            if (accel.axes.Count == 3)
            {
                if (zOut > 0)
                {
                    formGraphicsBuffer.Graphics.DrawEllipse(new Pen(Color.Red, 2),
                        new Rectangle((int)xCenter - (int)(circleRadius * zOut), (int)yCenter - (int)(circleRadius * zOut),
                        (int)(circleDiameter * zOut), (int)(circleDiameter * zOut)));
                }
                else
                {
                    formGraphicsBuffer.Graphics.DrawEllipse(new Pen(Color.Green, 2),
                        new Rectangle((int)xCenter - (int)(circleRadius * -zOut), (int)yCenter - (int)(circleRadius * -zOut),
                        (int)(circleDiameter * -zOut), (int)(circleDiameter * -zOut)));
                }
            }

            formGraphicsBuffer.Render(panel1.CreateGraphics());

            formGraphicsBuffer.Dispose();

            formGraphicsContext.Dispose();
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            accel.Attach -= new AttachEventHandler(accel_Attach);
            accel.Detach -= new DetachEventHandler(accel_Detach);

            accel.AccelerationChange -= new AccelerationChangeEventHandler(accel_AccelerationChange);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            accel.close();
        }
    }
}