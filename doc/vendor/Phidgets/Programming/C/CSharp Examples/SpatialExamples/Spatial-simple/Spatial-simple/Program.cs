/* - Spatial simple -
 ****************************************************************************************
 * This simple example simply creates a spatial object, initializes it, hooks the 
 * event handlers and opens it.  It then waits for a PhidgetSpatial to be attached and 
 * waits for events to be fired.  For a more detailed example with the ability to see and 
 * manipulate all of the spatial Phidget's properties, see the Spatial-full 
 * example.
 * 
 * Please note that this example was designed to work with only one Phidget Spatial
 * connected. For an 
 * example showing how to use two Phidgets of the same time concurrently, please see the
 * Servo-multi example in the Servo Examples.
 * 
 * Copyright 2010 Phidgets Inc.  
 * This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/
 */
using System;
using System.Collections.Generic;
using System.Text;
using Phidgets; //needed for the spatial class and the phidgets exception class
using Phidgets.Events; //needed for the phidget event handling

namespace Spatial_simple
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //Declare an spatial object
                Spatial spatial = new Spatial();

                //Hook the basic event handlers
                spatial.Attach += new AttachEventHandler(accel_Attach);
                spatial.Detach += new DetachEventHandler(accel_Detach);
                spatial.Error += new ErrorEventHandler(accel_Error);

                //hook the phidget specific event handlers
                spatial.SpatialData += new SpatialDataEventHandler(spatial_SpatialData);

                //open the acclerometer object for device connections
                spatial.open();

                //get the program to wait for an spatial device to be attached
                Console.WriteLine("Waiting for spatial to be attached....");
                spatial.waitForAttachment();

                //Set the data rate so the events aren't crazy
                spatial.DataRate = 496; //multiple of 8

                //Get the program to wait for user input before moving on so that we can
                //watch for some events
                Console.WriteLine("Press any key to end");
                Console.Read();

                //If user input has been read, we can now terminate the program, so 
                //close the phidget object
                spatial.close();

                //set the object to null to clear it from memory
                spatial = null;

                //if no exceptions have been trhown at this point, the program can 
                //terminate safely
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
        }

        //spatial data handler - all spatial data tied together.
        static void spatial_SpatialData(object sender, SpatialDataEventArgs e)
        {
            Console.WriteLine("SpatialData event time:" + e.spatialData[0].Timestamp.TotalSeconds.ToString());
            if (e.spatialData[0].Acceleration.Length > 0)
                Console.WriteLine(" Acceleration: " + e.spatialData[0].Acceleration[0] + ", " + e.spatialData[0].Acceleration[1] + ", " + e.spatialData[0].Acceleration[2]);
            if (e.spatialData[0].AngularRate.Length > 0)
                Console.WriteLine(" Angular Rate: " + e.spatialData[0].AngularRate[0] + ", " + e.spatialData[0].AngularRate[1] + ", " + e.spatialData[0].AngularRate[2]);
            if (e.spatialData[0].MagneticField.Length > 0)
                Console.WriteLine(" Magnetic Field: " + e.spatialData[0].MagneticField[0] + ", " + e.spatialData[0].MagneticField[1] + ", " + e.spatialData[0].MagneticField[2]);
        }

        //Attach event handler...Display the serial number of the attached 
        //spatial to the console
        static void accel_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("Spatial {0} attached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Detach event handler...Display the serial number of the detached spatial
        //to the console
        static void accel_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("Spatial {0} detached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Error event handler...Display the description of the error to the console
        static void accel_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }
    }
}
