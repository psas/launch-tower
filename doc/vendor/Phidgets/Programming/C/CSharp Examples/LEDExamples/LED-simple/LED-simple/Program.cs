/* - LED simple -
 ****************************************************************************************
 * This simple example creates a LED object, hooks the event handlers, then opens and 
 * waits for a LED Phidget to be attached. Once on has been attaced it will cycle through
 * few leds and slowly turn up their brightness from 0 to 100 and then turn them off 
 * before terminating the program after user input. For a more detailed example, please 
 * see the LED-full example.
 *
 * Please note that this example was designed to work with only one Phidget LED
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
//Needed for the LED class, phidget base classes, and the PhidgetException class
using Phidgets;
//Needed for the event handling classes 
using Phidgets.Events; 
//Used to give a pause in between setting the LED brightness level
using System.Threading; 
namespace LED_simple
{
    class Program
    {
        //Declare an LED object
        static LED led;

        static void Main(string[] args)
        {
            try
            {
                //Initialize the LED object
                led = new LED();

                //Hook the basic event handlers
                led.Attach += new AttachEventHandler(led_Attach);
                led.Detach += new DetachEventHandler(led_Detach);
                led.Error += new ErrorEventHandler(led_Error);

                //Open the LED object for LED Phidget connections
                led.open();

                //Wait for a Phidget LED to be attached
                Console.WriteLine("Waiting for a LED phidget to be attached...");
                led.waitForAttachment();

                //For this example, I had a Phidget LED with 6 leds plugged in to 
                //slots 0-5 respectively
                //We'll cyle through each led slowly raising the brightness from 0-100
                int i;
                int j;
                for (i = 0; i < 6; i++)
                {
                    for(j = 0; j <= 100; j++)
                    {
                        Thread.Sleep(10);
                        led.leds[i] = j;
                    } 
                }

                //Turn off each led that we turned on
                for (i = 0; i < 6; i++)
                {
                    Thread.Sleep(10);
                    led.leds[i] = 0;
                }

                //Prompt the user for input to end the program
                Console.WriteLine("Press any key to end...");
                Console.Read();

                //User input was rad so we can terminate, close the LED object
                led.close();

                //Set the object to null to get it out of memory
                led = null;

                //If no excpetions were thrown at this point everything is ok
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
        }

        //Attach event handler. Display the serial number of the attached LED Phidget 
        //to the console
        static void led_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("PhidgetLED {0} attached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Detach event handler...Display the serial number of the detached LED phidget
        //to the console
        static void led_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("PhidgetLED {0} detached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Error event handler...Display the error description to the console
        static void led_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }
    }
}
