using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Phidgets;
using Phidgets.Events;
using System.Threading;

namespace CompassCalibrator
{
    public partial class Form1 : Form
    {
        static int samplesPerSample = 5;
        Thread calibrateThread;

        bool calibrated = false;

        Spatial spatial;
        bool sampling = false;
        int sampleCounter = 0;

        Calibration cal;

        List<compassDataPoint> compassSamples = new List<compassDataPoint>();

        Point origin = new Point(0, 0);
        Thread drawThread;
        Pipeline p;
        int zoom = 6000;
        Vector3 rots;

        #region Init/Deinit
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            p = new Pipeline();

            //add some initial points
            p.addPoint(new Vector3(0, 0, 0), Brushes.Black);
            p.addPoint(new Vector3(1, 0, 0), Brushes.Black);
            p.addPoint(new Vector3(0, 1, 0), Brushes.Black);
            p.addPoint(new Vector3(0, 0, -1), Brushes.Black);
            p.addPoint(new Vector3(0, 0, 0), Brushes.Black);
            p.addPoint(new Vector3(0, 0, 0), Brushes.Black);

            p.indexBuffer.AddRange(new int[] { 0, 1 });
            p.indexBuffer.AddRange(new int[] { 0, 2 });
            p.indexBuffer.AddRange(new int[] { 0, 3 });
            p.indexBuffer.AddRange(new int[] { 0, 4 });
            p.indexBuffer.AddRange(new int[] { 0, 5 });

            p.lineColors.AddRange(new Pen[] { Pens.Black, Pens.Black, Pens.Black, Pens.Red, Pens.Green });

            //rotation speed
            rots = new Vector3(0, 0.01, 0);
            Vector3 initialRots = new Vector3(0, 0, 0);

            Matrix3x3 rotMatrix = new Matrix3x3();
            rotMatrix.matrix[0, 0] = 1; rotMatrix.matrix[1, 0] = 0; rotMatrix.matrix[2, 0] = 0;
            rotMatrix.matrix[0, 1] = 0; rotMatrix.matrix[1, 1] = 1; rotMatrix.matrix[2, 1] = 0;
            rotMatrix.matrix[0, 2] = 0; rotMatrix.matrix[1, 2] = 0; rotMatrix.matrix[2, 2] = 1;
            rotMatrix = Math3D.nextRotMatrix2(rotMatrix, initialRots);
            p.rotMatrix = rotMatrix;

            origin = new Point(pictureBox1.Width / 2, pictureBox1.Height / 2);
            Math3D.RotatePoints(p.rotMatrix, p.vertexBuffer, p.originalVertices);
            pictureBox1.Image = p.Draw(origin, zoom);
            trackBar4.Value = zoom;

            spatial = new Spatial();
            spatial.Attach += new Phidgets.Events.AttachEventHandler(spatial_Attach);
            spatial.Detach += new Phidgets.Events.DetachEventHandler(spatial_Detach);
            spatial.SpatialData += new Phidgets.Events.SpatialDataEventHandler(spatial_SpatialData);
            spatial.open();
        }

        //When the application is being terminated, close the Phidget.
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (drawThread != null)
                if (drawThread.IsAlive)
                    drawThread.Abort();

            spatial.Attach -= new AttachEventHandler(spatial_Attach);
            spatial.Detach -= new DetachEventHandler(spatial_Detach);
            spatial.SpatialData -= new SpatialDataEventHandler(spatial_SpatialData);

            //run any events in the message queue - otherwise close will hang if there are any outstanding events
            Application.DoEvents();

            spatial.close();
        }
        #endregion

        #region Data Sampling
        void spatial_Attach(object sender, Phidgets.Events.AttachEventArgs e)
        {
            Spatial attached = (Spatial)sender;
            attachedTxt.Text = attached.Attached.ToString();
            nameTxt.Text = attached.Name;
            serialTxt.Text = attached.SerialNumber.ToString();
            versionTxt.Text = attached.Version.ToString();

            if (attached.compassAxes.Count < 3)
            {
                addMessage("You need to attach something with a compass to do anything usefull here...");
            }
            else
            {
                addMessage("Press start to begin calibration." + Environment.NewLine + "For more accuracy, you can enter the local field strength, which can be calculated for your location here: http://www.ngdc.noaa.gov/geomagmodels/IGRFWMM.jsp");
                sampleDoneButton.Enabled = true;
                spatial.DataRate = spatial.DataRateMax;

                //Do this in a seperate thread so the drawing doens't block the data event and cause errors.
                drawThread = new Thread(new ThreadStart(drawThreadFunc));
                drawThread.Start();
            }
        }

        void spatial_Detach(object sender, Phidgets.Events.DetachEventArgs e)
        {
            Spatial detached = (Spatial)sender;
            attachedTxt.Text = detached.Attached.ToString();
            nameTxt.Text = "";
            serialTxt.Text = "";
            versionTxt.Text = "";
            sampleDoneButton.Enabled = false;

            pictureBox1.Image = null;
            messagesTextBox.Clear();

            if (drawThread != null)
                if (drawThread.IsAlive)
                    drawThread.Abort();
        }

        void spatial_SpatialData(object sender, Phidgets.Events.SpatialDataEventArgs e)
        {
            //This displays a vector representing the measured field in red, and after calibration the calibrated field in green
            if (e.spatialData[0].MagneticField.Length == 3)
            {
                lock (p)
                {
                    if (twoAxisButton.Checked)
                    {
                        p.originalVertices[4] = new Vector3(
                            e.spatialData[0].MagneticField[0],
                            e.spatialData[0].MagneticField[1],
                            -e.spatialData[0].MagneticField[2]);
                        if (calibrated)
                        {
                            Vector3 rawData = new Vector3(e.spatialData[0].MagneticField[0], e.spatialData[0].MagneticField[1], e.spatialData[0].MagneticField[2]);
                            Vector3 calibratedData = Matrix3x3.Multiply(Vector3.Subtract(rawData, cal.offset), cal.gainAndTransform);

                            //apply local mag field - calibrate returns a unit (mag 1) field
                            calibratedData = Vector3.Multiply(double.Parse(localFieldTextBox.Text), calibratedData);

                            p.originalVertices[5] = new Vector3(
                                calibratedData.X,
                                calibratedData.Y,
                                -calibratedData.Z);
                        }
                    }
                    else
                    {
                        p.originalVertices[4] = new Vector3(
                            e.spatialData[0].MagneticField[0],
                            e.spatialData[0].MagneticField[2],
                            -e.spatialData[0].MagneticField[1]);
                        if (calibrated)
                        {
                            Vector3 rawData = new Vector3(e.spatialData[0].MagneticField[0], e.spatialData[0].MagneticField[1], e.spatialData[0].MagneticField[2]);
                            Vector3 calibratedData = Matrix3x3.Multiply(Vector3.Subtract(rawData, cal.offset), cal.gainAndTransform);

                            //apply local mag field - calibrate returns a unit (mag 1) field
                            calibratedData = Vector3.Multiply(double.Parse(localFieldTextBox.Text), calibratedData);

                            p.originalVertices[5] = new Vector3(
                                calibratedData.X,
                                calibratedData.Z,
                                -calibratedData.Y);
                        }
                    }
                }
            }

            //This samples magnetic field data
            if (sampling)
            {
                lock (compassSamples)
                {
                    if (sampling)
                    {
                        sampleCounter++;
                        if (sampleCounter >= samplesPerSample)
                        {
                            sampleCounter = 0;
                            if (e.spatialData[0].MagneticField.Length == 3)
                            {
                                compassSamples.Add(
                                    new compassDataPoint(
                                    e.spatialData[0].MagneticField[0],
                                    e.spatialData[0].MagneticField[1],
                                    e.spatialData[0].MagneticField[2]
                                    )
                                );

                                //This draws the magnetic vectors as dots
                                lock (p)
                                {
                                    if (twoAxisButton.Checked)
                                    {
                                        p.addPoint(new Vector3(
                                            e.spatialData[0].MagneticField[0],
                                            e.spatialData[0].MagneticField[1],
                                            -e.spatialData[0].MagneticField[2]), Brushes.Red);
                                    }
                                    else
                                    {
                                        p.addPoint(new Vector3(
                                            e.spatialData[0].MagneticField[0],
                                            e.spatialData[0].MagneticField[2],
                                            -e.spatialData[0].MagneticField[1]), Brushes.Red);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        #endregion

        #region Calibration
        //Runs the calibration algorithm
        void calibrateThreadFunction()
        {
            addMessage("Starting Calibration with " + compassSamples.Count.ToString() + " samples.");
            cal = new Calibration(this);
            bool calSuccess = false;
            if(threeAxisButton.Checked)
                calSuccess = cal.calibrate3(compassSamples);
            else
                calSuccess = cal.calibrate2(compassSamples);
            if (calSuccess)
            {
                //Calibration was successful - redraw all the samples in green.
                addMessage("Calibration successful.");
                if (localFieldTextBox.Text == "")
                    setLocalField(cal.estimatedLocalField.ToString("F5"));
                for (int i = 0; i < compassSamples.Count; i++)
                {
                    //apply calibration
                    Vector3 rawData = new Vector3(compassSamples[i].data[0], compassSamples[i].data[1], compassSamples[i].data[2]);
                    Vector3 calibratedData = Matrix3x3.Multiply(Vector3.Subtract(rawData, cal.offset), cal.gainAndTransform);

                    //apply local mag field - calibrate returns a unit (mag 1) field
                    calibratedData = Vector3.Multiply(double.Parse(localFieldTextBox.Text), calibratedData);
                    
                    lock (p)
                    {
                        if (twoAxisButton.Checked)
                        {
                            p.addPoint(new Vector3(
                                calibratedData.X,
                                calibratedData.Y,
                                -calibratedData.Z), Brushes.Green);
                        }
                        else
                        {
                            p.addPoint(new Vector3(
                                calibratedData.X,
                                calibratedData.Z,
                                -calibratedData.Y), Brushes.Green);
                        }
                    }
                }
                calibrated = true;
            }
            else
            {
                //failed
                addMessage("Calibration failed, try again.");
            }

            setButtonEnabled(sampleDoneButton, true, "Start");
        }

        private void sampleDoneButton_Click(object sender, EventArgs e)
        {
            if (spatial.compassAxes.Count != 3)
            {
                addMessage("This PhidgetSpatial does not have a compass!");
                return;
            }
            if (sampling)
            {
                sampling = false;
                lock (compassSamples)
                {
                    sampleDoneButton.Text = "wait...";
                    sampleDoneButton.Enabled = false;
                    //start the calibration thread
                    calibrateThread = new Thread(new ThreadStart(calibrateThreadFunction));
                    calibrateThread.Start();
                }
            }
            else
            {
                sampling = false;
                lock (compassSamples)
                {
                    calibrated = false;
                    //clear graph
                    resetGraph();
                    compassSamples = new List<compassDataPoint>();
                    addMessage("Starting sampling... start moving device now.");
                    if (threeAxisButton.Checked)
                        addMessage("Try to draw out as much of a sphere as possible, then press stop");
                    else
                        addMessage("Rotate the board about the z-axis. This should draw out a circle. Press stop when finished.");
                    sampling = true;
                    sampleDoneButton.Text = "Stop";
                }
            }
        }

        private void twoAxisButton_CheckedChanged(object sender, EventArgs e)
        {
            lock (p)
            {
                if (twoAxisButton.Checked)
                {
                    threeAxisButton.Checked = false;
                    rots = new Vector3(0, 0, 0);
                }
                else
                {
                    threeAxisButton.Checked = true;
                    rots = new Vector3(0, 0.01, 0);
                }
                resetGraph();
            }
        }

        private void threeAxisButton_CheckedChanged(object sender, EventArgs e)
        {
            lock (p)
            {
                if (threeAxisButton.Checked)
                {
                    twoAxisButton.Checked = false;
                    rots = new Vector3(0, 0.01, 0);
                }
                else
                {
                    twoAxisButton.Checked = true;
                    rots = new Vector3(0, 0, 0);
                }
                resetGraph();
            }
        }
        #endregion

        #region Point Graph
        //Draws the rotating graph of data points
        void drawThreadFunc()
        {
            while (true)
            {
                try
                {
                    Bitmap g;
                    lock (p)
                    {
                        p.rotMatrix = Math3D.nextRotMatrix2(p.rotMatrix, rots);
                        Math3D.RotatePoints(p.rotMatrix, p.vertexBuffer, p.originalVertices);
                        g = p.Draw(origin, zoom);
                    }
                    setPicture(pictureBox1, g);
                    Thread.Sleep(10);
                }
                catch (ThreadAbortException)
                {
                    Console.WriteLine("drawThread Aborted");
                    return;
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                }
            }
        }

        private void resetGraph()
        {
            lock (p)
            {
                Matrix3x3 rotMatrix = new Matrix3x3();
                rotMatrix.matrix[0, 0] = 1; rotMatrix.matrix[1, 0] = 0; rotMatrix.matrix[2, 0] = 0;
                rotMatrix.matrix[0, 1] = 0; rotMatrix.matrix[1, 1] = 1; rotMatrix.matrix[2, 1] = 0;
                rotMatrix.matrix[0, 2] = 0; rotMatrix.matrix[1, 2] = 0; rotMatrix.matrix[2, 2] = 1;
                p.rotMatrix = rotMatrix;

                p.originalVertices.Clear();
                p.vertexBuffer.Clear();
                p.pointColors.Clear();

                //add some initial points
                p.addPoint(new Vector3(0, 0, 0), Brushes.Black);
                p.addPoint(new Vector3(1, 0, 0), Brushes.Black);
                p.addPoint(new Vector3(0, 1, 0), Brushes.Black);
                p.addPoint(new Vector3(0, 0, -1), Brushes.Black);
                p.addPoint(new Vector3(0, 0, 0), Brushes.Black);
                p.addPoint(new Vector3(0, 0, 0), Brushes.Black);
            }
        }

        private void pictureBox1_Resize(object sender, EventArgs e)
        {
            origin = new Point(pictureBox1.Width / 2, pictureBox1.Height / 2);
        }

        private void trackBar4_Scroll(object sender, EventArgs e)
        {
            zoom = trackBar4.Value;
        }

        private void rotationTrack_Scroll(object sender, EventArgs e)
        {
            if (threeAxisButton.Checked)
                rots.Y = (rotationTrack.Value / 10000.0);
            else
                rots.Z = (rotationTrack.Value / 10000.0);
        }
        #endregion

        #region Invokers
        public delegate void StringDelegate(String str);
        public void addMessage(String message)
        {
            if (messagesTextBox.InvokeRequired)
                try { messagesTextBox.Invoke(new StringDelegate(addMessage), new Object[] { message }); }
                catch { }
            else
            {
                messagesTextBox.SelectionColor = Color.Black;
                messagesTextBox.AppendText(message);
                if (messagesTextBox.Text.Length > 2)
                    messagesTextBox.Select(messagesTextBox.Text.Length - 1, 1);
                messagesTextBox.ScrollToCaret();
                messagesTextBox.AppendText(Environment.NewLine);
            }
        }
        public void setLocalField(String txt)
        {
            if (localFieldTextBox.InvokeRequired)
                try { localFieldTextBox.Invoke(new StringDelegate(setLocalField), new Object[] { txt }); }
                catch { }
            else
            {
                localFieldTextBox.Text = txt;
            }
        }
        public delegate void SetButtonEnabledDelegate(Button button, Boolean enabled, String text);
        public void setButtonEnabled(Button button, Boolean enabled, String text)
        {
            if (button.InvokeRequired)
            {
                try
                {
                    button.Invoke(new SetButtonEnabledDelegate(setButtonEnabled), new Object[] { button, enabled, text });
                }
                catch { }
            }
            else
            {
                button.Enabled = enabled;
                button.Text = text;
            }
        }
        public delegate void PictureBoxDelegate(PictureBox box, Image pic);
        public void setPicture(PictureBox box, Image pic)
        {
            if (box.InvokeRequired)
            {
                try { box.Invoke(new PictureBoxDelegate(setPicture), new Object[] { box, pic }); }
                catch { }
            }
            else
                box.Image = pic;
        }
        #endregion
    }
}