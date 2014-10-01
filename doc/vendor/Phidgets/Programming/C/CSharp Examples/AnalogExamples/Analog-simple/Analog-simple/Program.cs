/* - Analog simple -
 ****************************************************************************************
 * 
 * Please note that this example was designed to work with only one Phidget Analog
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
using Phidgets; //needed for the analog class and the phidgets exception class
using Phidgets.Events; //needed for the phidget event handling

namespace Analog_simple
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //Declare an analog object
                Analog analog = new Analog();

                //Hook the basic event handlers
                analog.Attach += new AttachEventHandler(accel_Attach);
                analog.Detach += new DetachEventHandler(accel_Detach);
                analog.Error += new ErrorEventHandler(accel_Error);

                //open the acclerometer object for device connections
                analog.open();

                //get the program to wait for an analog device to be attached
                Console.WriteLine("Waiting for analog to be attached....");
                analog.waitForAttachment();

                //enabled each output at max voltage.
                for (int i = 0; i < analog.outputs.Count; i++)
                {
                    analog.outputs[i].Voltage = analog.outputs[i].VoltageMax;
                    analog.outputs[i].Enabled = true;
                }

                //Get the program to wait for user input before moving on so that we can
                //watch for some events
                Console.WriteLine("Press any key to end");
                Console.Read();

                //Disable them all
                for (int i = 0; i < analog.outputs.Count; i++)
                {
                    analog.outputs[i].Enabled = false;
                }

                //If user input has been read, we can now terminate the program, so 
                //close the phidget object
                analog.close();

                //set the object to null to clear it from memory
                analog = null;

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
        //analog to the console
        static void accel_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("Analog {0} attached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Detach event handler...Display the serial number of the detached analog
        //to the console
        static void accel_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("Analog {0} detached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Error event handler...Display the description of the error to the console
        static void accel_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }
    }
}
