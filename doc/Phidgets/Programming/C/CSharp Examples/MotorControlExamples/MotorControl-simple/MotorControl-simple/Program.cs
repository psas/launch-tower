/* - MotorControl simple -
 ****************************************************************************************
 * This example simply creates a MotorControl object, hooks the event handlers, and opens
 * it for connections.  Once a MotorControl Phidget has been attached, it will accelerate 
 * the motor to full speed in one direction, then speed down and accelerate in the other 
 * direction before stoping the motor.
 * For a more detailed example, please see the MotorControl-full example.
 *
 * Please note that this example was designed to work with only one Phidget MotorControl 
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
//Needed for the MotorControl class, Phidget base classes, and the PhidgetException class
using Phidgets; 
//Needed for the Phidget event handling classes
using Phidgets.Events; 
using System.Threading; 

namespace MotorControl_simple
{
    class Program
    {
        //Declare a MotorControl object
        static MotorControl motoControl;

        static void Main(string[] args)
        {
            try
            {
                //Initiallize the MotorControl object
                motoControl = new MotorControl();

                //Hook the basic event handlers
                motoControl.Attach += new AttachEventHandler(motoControl_Attach);
                motoControl.Detach += new DetachEventHandler(motoControl_Detach);
                motoControl.Error += new ErrorEventHandler(motoControl_Error);

                //Hook the phidget specific event handlers
                motoControl.CurrentChange += new CurrentChangeEventHandler
                                                    (motoControl_CurrentChange);
                motoControl.InputChange += new InputChangeEventHandler
                                                    (motoControl_InputChange);
                motoControl.VelocityChange += new VelocityChangeEventHandler
                                                    (motoControl_VelocityChange);

                //open the object for MotorControl device connections
                motoControl.open();

                //Wait for a MotorControl device to be attached
                Console.WriteLine("Waiting for MotorControl to be attached....");
                motoControl.waitForAttachment();

                //Set the acceleration to 100 for this example and intialize the velocity 
                //to 0.00 (stopped)
                motoControl.motors[0].Acceleration = 100.00;
                motoControl.motors[0].Velocity = 0.00;

                //Prompt for user inpu to continue
                Console.WriteLine("Press any button to continue...");
                Console.Read();

                //Slowly speed the motor to full speed going one direction
                double i;
                for (i = 0.00; i < 100; i++)
                {
                    Thread.Sleep(100);
                    motoControl.motors[0].Velocity = i;
                }

                //Slowly speed down and start accelerating in the other direction
                for (i = 100; i > -100; i--)
                {
                    Thread.Sleep(100);
                    motoControl.motors[0].Velocity = i;
                }

                //Stop the motor
                motoControl.motors[0].Velocity = 0.00;

                //Prompt the user for input to terminate
                Console.WriteLine("Press any key to end...");
                Console.Read();

                //User input was read so we can terminate, close the MotorControl object
                motoControl.close();

                //Set the MotorControl object to null to get it out of memory
                motoControl = null;

                //If no exceptions were thrown by this point it is ok to terminate
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
        }

        //Attach event hanlder. Display serial number of attached MotorControl phidget
        static void motoControl_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("MotorControl {0} attached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Detach event handler. Display serial number of detached MotorControl phidget
        static void motoControl_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("MotorControl {0} detached!", 
                                    e.Device.SerialNumber.ToString());
        }

        //Error event handler...Display the error description to the console
        static void motoControl_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }

        //Current change event handler. Display the index and the new current value to 
        //the console
        static void motoControl_CurrentChange(object sender, CurrentChangeEventArgs e)
        {
            Console.WriteLine("Current Index {0} Current {1}", e.Index, e.Current);
        }

        //Input change event handler. Dislay the index and new input value to console
        static void motoControl_InputChange(object sender, InputChangeEventArgs e)
        {
            Console.WriteLine("Input Index {0} Value {1}", e.Index, e.Value);
        }

        //Velocity change event handler. Display the motor index and the current 
        //velocity value to the console.
        static void motoControl_VelocityChange(object sender, VelocityChangeEventArgs e)
        {
            Console.WriteLine("Index {0} Velocity {1}", e.Index, e.Velocity);
        }
    }
}
