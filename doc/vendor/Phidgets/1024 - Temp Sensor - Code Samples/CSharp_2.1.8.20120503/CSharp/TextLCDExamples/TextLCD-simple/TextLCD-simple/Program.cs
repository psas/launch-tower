/* - TextLCD simple -
 ****************************************************************************************
 * This simple example set up a TextLCD, waits for one to be attached, and then prompts 
 * the user to enter two lines of text to be displayed on the TextLCD
 *
 * Please note that this example was designed to work with only one Phidget TextLCD 
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
//Needed for the TextLCD class, Phidget base classes, and the PhidgetException class
using Phidgets; 
//Needed for the Phidget event handling classes
using Phidgets.Events; 

namespace TextLCD_simple
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                //set up our Phidget TextLCD and hook the event handlers
                TextLCD tLCD = new TextLCD();

                tLCD.Attach += new AttachEventHandler(tLCD_Attach);
                tLCD.Detach += new DetachEventHandler(tLCD_Detach);
                tLCD.Error += new ErrorEventHandler(tLCD_Error);

                tLCD.open();

                //We have to wait to make sure that a TextLCD is plugged in before
                //trying to communicate with it
                if(!tLCD.Attached)
                {
                    Console.WriteLine("Waiting for TextLCD to be attached....");
                    tLCD.waitForAttachment();
                }
                
                //prompt for the first line of input, Phidget TextLCD have two display 
                //lines
                Console.WriteLine("Enter text to display on line 1:");
                string line1 = Console.ReadLine();

                //make sure a TextLCd is still attached before trying to communicate 
                //with it...this is for if the TextLCd has been detached while waiting
                //for user input
                if (tLCD.Attached)
                {
                    if (line1.Length > tLCD.rows[0].MaximumLength)
                    {
                        while (line1.Length > tLCD.rows[0].MaximumLength)
                        {
                            Console.WriteLine("Entered text is too long, try again...");
                            line1 = Console.ReadLine();
                        }
                    }
                    else
                    {
                        if (tLCD.Attached)
                        {
                            tLCD.rows[0].DisplayString = line1;
                        }
                    }
                }

                //prompt for the second line of input
                Console.WriteLine("Enter text to display on line 2:");
                string line2 = Console.ReadLine();

                //make sure a TextLCd is still attached before trying to communicate
                //with it...this is for if the TextLCd has been detached while waiting 
                //for user input
                if (tLCD.Attached)
                {
                    if (line2.Length > tLCD.rows[1].MaximumLength)
                    {
                        while (line2.Length > tLCD.rows[1].MaximumLength)
                        {
                            Console.WriteLine("Entered text is too long, try again...");
                            line2 = Console.ReadLine();
                        }
                    }
                    else
                    {
                        if (tLCD.Attached)
                        {
                            tLCD.rows[1].DisplayString = line2;
                        }
                    }
                }

                //Close the phidget
                tLCD.close();
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                //output any exception data to the console
                Console.WriteLine(ex.ToString());
            }
        }

        //attach event handler, we'll output the name and serial number of the TextLCD
        //that was attached
        static void tLCD_Attach(object sender, AttachEventArgs e)
        {
            TextLCD attached = (TextLCD)sender;
            string name = attached.Name;
            string serialNo = attached.SerialNumber.ToString();

            Console.WriteLine("TextLCD name:{0} serial No.: {1} Attached!", name, 
                                    serialNo);
        }

        //Detach event handler, we'll output the name and serial of the phidget that is
        //detached
        static void tLCD_Detach(object sender, DetachEventArgs e)
        {
            TextLCD detached = (TextLCD)sender;
            string name = detached.Name;
            string serialNo = detached.SerialNumber.ToString();

            Console.WriteLine("TextLCD name:{0} serial No.: {1} Detached!", name, 
                                    serialNo);
        }

        //TextLCD error event handler, we'll just output any error data to the console
        static void tLCD_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine("LCD Error: e.Description");
        }
    }
}
