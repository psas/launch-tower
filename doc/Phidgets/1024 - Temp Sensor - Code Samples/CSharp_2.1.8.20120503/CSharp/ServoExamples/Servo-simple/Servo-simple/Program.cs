/* - Servo simple -
 ****************************************************************************************
 * This simple example sets up a Servo objectm hooks the event handlers and opens it for 
 * device connections. Once a Servo is attached with a motor in motor 0 it will simulate 
 * moving the motor from position 15 to 231, displaying the event details to the console.
 * For a more detailed example, see the Servo-full example.
 *
 * Please note that this example was designed to work with only one Phidget Servo 
 * connected. For an example using multiple Phidget Servos, please see a "multiple" 
 * example in the Servos Examples folder.
 *
 * Copyright 2007 Phidgets Inc.  
 * This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/
 */
using System;
using System.Collections.Generic;
using System.Text;
//Needed for the Servo class, Phidget base classes, and the PhidgetException class
using Phidgets;
//Needed for the Phidget event handling classes
using Phidgets.Events; 
//Using this simply for the sleep() method so that the for loop will wail for the motor 
//to finish moving to the previous new position before setting a new position
using System.Threading; 

namespace Servo_simple
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //Declare a Servo object
                Servo servo = new Servo();

                //Hook the basic event handlers
                servo.Attach += new AttachEventHandler(servo_Attach);
                servo.Detach += new DetachEventHandler(servo_Detach);
                servo.Error += new ErrorEventHandler(servo_Error);

                //hook the phidget specific event handlers
                servo.PositionChange += new PositionChangeEventHandler
                                                    (servo_PositionChange);

                //open the Servo object for device connections
                servo.open();

                //Get the program to wait for a Servo to be attached
                Console.WriteLine("Waiting for Servo to be attached...");
                servo.waitForAttachment();

                //Set the initial position for the servo.  I set it to 15 here just 
                //since I am going to cycle through the positive values to show a basic 
                //full movement
                if (servo.Attached)
                {
                    servo.servos[0].Position = 15.00; 
                }
                double i;

                //Wait for the motor to finish getting into position and let the user
                //continue
                Console.WriteLine("Press any key to continue...");
                Console.Read();

                //Move the motor from position value 15 to 231m we sleep for 
                //10 milliseconds between each step to give the motor enough time to
                //move to the set position
                if (servo.Attached)
                {
                    for (i = 15.00; i < 232.00; i++)
                    {
                        Thread.Sleep(10);
                        servo.servos[0].Position = i;
                    } 
                }

                //Wait for the events to fire and display, user input will continue the 
                //program
                Console.WriteLine("Press any key to end...");
                Console.Read();

                //user input was read so we can terminate the program now, close the
                //Servo object
                servo.close();

                //set the object to null to get it out of memory
                servo = null;

                //if no exceptions were thrown at this point it is safe to terminate
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }

        }

        //Attach event handler...Display te serial number of the attached servo device
        static void servo_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("Servo {0} attached!", e.Device.SerialNumber.ToString());
        }

        //Detach event handler...Display the serial number of the detached servo device
        static void servo_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("Servo {0} detached!", e.Device.SerialNumber.ToString());
        }

        //Error event handler....Display the error description to the console
        static void servo_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }

        //Position CHange event handler...display which motor changed position and 
        //its new position value to the console
        static void servo_PositionChange(object sender, PositionChangeEventArgs e)
        {
            Console.WriteLine("Servo {0} Position {1}", e.Index, e.Position);
        }
    }
}
