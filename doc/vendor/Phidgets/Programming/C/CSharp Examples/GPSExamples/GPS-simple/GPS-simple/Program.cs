/* - GPS simple -
 ****************************************************************************************

 */

using System;
using System.Collections.Generic;
using System.Text;
//Needed for the GPS class, Phidget base classes, and the PhidgetException class
using Phidgets;
//Needed for the Phidget event handling classes
using Phidgets.Events;
using System.Threading;

namespace GPS_simple
{
    class Program
    {
        //Declare a GPS object
        static GPS gps;

        static void Main(string[] args)
        {
            try
            {
                //Initiallize the GPS object
                gps = new GPS();

                //Hook the basic event handlers
                gps.Attach += new AttachEventHandler(gps_Attach);
                gps.Detach += new DetachEventHandler(gps_Detach);
                gps.Error += new ErrorEventHandler(gps_Error);

                //Hook the phidget specific event handlers
                gps.PositionChange += new GPSPositionChangeEventHandler(gps_PositionChange);

                //open the object for GPS device connections
                gps.open();

                //Wait for a GPS device to be attached
                Console.WriteLine("Waiting for MotorControl to be attached....");
                gps.waitForAttachment();

                //Prompt for user input to continue
                Console.WriteLine("Press any button to continue...");
                Console.Read();

                //Prompt the user for input to terminate
                Console.WriteLine("Press any key to end...");
                Console.Read();

                //User input was read so we can terminate, close the GPS object
                gps.close();

                //Set the GPS object to null to get it out of memory
                gps = null;

                //If no exceptions were thrown by this point it is ok to terminate
                Console.WriteLine("ok");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
        }

        static void gps_PositionChange(object sender, GPSPositionChangeEventArgs e)
        {
            Console.WriteLine("Position Change event:");
            Console.WriteLine("\tLatitude: " + gps.Latitude.ToString());
            Console.WriteLine("\tLongitude: " + gps.Longitude.ToString());
            Console.WriteLine("\tAltitude: " + gps.Altitude.ToString());
            Console.WriteLine("\tHeading: " + gps.Heading.ToString());
            Console.WriteLine("\tVelocity: " + gps.Velocity.ToString());
        }

        //Attach event hanlder. Display serial number of attached MotorControl phidget
        static void gps_Attach(object sender, AttachEventArgs e)
        {
            Console.WriteLine("GPS attached!",
                                    e.Device.SerialNumber.ToString());
        }

        //Detach event handler. Display serial number of detached MotorControl phidget
        static void gps_Detach(object sender, DetachEventArgs e)
        {
            Console.WriteLine("GPS detached!",
                                    e.Device.SerialNumber.ToString());
        }

        //Error event handler...Display the error description to the console
        static void gps_Error(object sender, ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }
    }
}
