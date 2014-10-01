using System;
using System.Collections.Generic;
using System.Text;

namespace CompassCalibrator
{
    public class Matrix3x3
    {
        public double[,] matrix;
        
        
        public Matrix3x3()
        {
            matrix = new double[3,3];
            for (int i = 0; i < 3; i++)
                for (int j = 0; j < 3; j++)
                    matrix[i, j] = 0;
        }

        public Matrix3x3(Matrix3x3 otherMatrix)
        {
            matrix = new double[3, 3];
            for (int i = 0; i < 3; i++)
                for (int j = 0; j < 3; j++)
                    matrix[i, j] = otherMatrix.matrix[i, j];
        }

        //Static Matrix Operations
        public static Vector3 Multiply(Vector3 A, Matrix3x3 B)
        {
            Vector3 ret = new Vector3(0, 0, 0);
            ret.X = B.matrix[0, 0] * A.X + B.matrix[1, 0] * A.Y + B.matrix[2, 0] * A.Z;
            ret.Y = B.matrix[0, 1] * A.X + B.matrix[1, 1] * A.Y + B.matrix[2, 1] * A.Z;
            ret.Z = B.matrix[0, 2] * A.X + B.matrix[1, 2] * A.Y + B.matrix[2, 2] * A.Z;
            return ret;
        }

        public static Matrix3x3 Multiply(Matrix3x3 A, Matrix3x3 B)
        {
            Matrix3x3 ret = new Matrix3x3();
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    ret.matrix[i, j] = B.matrix[i, 0] * A.matrix[0, j] + B.matrix[i, 1] * A.matrix[1, j] + B.matrix[i, 2] * A.matrix[2, j];
                }
            }
            return ret;
        }

        public static Matrix3x3 Multiply(double A, Matrix3x3 B)
        {
            Matrix3x3 ret = new Matrix3x3();
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    ret.matrix[i, j] = A * B.matrix[i,j];
                }
            }
            return ret;
        }

        //this normalizes the column vectors in a rotation matrix to unit length
        public static Matrix3x3 Normalize(Matrix3x3 A)
        {
            Matrix3x3 ret = new Matrix3x3();
            for (int i = 0; i < 3; i++)
            {
                double length = Math.Sqrt(A.matrix[i, 0] * A.matrix[i, 0] + A.matrix[i, 1] * A.matrix[i, 1] + A.matrix[i, 2] * A.matrix[i, 2]);
                ret.matrix[i, 0] = A.matrix[i, 0] / length;
                ret.matrix[i, 1] = A.matrix[i, 1] / length;
                ret.matrix[i, 2] = A.matrix[i, 2] / length;
            }
            return ret;
        }

        public static Matrix3x3 Transpose(Matrix3x3 A)
        {
            Matrix3x3 ret = new Matrix3x3();
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    ret.matrix[i, j] = A.matrix[j, i];
                }
            }
            return ret;
        }

        public static Matrix3x3 Add(Matrix3x3 A, Matrix3x3 B)
        {
            Matrix3x3 ret = new Matrix3x3();
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                {
                    ret.matrix[i, j] = A.matrix[j, i] + B.matrix[i, j];
                }
            }
            return ret;
        }

        public static double Determinant(Matrix3x3 A)
        {
            double ret = 0;
            ret += A.matrix[0, 0] * A.matrix[1, 1] * A.matrix[2, 2];
            ret += A.matrix[1, 0] * A.matrix[2, 1] * A.matrix[0, 2];
            ret += A.matrix[2, 0] * A.matrix[0, 1] * A.matrix[1, 2];
            ret -= A.matrix[2, 0] * A.matrix[1, 1] * A.matrix[0, 2];
            ret -= A.matrix[1, 0] * A.matrix[0, 1] * A.matrix[2, 2];
            ret -= A.matrix[0, 0] * A.matrix[2, 1] * A.matrix[1, 2];
            return ret;
        }
    }
}
