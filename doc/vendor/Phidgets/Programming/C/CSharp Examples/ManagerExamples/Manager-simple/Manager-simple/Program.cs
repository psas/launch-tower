/* - Manager simple -
 ****************************************************************************************
 * This is a simple example showing how to setup a phidget manager and display a list 
 * of the currently connected Phidgets devices to the PC
 *
 * Copyright 2007 Phidgets Inc.  
 * This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/
 */

using System;
using System.Collections.Generic;
using System.Text;
using Phidgets; //Needed for the Manager class
using Phidgets.Events; //Needed for the event handling classes

namespace Manager_simple
{
    class Program
    {
        public static Manager man;

        static void Main(string[] args)
        {
            //create and setup our Phidget Manager
            man = new Manager();
            
            //link the event handlers
            man.Attach += new AttachEventHandler(man_Attach);
            man.Detach += new DetachEventHandler(man_Detach);
            man.Error += new ErrorEventHandler(man_Error);

            //open the manager
            man.open();

            //print the table of connected devices
            printDeviceTable();
            Console.ReadLine();

            //close the manager
            man.close();
            Console.WriteLine("ok.");
        }

        //attach event handler
        static void man_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("Device {0} serial no. {1} attached!", e.Device.Name, 
                                    e.Device.SerialNumber.ToString());
            //printDeviceTable();
        }

        //detach event handler
        static void man_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("Device {0} serial no. {1} detached!", e.Device.Name,
                                    e.Device.SerialNumber.ToString());
            //printDeviceTable();
        }

        //error event handler...display the error to the console
        static void man_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }

        //function to print the list of connected devices
        static void printDeviceTable()
        {
            int count = 1;
            foreach (Phidget device in man.Devices)
            {
                Console.WriteLine("Device {0}:\n" +
                                  "Name: {1}\n" +
                                  "Type: {2}\n" +
                                  "Serial No.: {3}\n" +
                                  "Version: {4}", 
                                  count, 
                                  device.Name, 
                                  device.Type, 
                                  device.SerialNumber.ToString(), 
                                  device.Version.ToString()
                                 );
                count++;
            }
        }
    }
}
