/* - Bridge simple -
 ****************************************************************************************
 * 
 * Please note that this example was designed to work with only one Phidget Bridge
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
using Phidgets; //needed for the bridge class and the phidgets exception class
using Phidgets.Events; //needed for the phidget event handling

namespace Bridge_simple
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //Declare an bridge object
                Bridge bridge = new Bridge();

                //Hook the basic event handlers
                bridge.Attach += new AttachEventHandler(accel_Attach);
                bridge.Detach += new DetachEventHandler(accel_Detach);
                bridge.Error += new ErrorEventHandler(accel_Error);

                //hook the phidget specific event handlers
                bridge.BridgeData += new BridgeDataEventHandler(bridge_BridgeData);

                //open the acclerometer object for device connections
                bridge.open();

                //get the program to wait for an bridge device to be attached
                Console.WriteLine("Waiting for bridge to be attached....");
                bridge.waitForAttachment();

                //enable the inputs
                for (int i = 0; i < bridge.bridges.Count; i++)
                {
                    bridge.bridges[i].Enabled = true;
                }

                //Get the program to wait for user input before moving on so that we can
                //watch for some events
                Console.WriteLine("Press any key to end");
                Console.Read();

                //If user input has been read, we can now terminate the program, so 
                //close the phidget object
                bridge.close();

                //set the object to null to clear it from memory
                bridge = null;

                //if no exceptions have been trhown at this point, the program can 
                //terminate safely
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
        }

        static void bridge_BridgeData(object sender, BridgeDataEventArgs e)
        {
            Console.WriteLine("Bridge {0} Data {1}", e.Index, e.Value);
        }

        //Attach event handler...Display the serial number of the attached 
        //bridge to the console
        static void accel_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("Bridge {0} attached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Detach event handler...Display the serial number of the detached bridge
        //to the console
        static void accel_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("Bridge {0} detached!", 
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
