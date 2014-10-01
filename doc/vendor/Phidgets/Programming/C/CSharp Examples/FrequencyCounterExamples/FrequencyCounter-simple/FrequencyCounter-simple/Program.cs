/* - FrequencyCounter simple -
 ****************************************************************************************
 * This simple example simply creates an frequencycounter object, initializes it, hooks the 
 * event handlers and opens it.  It then waits for an frequencycounter to be attached and 
 * waits for events to be fired. We preset the sensitivity of each axis to 1.0 to make it
 * easier to see the event data.  For a more detailed example with the ability to see and 
 * manipulate all of the frequencycounter Phidget's properties, see the FrequencyCounter-full 
 * example.
 * 
 * Please note that this example was designed to work with only one Phidget FrequencyCounter
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
using Phidgets; //needed for the frequencycounter class and the phidgets exception class
using Phidgets.Events; //needed for the phidget event handling

namespace FrequencyCounter_simple
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //Declare an frequencycounter object
                FrequencyCounter freq = new FrequencyCounter();

                //Hook the basic event handlers
                freq.Attach += new AttachEventHandler(accel_Attach);
                freq.Detach += new DetachEventHandler(accel_Detach);
                freq.Error += new ErrorEventHandler(accel_Error);

                //hook the phidget specific event handlers
                freq.Count += new FrequencyCounterCountEventHandler(freq_Count);

                //open the acclerometer object for device connections
                freq.open();

                //get the program to wait for an frequencycounter device to be attached
                Console.WriteLine("Waiting for frequencycounter to be attached....");
                freq.waitForAttachment();

                //enable the inputs
                for (int i = 0; i < freq.inputs.Count; i++)
                {
                    freq.inputs[i].Enabled = true;
                    freq.inputs[i].Filter = FrequencyCounterInput.FilterType.LOGIC_LEVEL;
                }

                //Get the program to wait for user input before moving on so that we can
                //watch for some events
                Console.WriteLine("Press any key to end");
                Console.Read();

                //If user input has been read, we can now terminate the program, so 
                //close the phidget object
                freq.close();

                //set the object to null to clear it from memory
                freq = null;

                //if no exceptions have been trhown at this point, the program can 
                //terminate safely
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
        }

        static void freq_Count(object sender, FrequencyCounterCountEventArgs e)
        {
            Console.WriteLine("Counts on {0}: {1} in {2} - Freq: {3}Hz", e.Index, e.Counts, e.Time, ((FrequencyCounter)sender).inputs[e.Index].Frequency);
        }

        //Attach event handler...Display the serial number of the attached 
        //frequencycounter to the console
        static void accel_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("FrequencyCounter {0} attached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Detach event handler...Display the serial number of the detached frequencycounter
        //to the console
        static void accel_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("FrequencyCounter {0} detached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Error event handler...Display the description of the error to the console
        static void accel_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }
    }
}
