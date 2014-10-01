/* - Accelerometer simple -
 ****************************************************************************************
 * This simple example simply creates an accelerometer object, initializes it, hooks the 
 * event handlers and opens it.  It then waits for an accelerometer to be attached and 
 * waits for events to be fired. We preset the sensitivity of each axis to 1.0 to make it
 * easier to see the event data.  For a more detailed example with the ability to see and 
 * manipulate all of the accelerometer Phidget's properties, see the Accelerometer-full 
 * example.
 * 
 * Please note that this example was designed to work with only one Phidget Accelerometer
 * connected. For an 
 * example showing how to use two Phidgets of the same time concurrently, please see the
 * Servo-multi example in the Servo Examples.
 * 
 * Copyright 2007 Phidgets Inc.  
 * This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/
 */
using System;
using System.Collections.Generic;
using System.Text;
using Phidgets; //needed for the accelerometer class and the phidgets exception class
using Phidgets.Events; //needed for the phidget event handling

namespace Accelerometer_simple
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //Declare an accelerometer object
                Accelerometer accel = new Accelerometer();

                //Hook the basic event handlers
                accel.Attach += new AttachEventHandler(accel_Attach);
                accel.Detach += new DetachEventHandler(accel_Detach);
                accel.Error += new ErrorEventHandler(accel_Error);

                //hook the phidget specific event handlers
                accel.AccelerationChange += new AccelerationChangeEventHandler
                                                            (accel_AccelerationChange);

                //open the acclerometer object for device connections
                accel.open();

                //get the program to wait for an accelerometer device to be attached
                Console.WriteLine("Waiting for accelerometer to be attached....");
                accel.waitForAttachment();

                //Set the sensitivity of each of the available axes on the accelerometer
                //to 1.0 so that we can actually see the changes instead a flurry of 
                //text on the screen
                for (int i = 0; i < accel.axes.Count; i++)
                {
                    accel.axes[i].Sensitivity = 1.0;
                }

                //Get the program to wait for user input before moving on so that we can
                //watch for some events
                Console.WriteLine("Press any key to end");
                Console.Read();

                //If user input has been read, we can now terminate the program, so 
                //close the phidget object
                accel.close();

                //set the object to null to clear it from memory
                accel = null;

                //if no exceptions have been trhown at this point, the program can 
                //terminate safely
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
        }

        //Attach event handler...Display the serial number of the attached 
        //accelerometer to the console
        static void accel_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("Accelerometer {0} attached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Detach event handler...Display the serial number of the detached accelerometer
        //to the console
        static void accel_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("Accelerometer {0} detached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Error event handler...Display the description of the error to the console
        static void accel_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }

        //Acceleration change event handler...Display which axis the device is 
        //accelerating in as well as the measured acceleration value
        static void accel_AccelerationChange(object sender, 
                                                AccelerationChangeEventArgs e)
        {
            Console.WriteLine("Axes {0} Acceleration {1}", e.Index, e.Acceleration);
        }
    }
}
