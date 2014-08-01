using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Globalization;

namespace Wireframe
{
    class ObjLoader
    {
        public ObjLoader()
        {
        }

        public Vector3[] loadVertices(String filename)
        {
            FileStream fs = new FileStream(filename, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
            StreamReader re = new StreamReader(fs);


            //Parse the linked list into an array
            Vector3[] vertexArray = new Vector3[8192];
            int numEntries = 0;

            double minX = 10000;
            double minY = 10000;
            double minZ = 10000;
            double maxX = -10000;
            double maxY = -10000;
            double maxZ = -10000;

            while (!re.EndOfStream)
            {
                string input = re.ReadLine();
                if (input.StartsWith("v"))
                {
                    string[] a = input.Split(' ');
                    Vector3 v = new Vector3(Double.Parse(a[1], CultureInfo.InvariantCulture), Double.Parse(a[2], CultureInfo.InvariantCulture), Double.Parse(a[3], CultureInfo.InvariantCulture));

                    if (v.X > maxX)
                        maxX = v.X;
                    if (v.Y > maxY)
                        maxY = v.Y;
                    if (v.Z > maxZ)
                        maxZ = v.Z;

                    if (v.X < minX)
                        minX = v.X;
                    if (v.Y < minY)
                        minY = v.Y;
                    if (v.Z < minZ)
                        minZ = v.Z;

                    vertexArray[numEntries++] = v;
                }
            }

            double midX = (minX + maxX) / 2.0;
            double midY = (minY + maxY) / 2.0;
            double midZ = (minZ + maxZ) / 2.0;

            Vector3[] retArray = new Vector3[numEntries];
            for (int i = 0; i < numEntries; i++)
            {
                retArray[i] = vertexArray[i];
                retArray[i].X -= midX;
                retArray[i].Y -= midY;
                retArray[i].Z -= midZ;
            }

            return retArray;
        }

        public int[] loadIndices(String filename)
        {
            FileStream fs = new FileStream(filename, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
            StreamReader re = new StreamReader(fs);

            int[] indexArray = new int[20000];
            int numEntries = 0;

            while (!re.EndOfStream)
            {
                string input = re.ReadLine();
                if (input.StartsWith("f"))
                {
                    string[] a = input.Split(' ');
                    indexArray[numEntries++] = Int32.Parse(a[1]);
                    indexArray[numEntries++] = Int32.Parse(a[2]);
                    indexArray[numEntries++] = Int32.Parse(a[3]);
                }
            }

            int[] retArray = new int[numEntries];
            for (int i = 0; i < numEntries; i++)
                retArray[i] = indexArray[i]-1;

            return retArray;
        }

    }
}
