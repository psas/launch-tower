/*- AdvancedServo simple -
 ****************************************************************************************
 * This example simply displays the Phidget AdvancedServo serial number when it is 
 * attached and sets the servo positions, velocity, and acceleration to 0.  Then we will 
 * do a simple simulation of a basic movement of a servo motor at 100.00 velocity and 
 * 100.00 Acceleration.  I decided to leave out the current change event handler for 
 * easier readability. For a more detailed example, see the Servo-full example.
 * 
 * Please note that this example was designed to work with only one Phidget AdvanceServo 
 * connected. 
 * For an example showing how to use two Phidgets of the same time concurrently, please see the
 * Servo-multi example in the Servo Examples.

 * Copyright 2007 Phidgets Inc.  All rights reserved.*/

using System;
using System.Collections.Generic;
using System.Text;
//Needed for the AdvancedServo class, phidget base classes, and PhidgetException class
using Phidgets;
//Needed for the event handling classes 
using Phidgets.Events; 
//Using this simply for the sleep() method so that the for loop will wail for the motor 
//to finish moving to the previous new position before setting a new position
using System.Threading; 

namespace AdvancedServo_simple
{
    class Program
    {
        static void Main(string[] args)
        {
            //Declare an Advanced Servo object
            AdvancedServo advServo = new AdvancedServo();

            //Hook the basic event handlers
            advServo.Attach += new AttachEventHandler(advServo_Attach);
            advServo.Detach += new DetachEventHandler(advServo_Detach);
            advServo.Error += new ErrorEventHandler(advServo_Error);

            //hook the phidget specific event handlers
            //I decided to leave out the current change event handler for readability.
            advServo.PositionChange += new PositionChangeEventHandler
                (advServo_PositionChange);
            advServo.VelocityChange += new VelocityChangeEventHandler
                (advServo_VelocityChange);

            //open the Servo object for device connections
            advServo.open();

            //Get the program to wait for an Advanced Servo to be attached
            Console.WriteLine("Waiting for Advanced Servo to be attached...");
            advServo.waitForAttachment();

            //Set the initial position for the servo motor.  I set it to 15 here just 
            //since I am going to cycle through the positive values to show a basic 
            //full movement
            if (advServo.Attached)
            {
                advServo.servos[0].Acceleration = 1000.00; //max 4590, min 0
                advServo.servos[0].VelocityLimit = 1000.00; //max 1500, min 0
                advServo.servos[0].Position = 30.00; //range is -23 to 232
            }

            //Wait for the motor to finish getting to position and let user continue
            Console.WriteLine("Press any key to continue...");
            Console.Read();

            //Move the motor from position value 30 to 200, we sleep for 500 
            //milliseconds to give the motor enough time to move to the set position
            if (advServo.Attached)
            {
                advServo.servos[0].Position = 200; //range is -23 to 232
                Thread.Sleep(500);
            }

            //Wait for the events to fire and display, user input will continue the 
            //program
            Console.WriteLine("Press any key to end...");
            Console.Read();


            //user input was read so we can terminate the program now, close the 
            //AdvancedServo object. Left out the current change event handler for
            //readability.
            advServo.PositionChange -= new PositionChangeEventHandler
                (advServo_PositionChange);
            advServo.VelocityChange -= new VelocityChangeEventHandler
                (advServo_VelocityChange);

            //user input was read so we can terminate the program now, close the 
            //AdvancedServo object
            advServo.close();

            //set the object to null to get it out of memory
            advServo = null;

            Console.WriteLine("ok");
        }

        //Attach event handler. Display serial number of the attached servo device
        static void advServo_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("AdvancedServo {0} attached!", 
                                    e.Device.SerialNumber.ToString());
            AdvancedServo attached = (AdvancedServo)sender;

            for (int i = 0; i < attached.servos.Count; i++)
            {
                attached.servos[i].Position = 30.00; //range is -23 to 232
                attached.servos[i].VelocityLimit = 1000.00; //max 1500, min 0
                attached.servos[i].Acceleration = 1000.00; //max 4590, min 0
            }
        }

        //Detach event handler...Display the serial number of the detached servo device
        static void advServo_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("AdvancedServo {0} detached!",
                                    e.Device.SerialNumber.ToString());
        }

        //Error event handler....Display the error description to the console
        static void advServo_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine("AdvancedServo Error: {0}", e.Description);
        }    

        //Position CHange event handler...display which motor changed position and its
        //new position value to the console
        static void advServo_PositionChange(object sender, PositionChangeEventArgs e)
        {
            Console.WriteLine("Motor #{0} - Actual Position: {1}", 
                                    e.Index, e.Position.ToString());
        }

        //Velocity CHange event handler....display which motor's velocity is changing and 
        //its new value to the console
        static void advServo_VelocityChange(object sender, VelocityChangeEventArgs e)
        {
            Console.WriteLine("Motor #{0} - Actual Velocity: {1}", e.Index, 
                                    e.Velocity.ToString());
        }
    }
}
