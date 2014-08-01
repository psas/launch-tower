using System;
using System.Collections.Generic;
using System.Text;
using Phidgets;
using System.Runtime.InteropServices; // DllImport
using System.ComponentModel;

namespace CompassCalibrator
{
    public class Calibration
    {
        Form1 baseForm;
        public Vector3 offset = new Vector3(0,0,0);
        public Matrix3x3 gainAndTransform = new Matrix3x3();
        public double estimatedLocalField = 0.5;

        CompasscalImports.ProgressCallback nativeProgressCallback;

        public event ProgressEventHandler Progress;

        internal virtual void OnProgress(ProgressEventArgs e)
        {
            if (null != Progress)
            {
                foreach (ProgressEventHandler ProgressHandler in Progress.GetInvocationList())
                {
                    ISynchronizeInvoke syncInvoke = ProgressHandler.Target as ISynchronizeInvoke;
                    if ((null != syncInvoke) && (syncInvoke.InvokeRequired))
                    {
                        syncInvoke.Invoke(ProgressHandler, new object[] { this, e });
                    }
                    else
                        ProgressHandler(this, e);
                }
            }
        }

        public Calibration(Form1 baseForm)
        {
            this.baseForm = baseForm;

            nativeProgressCallback = new CompasscalImports.ProgressCallback(this.nativeProgressEvent);

            //set gains to 1 by default
            gainAndTransform.matrix[0, 0] = 1;
            gainAndTransform.matrix[1, 1] = 1;
            gainAndTransform.matrix[2, 2] = 1;
        }

        internal int nativeProgressEvent(IntPtr userPtr, IntPtr x, IntPtr g, double fx, double xnorm, double gnorm, double step, int n, int k, int ls)
        {
            //See tag event for dealing with x and g
            OnProgress(new ProgressEventArgs());
            return 0;
        }

        private void setArgs(double[] args)
        {
            estimatedLocalField = args[0];
            offset.X = args[1];
            offset.Y = args[2];
            offset.Z = args[3];
            gainAndTransform.matrix[0, 0] = args[4];  gainAndTransform.matrix[0, 1] = args[7];  gainAndTransform.matrix[0, 2] = args[8];
            gainAndTransform.matrix[1, 0] = args[9];  gainAndTransform.matrix[1, 1] = args[5];  gainAndTransform.matrix[1, 2] = args[10];
            gainAndTransform.matrix[2, 0] = args[11]; gainAndTransform.matrix[2, 1] = args[12]; gainAndTransform.matrix[2, 2] = args[6];
        }

        private void printArgs(double[] args)
        {
            baseForm.addMessage("Parameters (magField, offset0-1-2, gain0-1-2, T0-1-2-3-4-5):" + Environment.NewLine);
            StringBuilder sb = new StringBuilder();
            foreach (double d in args)
                sb.Append(d.ToString("F5") + ", ");
            baseForm.addMessage(sb.ToString().TrimEnd(new char[] { ' ', ',' }));
        }

        private double[,] compassDataPointListToDouble2D(List<compassDataPoint> data)
        {
            double[,] dataPoints = new double[data.Count, 3];

            for (int i = 0; i < data.Count; i++)
            {
                dataPoints[i, 0] = data[i].data[0];
                dataPoints[i, 1] = data[i].data[1];
                dataPoints[i, 2] = data[i].data[2];
            }

            return dataPoints;
        }

        public bool calibrate3(List<compassDataPoint> data)
        {
            double[] args = new double[13];
            double[,] dataPoints = compassDataPointListToDouble2D(data);

            CompasscalImports.getCompassArgs_3D(dataPoints, data.Count, nativeProgressCallback, args, IntPtr.Zero);
            baseForm.addMessage("Calibration Completed");

            setArgs(args);
            printArgs(args);

            return true;
        }

        public bool calibrate2(List<compassDataPoint> data)
        {
            double[] args = new double[13];
            double[,] dataPoints = compassDataPointListToDouble2D(data);

            CompasscalImports.getCompassArgs_2D_ver2(dataPoints, data.Count, nativeProgressCallback, args, IntPtr.Zero);
            baseForm.addMessage("Calibration Completed");

            setArgs(args);
            printArgs(args);

            return true;
        }
    }

    public class compassDataPoint
    {
        public double[] data;

        public compassDataPoint(double x, double y, double z)
        {
            data = new double[] { x, y, z };
        }

        public double length
        {
            get
            {
                return Vector3.Length(new Vector3(data[0],data[1],data[2]));
            }
        }
    }

    internal class CompasscalImports
    {
        public delegate Int32 ProgressCallback(IntPtr userPtr, IntPtr x, IntPtr g, double fx, double xnorm, double gnorm, double step, int n, int k, int ls);

        [DllImport("compasscal.dll")]
        unsafe public static extern Int32 getCompassArgs_3D(double[,] cData, int cDataCount, ProgressCallback progress, [In, Out] double[] args, IntPtr userPtr);
        [DllImport("compasscal.dll")]
        unsafe public static extern Int32 getCompassArgs_2D_ver1(double[,] cData, int cDataCount, ProgressCallback progress, [In, Out] double[] args, IntPtr userPtr);
        [DllImport("compasscal.dll")]
        unsafe public static extern Int32 getCompassArgs_2D_ver2(double[,] cData, int cDataCount, ProgressCallback progress, [In, Out] double[] args, IntPtr userPtr);
    }

    public class ProgressEventArgs : EventArgs
    {

        public ProgressEventArgs()
        {
        }
    }

    public delegate void ProgressEventHandler(object sender, ProgressEventArgs e);
}
