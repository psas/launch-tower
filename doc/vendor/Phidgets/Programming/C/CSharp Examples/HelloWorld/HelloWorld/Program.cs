/* 
 * Phidget Hello World Program for all devices
 * (c) Phidgets 2012
 */

using System;
using Phidgets;
using Phidgets.Events;

namespace HelloWorld
{
    class Program
    {
        // ========= General C# Functions =============

        static void printError(int number, String description)
        {
            Console.WriteLine("Error on function call: {0} - {1}!", number, description);

        }

        // ========= Event Handling Functions =============

        static void manager_Attach(object sender, AttachEventArgs e)
        {
            int serialNumber;
            String name;

            try{
                serialNumber = e.Device.SerialNumber;
                name = e.Device.Name;
                Console.WriteLine("Hello Device {0},  Serial Number: {1}!", serialNumber.ToString(), name);
            }
            catch (PhidgetException ex)
            {
                printError(ex.Code, ex.Description);
            }
        }

        static void manager_Detach(object sender, DetachEventArgs e)
        {
            int serialNumber;
            String name;

            try
            {
                serialNumber = e.Device.SerialNumber;
                name = e.Device.Name;
                Console.WriteLine("Goodbye Device {0},  Serial Number: {1}", serialNumber.ToString(), name);
            }
            catch (PhidgetException ex)
            {
                printError(ex.Code, ex.Description);
            }
        }

        static void manager_Error(object sender, ErrorEventArgs e)
        {
            int number;
            String name;

			number = (int)e.Code;
            name = e.Description;
                
            // The error triggered by the event
            Console.WriteLine("Error Event: {0} -  {1}", number.ToString(), name);
            
        }

        // =========== Main Code ==========

        static void Main(string[] args)
        {
            // No exception thrown on create
            Manager manager = new Manager();

            try
            {
                manager.Attach += new AttachEventHandler(manager_Attach);
                manager.Detach += new DetachEventHandler(manager_Detach);
                manager.Error += new ErrorEventHandler(manager_Error);
            } 
            catch (PhidgetException ex)
            {
                printError(ex.Code, ex.Description);
            }

            // No exception thrown on open
            manager.open();

			Console.WriteLine("Phidget Simple Playground (plug and unplug devices)");
            Console.WriteLine("Press Enter to end anytime");
            Console.Read();

            Console.WriteLine("Closing....");
            try
            {
                manager.Attach -= new AttachEventHandler(manager_Attach);
                manager.Detach -= new DetachEventHandler(manager_Detach);
                manager.Error -= new ErrorEventHandler(manager_Error);
                manager.close();
            }
            catch (PhidgetException ex)
            {
                printError(ex.Code, ex.Description);
            }

            manager = null;
        }
    }
}