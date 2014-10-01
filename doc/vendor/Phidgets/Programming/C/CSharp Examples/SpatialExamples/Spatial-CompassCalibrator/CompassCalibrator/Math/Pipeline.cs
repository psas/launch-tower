using System;
using System.Collections.Generic;
using System.Text;
using System.Drawing;
using System.Windows.Forms;
using System.Threading;

namespace CompassCalibrator
{
    class Pipeline
    {
        public List<Vector3> originalVertices = new List<Vector3>();
        public List<Vector3> vertexBuffer = new List<Vector3>();
        public List<int> indexBuffer = new List<int>();

        public List<Brush> pointColors = new List<Brush>();
        public List<Pen> lineColors = new List<Pen>();

        //Need to protect this from cross-thread accesses
        private Matrix3x3 innerRotMatrix;
        private Object innerRotMatrixLock = new object();
        public Matrix3x3 rotMatrix
        {
            get
            {
                Matrix3x3 ret;
                lock (innerRotMatrixLock)
                {
                    ret = new Matrix3x3(innerRotMatrix);
                }
                return ret;
            }
            set
            {
                lock (innerRotMatrixLock)
                {
                    innerRotMatrix = value;
                }
            }
        }

        public void addPoint(Vector3 point, Brush color)
        {
            originalVertices.Add(point);
            vertexBuffer.Add(point);
            pointColors.Add(color);
        }

        Vector3 eyePosition; //Simple camera
        static public Color fillpen = Color.White;

        public Bitmap Draw(Point origin2d, double zoom)
        {
            //The Camera is pointing at fixed angle
            eyePosition = new Vector3(0, 0, -40);

            //Rasterize the points
            Vector3 vec;
            PointF[] buffr2D = new PointF[vertexBuffer.Count]; //Will be actual 2D drawing points
            for (int i = 0; i < buffr2D.Length; i++)
            {
                vec = vertexBuffer[i];
                buffr2D[i].X = (float)((vec.X - eyePosition.X) / (vec.Z - eyePosition.Z) * zoom + origin2d.X);
                buffr2D[i].Y = (float)(-(vec.Y - eyePosition.Y) / (vec.Z - eyePosition.Z) * zoom + origin2d.Y);

                buffr2D[i].X = (int)buffr2D[i].X;
                buffr2D[i].Y = (int)buffr2D[i].Y;
            }

            //Draw here
            Rectangle drawArea = calcDrawArea(buffr2D);
            drawArea.Width += origin2d.X;
            drawArea.Height += origin2d.Y;

            Bitmap tmpBmp = new Bitmap(drawArea.Width, drawArea.Height);
            Graphics g = Graphics.FromImage(tmpBmp);

            //Just draw all the points
            double pointSize = 0.0002 * zoom;
            for (int j = 0; j < buffr2D.Length; j++)
            {
                g.FillEllipse(pointColors[j], (float)(buffr2D[j].X - (pointSize / 2)), (float)(buffr2D[j].Y - (pointSize / 2)),
                    (float)(pointSize), (float)(pointSize));
            }

            //Render the Index Buffer
            for (int i = 0; i < indexBuffer.Count; i += 2)
            {
                {
                    g.DrawLine(lineColors[i/2], buffr2D[indexBuffer[i + 0]], buffr2D[indexBuffer[i + 1]]);
                }
            }

            g.Dispose(); //Clean-up

            return tmpBmp;
        }

        private Rectangle calcDrawArea(PointF[] points)
        {
            double minx = points[0].X;
            double maxx = points[0].X;
            double miny = points[0].Y;
            double maxy = points[0].Y;

            for (int i = 1; i < points.Length; i++) 
            {
                if (points[i].X < minx)
                    minx = points[i].X;
                if (points[i].X > maxx)
                    maxx = points[i].X;

                if (points[i].Y < maxy)
                    maxy = points[i].Y;
                if (points[i].Y > miny)
                    miny = points[i].Y;
            }

            return new Rectangle(0, 0, (int)Math.Ceiling(maxx - minx), (int)Math.Ceiling(miny - maxy));
        }


    }
}
