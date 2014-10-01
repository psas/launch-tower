using System;
using System.Collections.Generic;
using System.Text;

namespace Wireframe
{
    class Vector3
    {
        public double X;
        public double Y;
        public double Z;

        public Vector3(double x, double y, double z)
        {
            X = x;
            Y = y;
            Z = z;
        }

        //Static Vector Operations
        public static Vector3 CrossProduct(Vector3 A, Vector3 B)
        {
            Vector3 cross = new Vector3(0, 0, 0);
            cross.X = A.Y * B.Z - A.Z * B.Y;
            cross.Y = A.Z * B.X - A.X * B.Z;
            cross.Z = A.X * B.Y - A.Y * B.X;
            return cross;
        }

        public static double DotProduct(Vector3 A, Vector3 B)
        {
            double dot = A.X * B.X + A.Y * B.Y + A.Z * B.Z;
            return dot;
        }

        public static Vector3 Multiply(double A, Vector3 B)
        {
            Vector3 ret = new Vector3(B.X*A, B.Y*A, B.Z*A);
            return ret;
        }

        public static Vector3 Subtract(Vector3 A, Vector3 B)
        {
            Vector3 diff = new Vector3(0, 0, 0);
            diff.X = A.X-B.X;
            diff.Y = A.Y-B.Y;
            diff.Z = A.Z-B.Z;
            return diff;
        }

        public static double Length(Vector3 A)
        {
            return Math.Sqrt(A.X * A.X + A.Y * A.Y + A.Z * A.Z);
        }

        public static Vector3 Normalize(Vector3 A)
        {
            Vector3 ret = new Vector3(0,0,0);
            double length = Vector3.Length(A);
            ret.X = A.X / length;
            ret.Y = A.Y / length;
            ret.Z = A.Z / length;
            return ret;
        }
    }
}
