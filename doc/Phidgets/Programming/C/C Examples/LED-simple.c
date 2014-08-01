// - LED simple -
// This simple example creates a LED handle, hooks the event handlers, then opens and waits for a LED Phidget to be attached.
// Once on has been attaced it will cycle through  few leds and turn their brightness from 0 to 100 and then turn them off
// before terminating the program after user input.
//
// Copyright 2008 Phidgets Inc.  All rights reserved.
// This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
// view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/


#include <stdio.h>
#include <phidget21.h>

int CCONV AttachHandler(CPhidgetHandle LED, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (LED, &name);
	CPhidget_getSerialNumber(LED, &serialNo);
	printf("%s %10d attached!\n", name, serialNo);

	return 0;
}

int CCONV DetachHandler(CPhidgetHandle LED, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (LED, &name);
	CPhidget_getSerialNumber(LED, &serialNo);
	printf("%s %10d detached!\n", name, serialNo);

	return 0;
}

int CCONV ErrorHandler(CPhidgetHandle LED, void *userptr, int ErrorCode, const char *unknown)
{
	printf("Error handled. %d - %s\n", ErrorCode, unknown);
	return 0;
}

//Display the properties of the attached phidget to the screen.  We will be displaying the name, serial number and version of the attached device.
//We will also display the total number of available LEDs
int display_properties(CPhidgetLEDHandle phid)
{
	int serialNo, version, numLED;
	const char* ptr;

	CPhidget_getDeviceType((CPhidgetHandle)phid, &ptr);
	CPhidget_getSerialNumber((CPhidgetHandle)phid, &serialNo);
	CPhidget_getDeviceVersion((CPhidgetHandle)phid, &version);
	CPhidgetLED_getLEDCount(phid, &numLED);

	printf("%s\n", ptr);
	printf("Serial Number: %10d\nVersion: %8d\n", serialNo, version);
	printf("# LEDs: %d\n", numLED);

	return 0;
}

int LED_simple()
{
	int result, i;
	const char *err;

	//Declare an LED handle
	CPhidgetLEDHandle led = 0;

	//create the LED object
	CPhidgetLED_create(&led);

	//Set the handlers to be run when the device is plugged in or opened from software, unplugged or closed from software, or generates an error.
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)led, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)led, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)led, ErrorHandler, NULL);

	//open the LED for device connections
	CPhidget_open((CPhidgetHandle)led, -1);

	//get the program to wait for an LED device to be attached
	printf("Waiting for LED to be attached....");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)led, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return 0;
	}

	//Display the properties of the attached LED device
	display_properties(led);

	printf("Press any key to continue\n");
	getchar();

	//turn on the leds one at a time.
	//This example assumes LED's plugged into locations 0-9
	for(i = 0; i < 10; i++)
	{
		CPhidgetLED_setDiscreteLED(led, i, 100); //maximum brightness is 100, 0 is off.  Can set this value to anything including and inbetween these values.
	}

	printf("Press any key to continue\n");
	getchar();

	//turn off the LEDs one at a a time
	//This example assumes LED's plugged into locations 0-9
	for(i = 0; i < 10; i++)
	{
		CPhidgetLED_setDiscreteLED(led, i, 0); //maximum brightness is 100, 0 is off.  Can set this value to anything including and inbetween these values.
	}

	printf("Press any key to end\n");
	getchar();

	//since user input has been read, this is a signal to terminate the program so we will close the phidget and delete the object we created
	printf("Closing...\n");
	CPhidget_close((CPhidgetHandle)led);
	CPhidget_delete((CPhidgetHandle)led);

	//all done, exit
	return 0;
}

int main(int argc, char* argv[])
{
	LED_simple();
	return 0;
}

