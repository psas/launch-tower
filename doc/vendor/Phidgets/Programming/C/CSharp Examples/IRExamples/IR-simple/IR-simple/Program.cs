/* - IR simple -
 ****************************************************************************************
 * This simple example creates an IR object, hooks the event handlers, and 
 * opens it for connections to IR Phidgets.  It will then wait for user input to 
 * terminate, and in the meantime, display event generated data from the PhidgetIR. 
 * For a more detailed example, please see the IR-full example.
 *
 * Please note that this example was designed to work with only one Phidget IR 
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
using Phidgets;

namespace IR_simple
{
    class Program
    {

        static IR ir;

        static void Main(string[] args)
        {
            try
            {
                Phidget.enableLogging(Phidget.LogLevel.PHIDGET_LOG_VERBOSE, null);
                ir = new IR();

                //Basic event handlers
                ir.Attach += new Phidgets.Events.AttachEventHandler(ir_Attach);
                ir.Detach += new Phidgets.Events.DetachEventHandler(ir_Detach);
                ir.Error += new Phidgets.Events.ErrorEventHandler(ir_Error);

                //Specific event handlers
                ir.Code += new Phidgets.Events.IRCodeEventHandler(ir_Code);
                ir.Learn += new Phidgets.Events.IRLearnEventHandler(ir_Learn);
                ir.RawData += new Phidgets.Events.IRRawDataEventHandler(ir_RawData);

                //Open the device
                ir.open();

                //Wait for attachment
                Console.WriteLine("Waiting for PhidgetIR to be attached...");
                ir.waitForAttachment();

                //demonstrate sending a code
                Console.WriteLine("Press any key to send a code...");
                Console.ReadLine();

                //send the code for Apple remote Volume UP (Standard NEC encoding)
                IRCodeInfo codeInfo = new IRCodeInfo(
                    IRCodeInfo.IREncoding.Space,    //encoding
                    32,                             //bit count
                    new int[] { 9078, 4610 },      //header
                    new int[] { 593, 581 },        //zero
                    new int[] { 593, 1701 },       //one
                    593,                            //trail
                    108729,                         //gap
                    new int[] { 9078, 2345, 593 }  //repeat code
                );

                ir.transmit(new IRCode("0x77e1d0f0", 32), codeInfo);

                //demonstrate sending RAW data
                Console.WriteLine("Press any key to send RAW data...");
                Console.ReadLine();

                //example of sending RAW Data - this was captured from an Apple remote Volume UP command
                int[] data = {
                   9040,   4590,    540,    630,    550,   1740,    550,   1750,    550,   1740,
                    550,    620,    550,   1750,    550,   1740,    550,   1750,    550,   1740,
                    550,   1740,    560,   1740,    540,    630,    550,    620,    550,    620,
                    540,    630,    550,   1750,    550,   1740,    560,   1740,    550,    620,
                    550,   1740,    550,    620,    550,    620,    560,    610,    550,    620,
                    550,   1750,    550,   1740,    550,    620,    550,   1740,    550,   1750,
                    550,    620,    550,    620,    550,    620,    540};

                ir.transmitRaw(data, 108729);

                //end
                Console.WriteLine("Press any key to end...");
                Console.ReadLine();

                //User input was rad so we'll terminate the program, so close the object
                ir.close();

                //set the object to null to get it out of memory
                ir = null;

                //If no expcetions where thrown at this point it is safe to terminate 
                //the program
                Console.WriteLine("Done.");
            }
            catch (PhidgetException ex)
            {
                Console.WriteLine(ex.Description);
            }
        }

        static void ir_RawData(object sender, Phidgets.Events.IRRawDataEventArgs e)
        {
            //See IR-full for RAW data handling
        }

        static void ir_Learn(object sender, Phidgets.Events.IRLearnEventArgs e)
        {
            Console.WriteLine("");
            Console.WriteLine("Learn: 0x" + e.LearnedCode.Code.ToString() + " (" + e.LearnedCode.Code.BitCount.ToString() + "-bit)");
            Console.WriteLine("  Encoding: " + e.LearnedCode.CodeInfo.Encoding.ToString());
            Console.WriteLine("  Zero: " + e.LearnedCode.CodeInfo.Zero[0].ToString() + ", " + e.LearnedCode.CodeInfo.Zero[1].ToString());
            Console.WriteLine("  One: " + e.LearnedCode.CodeInfo.One[0].ToString() + ", " + e.LearnedCode.CodeInfo.One[1].ToString());
            if (e.LearnedCode.CodeInfo.Header[0] != 0)
                Console.WriteLine("  Header: " + e.LearnedCode.CodeInfo.Header[0].ToString() + ", " + e.LearnedCode.CodeInfo.Header[1].ToString());
            if (e.LearnedCode.CodeInfo.Trail != 0)
                Console.WriteLine("  Trail: " + e.LearnedCode.CodeInfo.Trail.ToString());
            if (e.LearnedCode.CodeInfo.Gap != 0)
                Console.WriteLine("  Gap: " + e.LearnedCode.CodeInfo.Gap.ToString());
            if (e.LearnedCode.CodeInfo.Repeat != null)
            {
                Console.Write("  Repeat: ");
                foreach(uint i in e.LearnedCode.CodeInfo.Repeat)
                    Console.Write(i.ToString() + ", ");
                Console.WriteLine("");
            }

            Console.WriteLine("");
        }

        static void ir_Code(object sender, Phidgets.Events.IRCodeEventArgs e)
        {
            Console.WriteLine("Code: 0x" + e.Code.ToString() 
                + " (" + e.Code.BitCount.ToString() + "-bit)" 
                + (e.Repeat ? " (repeat)" : "") );
        }

        static void ir_Error(object sender, Phidgets.Events.ErrorEventArgs e)
        {
            Console.WriteLine(e.Description);
        }

        static void ir_Detach(object sender, Phidgets.Events.DetachEventArgs e)
        {
            Console.WriteLine("PhidgetIR {0} detached!",
                                e.Device.SerialNumber.ToString());
        }

        static void ir_Attach(object sender, Phidgets.Events.AttachEventArgs e)
        {
            Console.WriteLine("PhidgetIR {0} attached!",
                                e.Device.SerialNumber.ToString());
        }
    }
}
