using System;
using System.Collections.Generic;
using System.Text;
using System.Drawing;
using System.Windows.Forms;
using System.Threading;

namespace Wireframe
{
    class Pipeline
    {
        public Vector3[] originalVertices;
        public Vector3[] vertexBuffer;
        public int[] indexBuffer;

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

        Vector3 eyePosition; //Simple camera
        static public Color fillpen = Color.White;

        public Bitmap Draw(Point origin2d, double zoom)
        {
            //The Camera is pointing at fixed angle
            eyePosition = new Vector3(0, 0, -40);

            //Rasterize the points
            Vector3 vec;
            PointF[] buffr2D = new PointF[vertexBuffer.Length]; //Will be actual 2D drawing points
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
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;

            //Render the Index Buffer
            for (int i = 0; i < indexBuffer.Length; i += 3)
            {
                //Backface culling
                Vector3 t = Math3D.SurfaceNormal(vertexBuffer[indexBuffer[i + 0]], vertexBuffer[indexBuffer[i + 1]], vertexBuffer[indexBuffer[i + 2]]);
                Vector3 v = new Vector3(eyePosition.X - vertexBuffer[indexBuffer[i + 0]].X, eyePosition.Y - vertexBuffer[indexBuffer[i + 0]].Y, eyePosition.Z - vertexBuffer[indexBuffer[i + 0]].Z);
                if(Vector3.DotProduct(v, t) > 0) 
                {
                    PointF[] polytemp = new PointF[3];
                    polytemp[0] = buffr2D[indexBuffer[i + 0]];
                    polytemp[1] = buffr2D[indexBuffer[i + 1]];
                    polytemp[2] = buffr2D[indexBuffer[i + 2]];

                    g.FillPolygon(new SolidBrush(fillpen), polytemp);

                    g.DrawLine(Pens.Black, buffr2D[indexBuffer[i + 0]], buffr2D[indexBuffer[i + 1]]);
                    g.DrawLine(Pens.Black, buffr2D[indexBuffer[i + 1]], buffr2D[indexBuffer[i + 2]]);
                    g.DrawLine(Pens.Black, buffr2D[indexBuffer[i + 2]], buffr2D[indexBuffer[i + 0]]);
                }
            }

            g.Dispose(); //Clean-up

            return tmpBmp;
        }

        public void fillVertices(String objFile)
        {
            ObjLoader l = new ObjLoader();

            vertexBuffer = l.loadVertices(objFile);
            indexBuffer = l.loadIndices(objFile);

            originalVertices = (Vector3[]) vertexBuffer.Clone();

            lock (innerRotMatrixLock)
            {
                innerRotMatrix = new Matrix3x3();
                innerRotMatrix.matrix[0, 0] = 1; innerRotMatrix.matrix[1, 0] = 0; innerRotMatrix.matrix[2, 0] = 0;
                innerRotMatrix.matrix[0, 1] = 0; innerRotMatrix.matrix[1, 1] = 1; innerRotMatrix.matrix[2, 1] = 0;
                innerRotMatrix.matrix[0, 2] = 0; innerRotMatrix.matrix[1, 2] = 0; innerRotMatrix.matrix[2, 2] = 1;
            }
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
