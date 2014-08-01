using System;
using System.Collections.Generic;
using System.Text;

namespace CompassCalibrator
{
    class Math3D
    {
        public static Vector3 SurfaceNormal(Vector3 origin, Vector3 A, Vector3 B)
        {
            //Transform to origin
            Vector3 transA = new Vector3(A.X - origin.X, A.Y - origin.Y, A.Z - origin.Z);
            Vector3 transB = new Vector3(B.X - origin.X, B.Y - origin.Y, B.Z - origin.Z);
            Vector3 norm = Vector3.CrossProduct(transA, transB);
            return norm;
        }

        //rotates points from one frame of reference to another using a rotation matrix
        public static void RotatePoints(Matrix3x3 rotMatrix, List<Vector3> bodyFramePoints, List<Vector3> referenceFramePoints)
        {
            for (int i = 0; i < referenceFramePoints.Count; i++)
                bodyFramePoints[i] = Matrix3x3.Multiply(referenceFramePoints[i], rotMatrix);
        }

        //computes a rotation matrix based on a previous rotation matrix and a series of angle rotations
        public static Matrix3x3 nextRotMatrix(Matrix3x3 rotMatrix, Vector3 rotations)
        {
            //assuming C(t2) = C(t1)A(t1) where A(t1) is the rotation matrix relating the body frame between time t1 and t2 (I + B)
            //A(t1) = [  1  y  z ]  for small angles (<180 degrees). x, y and z are rotations about the axes
            //        [ -y  1  x ]
            //        [ -z -x  1 ]

            Matrix3x3 A = new Matrix3x3();
            A.matrix[0, 0] = 1;             A.matrix[1, 0] = rotations.Y;   A.matrix[2, 0] = rotations.Z;
            A.matrix[0, 1] = -rotations.Y;  A.matrix[1, 1] = 1;             A.matrix[2, 1] = rotations.X;
            A.matrix[0, 2] = -rotations.Z;  A.matrix[1, 2] = -rotations.X;  A.matrix[2, 2] = 1;

            //Normalized to keep the vectors unit length
            Matrix3x3 newRotMatrix = Matrix3x3.Normalize(Matrix3x3.Multiply(rotMatrix, A));

            return newRotMatrix;
        }

        //computes a rotation matrix based on a previous rotation matrix and a series of angle rotations
        //better algorithm then nextRotMatrix - still need to keep rotation < 180 degrees
        //This uses the rectangular rule
        public static Matrix3x3 nextRotMatrix2(Matrix3x3 rotMatrix, Vector3 rotations)
        {
            //This uses C2 = C1( I + (sin(w)/w)B + ((1 - cos(w))/w)B^2 )
            //where w is the total rotation, I is the identity matrix and B is the scew symmetric form of the rotation vector

            Matrix3x3 I = new Matrix3x3();
            I.matrix[0, 0] = 1; I.matrix[1, 0] = 0; I.matrix[2, 0] = 0;
            I.matrix[0, 1] = 0; I.matrix[1, 1] = 1; I.matrix[2, 1] = 0;
            I.matrix[0, 2] = 0; I.matrix[1, 2] = 0; I.matrix[2, 2] = 1;

            Matrix3x3 B = new Matrix3x3();
            B.matrix[0, 0] = 0;             B.matrix[1, 0] = -rotations.Z;  B.matrix[2, 0] = rotations.Y;
            B.matrix[0, 1] = rotations.Z;   B.matrix[1, 1] = 0;             B.matrix[2, 1] = -rotations.X;
            B.matrix[0, 2] = -rotations.Y;  B.matrix[1, 2] = rotations.X;   B.matrix[2, 2] = 0;

            double totalRotation = Vector3.Length(rotations);

            Matrix3x3 smallRot;
            //Don't divide by 0
            if (totalRotation > 0)
            {
                smallRot = Matrix3x3.Add(Matrix3x3.Add(
                    I,
                    Matrix3x3.Multiply(Math.Sin(totalRotation) / totalRotation, B)),
                    Matrix3x3.Multiply((1 - Math.Cos(totalRotation)) / (totalRotation * totalRotation), Matrix3x3.Multiply(B, B))
                );
            }
            else
                smallRot = I;

            Matrix3x3 newRotMatrix = Matrix3x3.Multiply(rotMatrix, smallRot);

            //If these are off, it's because of slight errors - these are no longer Rotation matrices, strictly speaking
            //The determinant should be 1
            //double det = Matrix3x3.Determinant(newRotMatrix)
            //This should give an Identity matrix
            //Matrix3x3 I = Matrix3x3.Multiply(Matrix3x3.Transpose(newRotMatrix), newRotMatrix);

            //Normalize to the the vectors Unit length
            //return newRotMatrix;
            return Matrix3x3.Normalize(newRotMatrix);

            //TODO: We should really be doing an orthonormalization
        }

        public static Matrix3x3 getRotationMatrix (Vector3 from1, Vector3 to1)
        {
            Vector3 from = Vector3.Normalize(from1);
            Vector3 to = Vector3.Normalize(to1);

            Vector3 vs = Vector3.CrossProduct(from, to); // axis multiplied by sin

            Vector3 v = Vector3.Normalize(vs); // axis of rotation
            double c = Vector3.DotProduct(from, to); // cos angle

            Vector3 vc = Vector3.Multiply(1.0 - c, v); //axis multiplied by (1-cos angle)

            Vector3 vp = new Vector3(vc.X *= v.Y, vc.Z *= v.X, vc.Y *= v.Z); //some cross multiplies

            Matrix3x3 rotM = new Matrix3x3();
            //----------------------------------------------------------------------------------------------------------
            rotM.matrix[0, 0] = vc.X * v.X + c; rotM.matrix[1, 0] = vp.X - vs.Z;    rotM.matrix[2, 0] = vp.Y + vs.Y;
            rotM.matrix[0, 1] = vp.X + vs.Z;    rotM.matrix[1, 1] = vc.Y * v.Y + c; rotM.matrix[2, 1] = vp.Z - vs.X;
            rotM.matrix[0, 2] = vp.Y - vs.Y;    rotM.matrix[1, 2] = vp.Z + vs.X;    rotM.matrix[2, 2] = vc.Z * v.Z + c;
            //----------------------------------------------------------------------------------------------------------

            //return rotM;
            return Matrix3x3.Normalize(rotM);
        }
    }
}
