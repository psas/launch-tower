/* - Encoder simple -
 ****************************************************************************************
 * This example simply creates an Encoder object, hooks the event handlers, and then 
 * waits for an encoder is attached. Once it is attached, the program will wait for user 
 * input so that we can see the event data on the screen when using the encoder.
 * For a more detailed example, please see the Encoder-full example.
 *
 * Please note that this example was designed to work with only one Phidget Encoder 
 * connected.  
 * For an example showing how to use two Phidgets of the same time concurrently, please see the
 * Servo-multi example in the Servo Examples.
 *
 * Copyright 2007 Phidgets Inc.  
 * This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/
 */

using System;
using System.Collections.Generic;
using System.Text;
using Phidgets; //Needed for the Encoder class and the PhidgetException class
using Phidgets.Events; //Needed for the event handling classes

namespace Encoder_simple
{
    class Program
    {
        //Declare a Phidgets.Encoder object (there is a naming ambiguitity in .NET since
        //there is an Encoder object in the .NET library. So need to specify it as a 
        //phidgets one here in this case
        static Phidgets.Encoder encoder;

        static void Main(string[] args)
        {
            try
            {
                //Initialize the Encoder object
                encoder = new Phidgets.Encoder();

                //Hook the basic event handlers
                encoder.Attach += new AttachEventHandler(encoder_Attach);
                encoder.Detach += new DetachEventHandler(encoder_Detach);
                encoder.Error += new ErrorEventHandler(encoder_Error);

                //Hook the phidget specific event handlers
                encoder.InputChange += new InputChangeEventHandler(encoder_InputChange);
                encoder.PositionChange += new EncoderPositionChangeEventHandler
                                                    (encoder_PositionChange);

                //open the object for connections
                encoder.open();

                //Wait for an encoder device to be attached before continuing
                Console.WriteLine("Waiting for Encoder to be attached....");
                encoder.waitForAttachment();

                //Wait for user input before continuing so that we can see the events 
                //being sent when using the encoder
                Console.WriteLine("Press any key to end...");
                Console.Read();

                //Since user input is read we can terminate the program, so we'll close
                //the encoder object
                encoder.close();

                //set the object to null to get it out of memory
                encoder = null;

                //if no expcetions where thrown at this point it is safe to terminate
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
        }

        //Attach event handler...Display the serial number of the attached Encoder to
        //the console
        static void encoder_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("Encoder {0} attached!", 
                                e.Device.SerialNumber.ToString());
        }

        //Detach event handler...Display the serial number of the detached Encoder to 
        //the console
        static void encoder_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("Encoder {0} detached!", e.Device.SerialNumber.ToString());
        }

        //Error event handler...Display the error description to the console
        static void encoder_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }

        //Input Change event handler...DIsplay the new value of te digital input 
        //(the pushbutton) to the console
        static void encoder_InputChange(object sender, InputChangeEventArgs e)
        {
            Console.WriteLine("Input {0} value {1}", e.Index, e.Value);
        }

        //Position change event handler...Display the index of the encoder that change, 
        //the position change value, the time between changes, and the current encoder 
        //position value to the console
        static void encoder_PositionChange(object sender, 
                                               EncoderPositionChangeEventArgs e)
        {
            Console.WriteLine("Encoder {0} Change {1} Time {2} Position {3}", e.Index,
                                   e.PositionChange, e.Time, encoder.encoders[e.Index]);
        }
    }
}
