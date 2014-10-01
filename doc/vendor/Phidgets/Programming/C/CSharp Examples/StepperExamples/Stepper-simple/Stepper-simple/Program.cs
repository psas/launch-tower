/* - Stepper simple -
 ****************************************************************************************
 * This simple example sets up a Stepper object, hooks the event handlers and opens it 
 * for device connections.  Once a Stepper is attached with a motor in motor 0 it will 
 * reset the motor to position 0 and then move the motor to position 2000, displaying the
 * event details to the console. For a more detailed example, see the Stepper-full 
 * example.
 * 
 * Please note that this example was designed to work with only one Phidget Stepper 
 * connected. 
 * For an example showing how to use two Phidgets of the same time concurrently, please see the
 * Servo-multi example in the Servo Examples.
 *
 * Copyright 2007 Phidgets Inc.  All rights reserved.
 * This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/
 */

using System;
using System.Collections.Generic;
using System.Text;
using Phidgets; //For the Stepper class and the exceptions class
using Phidgets.Events; //For the event handling classes

namespace Stepper_simple
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //Declare a Stepper object
                Stepper stepper = new Stepper();

                //Hook the basic event handlers
                stepper.Attach += new AttachEventHandler(stepper_Attach);
                stepper.Detach += new DetachEventHandler(stepper_Detach);
                stepper.Error += new ErrorEventHandler(stepper_Error);

                //Hook the Stepper specific event handlers
                stepper.CurrentChange += new CurrentChangeEventHandler
                                                    (stepper_CurrentChange);
                stepper.InputChange += new InputChangeEventHandler
                                                    (stepper_InputChange);
                stepper.PositionChange += new StepperPositionChangeEventHandler
                                                    (stepper_PositionChange);
                stepper.VelocityChange += new VelocityChangeEventHandler
                                                    (stepper_VelocityChange);

                //Open the Stepper object for device connections
                stepper.open();

                //get the program to wait for a Stepper device to be attached
                Console.WriteLine("Waiting for a Stepper to be attached....");
                stepper.waitForAttachment();

                Console.WriteLine("Now the velocity will be set");
                Console.WriteLine("The motor will run until it reaches the set goal position");
                Console.WriteLine("Press any key to continue...");
                Console.ReadLine();

                //Set the max velocity to start the stepper motor moving until it hits 
                //the goal position
                stepper.steppers[0].VelocityLimit = 100.00; //Max velocity
                Console.WriteLine("Stepper motor velocity set to: {0}",
                                        stepper.steppers[0].VelocityLimit.ToString());
                stepper.steppers[0].Acceleration = stepper.steppers[0].AccelerationMin; //ensure the value is between the AccelerationMin and AccelerationMax
                Console.WriteLine("Stepper motor acceleration set to: {0}",
                                        stepper.steppers[0].Acceleration.ToString());
                stepper.steppers[0].TargetPosition = 0;
                stepper.steppers[0].Engaged = true;


                Console.WriteLine("Press any key to continue...");
                Console.ReadLine();
                Console.WriteLine("Will now move to position 2000.");
                Console.WriteLine("Please wait until the motor stops.");
                Console.WriteLine("Press any key to continue...");
                Console.ReadLine();
                
                //Set the goal position to 2000
                stepper.steppers[0].TargetPosition = 2000;

                Console.WriteLine("Press any key to end....");
                Console.ReadLine();

                stepper.steppers[0].Engaged = false;

                //close the Stepper object
                stepper.close();

                //set the object to null to get it out of memory
                stepper = null;

                //if no exceptions were thrown at this point it is safe to terminate
                Console.WriteLine("ok");

            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        //Attach event handler....Display the name and serial number of the attached
        //Stepper device
        static void stepper_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("{0} {1} attached!", e.Device.Name, 
                                        e.Device.SerialNumber.ToString());
        }

        //Detach event handler....Display the name and serial number of the detached 
        //Stepper device
        static void stepper_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("{0} {1} detached!", e.Device.Name, 
                                        e.Device.SerialNumber.ToString());
        }

        //Error event handler....Display the description of the error
        static void stepper_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }

        //Current Change event handler....Display the motor index and new value of 
        //the current
        static void stepper_CurrentChange(object sender, CurrentChangeEventArgs e)
        {
            Console.WriteLine("Stepper Motor {0} current changed! New Value: {1}", 
                                        e.Index.ToString(), e.Current.ToString());
        }

        //Input Change event handler....Display the Input index and the new input value
        static void stepper_InputChange(object sender, InputChangeEventArgs e)
        {
            Console.WriteLine("Input {0} changed! New Value: {1}", e.Index.ToString(), 
                                        e.Value.ToString());
        }

        //Position Change event handler. Display the motor index and the position value
        static void stepper_PositionChange(object sender, 
                                                StepperPositionChangeEventArgs e)
        {
            Console.WriteLine("Stepper Motor {0} position: {1}", e.Index, 
                                        e.Position.ToString());
        }

        //Velocity Change event handler. Display the motor index and the velocity value
        static void stepper_VelocityChange(object sender, VelocityChangeEventArgs e)
        {
            Console.WriteLine("Stepper Motor {0} velocity: {1}", e.Index, 
                                        e.Velocity.ToString());
        }
    }
}
