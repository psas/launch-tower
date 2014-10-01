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
using System.IO;

namespace Wireframe
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        Pipeline p;
        Phidgets.Spatial phid;
        Thread drawThread;

        DateTime timer = DateTime.Now;
        double milliseconds = 0;
        double milliseconds2 = 0;
        int overRotCount = 0;

        //one g of acceleration in m/s^2
        const double g = 9.80665;

        int initialZoom = 8000;
        int zoom = 8000;

        double lastMsCount = 0;
        bool lastMsCountGood = false;

        bool doMag = false;

        Point origin = new Point(0,0);

        Vector3 velocities = new Vector3(0, 0, 0);
        Vector3 positions = new Vector3(0, 0, 0);
        Vector3 gravityRef = new Vector3(0, 1, 0);
        Vector3 magRef = new Vector3(0, 0, 0);

        Vector3 gravityTemp = new Vector3(0, 0, 0);
        Vector3 magTemp = new Vector3(0, 0, 0);

        bool zeroing = false;
        int gravitySamples = 100, gravitySamplesTaken = 0;
        int magSamplesTaken = 0;

        private void Form1_Load(object sender, EventArgs e)
        {
            phid = new Spatial();
            phid.Attach += new AttachEventHandler(phid_Attach);
            phid.Detach += new DetachEventHandler(phid_Detach);
            phid.Error += new Phidgets.Events.ErrorEventHandler(phid_Error);
            phid.SpatialData += new SpatialDataEventHandler(phid_SpatialData);

            p = new Pipeline();

            //Choose shape and zoom
            p.fillVertices("shape.obj");
            initialZoom = 8000; //zoom
            //p.fillVertices("teapot.obj");
            //initialZoom = 2500; //zoom

            trackBar4.Value = initialZoom;

            origin = new Point(pictureBox1.Width / 2, pictureBox1.Height / 2);

            pictureBox1.Image = p.Draw(origin, positions.Z);
            
            phid.open();
        }

        void phid_Error(object sender, Phidgets.Events.ErrorEventArgs e)
        {
            Console.WriteLine("Error event: " + e.Description);
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (drawThread != null)
                if (drawThread.IsAlive)
                    drawThread.Abort();

            phid.SpatialData -= new SpatialDataEventHandler(phid_SpatialData);
            Application.DoEvents();
            phid.close();
        }

        void phid_Detach(object sender, DetachEventArgs e)
        {
            if (drawThread != null)
                if (drawThread.IsAlive)
                    drawThread.Abort();
        }

        void phid_Attach(object sender, AttachEventArgs e)
        {
            phid.DataRate = phid.DataRateMax;
            gravitySamples = (int)(1 / (phid.DataRate * 0.001) * 2); //2 seconds - same as gyro zeroing time
            zeroGyro();

            //enter board specific magnetic field corrections
            //phid.setCompassCorrectionParameters(0.56977, -0.024783, -0.097665, -0.026208, 2.000875, 1.907259, 2.044313, 0.014403, 0.007221, 0.013597, 0.009518, 0.007360, 0.010222);

            //Do this in a seperate thread so the drawing doens't block the data event and cause errors.
            drawThread = new Thread(new ThreadStart(drawThreadFunc));
            drawThread.Start();
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
        void drawThreadFunc()
        {
            while (true)
            {
                try
                {
                    Math3D.RotatePoints(p.rotMatrix, p.vertexBuffer, p.originalVertices);
                    if (positionRadio.Checked)
                    {
                        //make 50 pixels == 1m
                        int scaling = 100;
                        Point center = new Point((int)Math.Round(positions.X * scaling + origin.X),
                            (int)Math.Round(positions.Y * scaling + origin.Y));

                        //make sure the origin actually makes sense
                        if (center.X > -100 && center.X < pictureBox1.Width * 2 + 100)
                        {
                            if (center.Y > -100 && center.Y < pictureBox1.Height * 2 + 100)
                            {
                                double scaledZoom = positions.Z * scaling + zoom;
                                if (scaledZoom < 500)
                                    scaledZoom = 500;
                                if (scaledZoom > 80000)
                                    scaledZoom = 80000;
                                setPicture(pictureBox1, p.Draw(center, scaledZoom));
                            }
                        }
                    }
                    else
                    {
                        setPicture(pictureBox1, p.Draw(origin, zoom));
                    }
                }
                catch (ThreadAbortException)
                {
                    Console.WriteLine("drawThread Aborted");
                    return;
                }
                catch { }
            }
        }

        void phid_SpatialData(object sender, SpatialDataEventArgs e)
        {
            try
            {
                Pipeline.fillpen = Color.White;
                for (int i = 0; i < e.spatialData.Length; i++)
                {
                    if (zeroing)
                    {
                        if(e.spatialData[i].MagneticField.Length>0)
                        {
                            magTemp.X += e.spatialData[i].MagneticField[0];
                            magTemp.Y += e.spatialData[i].MagneticField[2];
                            magTemp.Z -= e.spatialData[i].MagneticField[1];
                            magSamplesTaken++;
                        }

                        gravityTemp.X += e.spatialData[i].Acceleration[0];
                        gravityTemp.Y += e.spatialData[i].Acceleration[2];
                        gravityTemp.Z -= e.spatialData[i].Acceleration[1];
                        gravitySamplesTaken++;

                        if (gravitySamplesTaken >= gravitySamples)
                        {
                            gravityTemp.X /= gravitySamplesTaken;
                            gravityTemp.Y /= gravitySamplesTaken;
                            gravityTemp.Z /= gravitySamplesTaken;
                            gravityRef = gravityTemp;

                            gravityTemp = new Vector3(0, 0, 0);
                            gravitySamplesTaken = 0;

                            magTemp.X /= magSamplesTaken;
                            magTemp.Y /= magSamplesTaken;
                            magTemp.Z /= magSamplesTaken;
                            magRef = new Vector3(magTemp.X, magTemp.Y, magTemp.Z);

                            magTemp = new Vector3(0, 0, 0);
                            magSamplesTaken = 0;

                            zeroing = false;
                            finishZeroing();
                        }
                    }
                    else
                    {
                        if (lastMsCountGood)
                        {
                            double timechange = e.spatialData[i].Timestamp.TotalMilliseconds - lastMsCount; // in ms
                            double timeChangeSeconds = (double)timechange / 1000.0;

                            calculateAttitude(e.spatialData[i], timeChangeSeconds);
                            calculatePosition(e.spatialData[i], timeChangeSeconds);
                        }
                    }

                    lastMsCount = e.spatialData[i].Timestamp.TotalMilliseconds;
                    lastMsCountGood = true;
                    
                    //sw.WriteLine(e.spatialData[i].Timestamp.TotalSeconds.ToString() + "," + e.spatialData[i].Acceleration[0] + "," + -e.spatialData[i].Acceleration[2] + "," + e.spatialData[i].Acceleration[1]);
                }
            }
            catch { }
        }

        void calculatePosition(SpatialEventData data, double timeChangeSeconds)
        {
            Vector3 accelForcesBody = new Vector3(data.Acceleration[0], data.Acceleration[2], -data.Acceleration[1]);
            Vector3 accelForcesRef = Matrix3x3.Multiply(accelForcesBody, p.rotMatrix);

            Vector3 accelForcesRefWithoutGravity = Vector3.Subtract(accelForcesRef, gravityRef);

            //convert from g's to m/s^2 - also, X is backwards
            accelForcesRefWithoutGravity.X = accelForcesRefWithoutGravity.X * g;
            accelForcesRefWithoutGravity.Y = -accelForcesRefWithoutGravity.Y * g;
            accelForcesRefWithoutGravity.Z = accelForcesRefWithoutGravity.Z * g;

            //Integrate accelerations into velocities in m/s: v2 = v1 + at
            velocities.X += timeChangeSeconds * accelForcesRefWithoutGravity.X;
            velocities.Y += timeChangeSeconds * accelForcesRefWithoutGravity.Y;
            velocities.Z += timeChangeSeconds * accelForcesRefWithoutGravity.Z;

            //Integrate velocities into positions in m: s2 = s1 + v2t
            positions.X += timeChangeSeconds * velocities.X;
            positions.Y += timeChangeSeconds * velocities.Y;
            positions.Z += timeChangeSeconds * velocities.Z;

            TimeSpan passed = DateTime.Now.Subtract(timer);

            //print every 50 ms
            if (passed.TotalMilliseconds > milliseconds + 50)
            {
                milliseconds = passed.TotalMilliseconds;

                xVelTxt.Text = velocities.X.ToString("F4");
                yVelTxt.Text = velocities.Y.ToString("F4");
                zVelTxt.Text = velocities.Z.ToString("F4");

                xPosnTxt.Text = positions.X.ToString("F4");
                yPosnTxt.Text = positions.Y.ToString("F4");
                zPosnTxt.Text = positions.Z.ToString("F4");

                xAccelTxt.Text = accelForcesRefWithoutGravity.X.ToString("F4");
                yAccelTxt.Text = accelForcesRefWithoutGravity.Y.ToString("F4");
                zAccelTxt.Text = accelForcesRefWithoutGravity.Z.ToString("F4");

                totVelTxt.Text = Vector3.Length(velocities).ToString("F4");
                totPosnTxt.Text = Vector3.Length(positions).ToString("F4");
                totAccelTxt.Text = Vector3.Length(accelForcesRefWithoutGravity).ToString("F4");

                timeTxt.Text = "" + passed.Minutes.ToString().PadLeft(2) + ":" + passed.Seconds.ToString().PadLeft(2) + "." + passed.Milliseconds.ToString().PadLeft(2);
            }
        }

        void calculateAttitude(SpatialEventData data, double timeChangeSeconds)
        {
            Vector3 rots = new Vector3(0, 0, 0);

            foreach(double angRate in data.AngularRate)
                if ((angRate >= phid.gyroAxes[0].AngularRateMax) || (angRate <= phid.gyroAxes[0].AngularRateMin))
                {
                    Pipeline.fillpen = Color.Red;
                    overRotCount++;
                    overRotsTxt.Text = overRotCount.ToString();
                }

            rots.X = -(timeChangeSeconds * data.AngularRate[0] * Math.PI / 180);
            rots.Y = -(timeChangeSeconds * data.AngularRate[2] * Math.PI / 180);
            rots.Z = (timeChangeSeconds * data.AngularRate[1] * Math.PI / 180);

            Matrix3x3 nextRotMatrix = Math3D.nextRotMatrix2(p.rotMatrix, rots);
            
            TimeSpan passed = DateTime.Now.Subtract(timer);

            //accumulate magnetic data
            if (data.MagneticField.Length > 0)
            {
                magTemp.X += data.MagneticField[0];
                magTemp.Y += data.MagneticField[2];
                magTemp.Z -= data.MagneticField[1];
                magSamplesTaken++;

                //factor into rotations at some interval
                if (passed.TotalMilliseconds > milliseconds2 + 100)
                {
                    milliseconds2 = passed.TotalMilliseconds;
                    //convert vector in reference frame to body frame
                    Vector3 expectedMag = Matrix3x3.Multiply(magRef, Matrix3x3.Transpose(nextRotMatrix));

                    //actual magnetic vector
                    magTemp.X /= magSamplesTaken;
                    magTemp.Y /= magSamplesTaken;
                    magTemp.Z /= magSamplesTaken;

                    magSamplesTaken = 0;

                    if (doMag)
                    {
                        //find the angles between the two magnetic vectors. This gives a rotation matrix
                        Matrix3x3 magRot = Math3D.getRotationMatrix(magTemp, expectedMag);

                        //If these are off, it's because of slight errors - these are no longer Rotation matrices, strictly speaking
                        //The determinant should be 1
                        double det = Matrix3x3.Determinant(magRot);
                        //This should give an Identity matrix
                        Matrix3x3 I = Matrix3x3.Multiply(Matrix3x3.Transpose(magRot), magRot);

                        Vector3 magTempRot = Matrix3x3.Multiply(magTemp, magRot);

                        Vector3 magDiff = Vector3.Subtract(Vector3.Normalize(magTemp), Vector3.Normalize(expectedMag));

                        // These should be close to 0
                        xMagdiffTxt.Text = (magDiff.X * 180.0 / Math.PI).ToString("F4");
                        yMagdiffTxt.Text = (magDiff.Y * 180.0 / Math.PI).ToString("F4");
                        zMagdiffTxt.Text = (magDiff.Z * 180.0 / Math.PI).ToString("F4");

                        totMagDivTxt.Text = (Math.Acos(Vector3.DotProduct(Vector3.Normalize(magTemp), Vector3.Normalize(expectedMag))) * 180.0 / Math.PI).ToString("F4");

                        //correct the rotation matrix
                        if (compassCorrections.Checked)
                        {
                            nextRotMatrix = Matrix3x3.Normalize(Matrix3x3.Multiply(Matrix3x3.Normalize(nextRotMatrix), Matrix3x3.Normalize(magRot)));
                        }

                    }
                    magTemp.X = 0;
                    magTemp.Y = 0;
                    magTemp.Z = 0;
                    doMag = true;
                }
            }

            p.rotMatrix = nextRotMatrix;
        }

        private void trackBar4_Scroll(object sender, EventArgs e)
        {
            positions.Z = trackBar4.Value;
            zoom = trackBar4.Value;
        }

        public void zeroGyro()
        {
            zeroStatusTxt.Text = "Wait...";

            phid.zeroGyro();

            Thread.Sleep(50);

            positions.X = 0;
            positions.Y = 0;
            positions.Z = 0;

            velocities.X = 0;
            velocities.Y = 0;
            velocities.Z = 0;

            overRotCount = 0;
            overRotsTxt.Clear();

            doMag = false;

            magTemp = new Vector3(0, 0, 0);
            magSamplesTaken = 0;

            gravitySamplesTaken = 0;
            gravityTemp = new Vector3(0, 0, 0);
            zeroing = true;
        }

        private void finishZeroing()
        {
            //align body rotation matrix with reference frame
            Matrix3x3 rotMatrix = new Matrix3x3();

            if (initialRotWithGravity.Checked)
            {
                //base the initial rotation matrix on the gravity measurement - keep the y axis (up-down) rotated so the cord is facing out
                //Calculate the angles and make sure they are -1 <= x <= 1

                //get a normalized version of the gravity vector to find angles
                gravityTemp = Vector3.Normalize(gravityRef);

                double xAngle = Math.Asin(-gravityTemp.X);
                double zAngle = Math.Asin(gravityTemp.Z);

                //The board is up-side down
                if (gravityRef.Y > 0)
                {
                    xAngle = -xAngle;
                    zAngle = -zAngle;
                }

                Matrix3x3 xRotMatrix = new Matrix3x3();
                xRotMatrix.matrix[0, 0] = Math.Cos(xAngle); xRotMatrix.matrix[1, 0] = -Math.Sin(xAngle); xRotMatrix.matrix[2, 0] = 0;
                xRotMatrix.matrix[0, 1] = Math.Sin(xAngle); xRotMatrix.matrix[1, 1] = Math.Cos(xAngle); xRotMatrix.matrix[2, 1] = 0;
                xRotMatrix.matrix[0, 2] = 0; xRotMatrix.matrix[1, 2] = 0; xRotMatrix.matrix[2, 2] = 1;

                //no rotation
                Matrix3x3 yRotMatrix = new Matrix3x3();
                yRotMatrix.matrix[0, 0] = 1; yRotMatrix.matrix[1, 0] = 0; yRotMatrix.matrix[2, 0] = 0;
                yRotMatrix.matrix[0, 1] = 0; yRotMatrix.matrix[1, 1] = 1; yRotMatrix.matrix[2, 1] = 0;
                yRotMatrix.matrix[0, 2] = 0; yRotMatrix.matrix[1, 2] = 0; yRotMatrix.matrix[2, 2] = 1;

                Matrix3x3 zRotMatrix = new Matrix3x3();
                zRotMatrix.matrix[0, 0] = 1; zRotMatrix.matrix[1, 0] = 0; zRotMatrix.matrix[2, 0] = 0;
                zRotMatrix.matrix[0, 1] = 0; zRotMatrix.matrix[1, 1] = Math.Cos(zAngle); zRotMatrix.matrix[2, 1] = -Math.Sin(zAngle);
                zRotMatrix.matrix[0, 2] = 0; zRotMatrix.matrix[1, 2] = Math.Sin(zAngle); zRotMatrix.matrix[2, 2] = Math.Cos(zAngle);

                rotMatrix = Matrix3x3.Multiply(Matrix3x3.Multiply(xRotMatrix, yRotMatrix), zRotMatrix);

                //The board is up-side down
                if (gravityRef.Y < 0)
                {
                    rotMatrix = Matrix3x3.Multiply(-1, rotMatrix);
                }

                //now rotate gravity into reference frame
                gravityRef = Matrix3x3.Multiply(gravityRef, rotMatrix);

                magRef = Matrix3x3.Multiply(magRef, rotMatrix);
            }
            //Assume initial rotation is flat
            else
            {
                rotMatrix.matrix[0, 0] = 1; rotMatrix.matrix[1, 0] = 0; rotMatrix.matrix[2, 0] = 0;
                rotMatrix.matrix[0, 1] = 0; rotMatrix.matrix[1, 1] = 1; rotMatrix.matrix[2, 1] = 0;
                rotMatrix.matrix[0, 2] = 0; rotMatrix.matrix[1, 2] = 0; rotMatrix.matrix[2, 2] = 1;
            }

            timer = DateTime.Now;
            milliseconds = 0;
            milliseconds2 = 0;

            p.rotMatrix = rotMatrix;

            xGravTxt.Text = gravityRef.X.ToString("F4");
            yGravTxt.Text = gravityRef.Y.ToString("F4");
            zGravTxt.Text = gravityRef.Z.ToString("F4");
            totGravTxt.Text = Vector3.Length(gravityRef).ToString("F4");

            Math3D.RotatePoints(p.rotMatrix, p.vertexBuffer, p.originalVertices);
            zeroStatusTxt.Text = "Done.";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            zeroGyro();
        }

        private void gyroRadio_CheckedChanged(object sender, EventArgs e)
        {
            if(gyroRadio.Checked)
                positionRadio.Checked = false;
        }

        private void positionRadio_CheckedChanged(object sender, EventArgs e)
        {
            if(positionRadio.Checked)
                gyroRadio.Checked = false;

            positions.X = 0;
            positions.Y = 0;
            positions.Z = 0;

            velocities.X = 0;
            velocities.Y = 0;
            velocities.Z = 0;
        }

        private void pictureBox1_Resize(object sender, EventArgs e)
        {
            origin = new Point(pictureBox1.Width / 2, pictureBox1.Height / 2);
        }
    }
}