// - Analog simple -
// This simple example creates a Analog handle, hooks the event handlers, then opens and waits for a Analog Phidget to be attached.
//
// Copyright 2011 Phidgets Inc.  All rights reserved.
// This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
// view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/


#include <stdio.h>
#include <phidget21.h>

int CCONV AttachHandler(CPhidgetHandle Analog, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (Analog, &name);
	CPhidget_getSerialNumber(Analog, &serialNo);
	printf("%s %10d attached!\n", name, serialNo);

	return 0;
}

int CCONV DetachHandler(CPhidgetHandle Analog, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (Analog, &name);
	CPhidget_getSerialNumber(Analog, &serialNo);
	printf("%s %10d detached!\n", name, serialNo);

	return 0;
}

int CCONV ErrorHandler(CPhidgetHandle Analog, void *userptr, int ErrorCode, const char *unknown)
{
	printf("Error handanalog. %d - %s\n", ErrorCode, unknown);
	return 0;
}

//Display the properties of the attached phidget to the screen.  We will be displaying the name, serial number and version of the attached device.
//We will also display the total number of available Analogs
int display_properties(CPhidgetAnalogHandle phid)
{
	int serialNo, version, numAnalog;
	double max, min;
	const char* ptr;

	CPhidget_getDeviceType((CPhidgetHandle)phid, &ptr);
	CPhidget_getSerialNumber((CPhidgetHandle)phid, &serialNo);
	CPhidget_getDeviceVersion((CPhidgetHandle)phid, &version);
	CPhidgetAnalog_getOutputCount(phid, &numAnalog);
	CPhidgetAnalog_getVoltageMax(phid, 0, &max);
	CPhidgetAnalog_getVoltageMin(phid, 0, &min);

	printf("%s\n", ptr);
	printf("Serial Number: %10d\nVersion: %8d\n", serialNo, version);
	printf("# Analog Outputs: %d\n", numAnalog);
	printf("Output range: -%0.1lfV - %0.1lfV\n",min,max);

	return 0;
}

int Analog_simple()
{
	int result, i;
	const char *err;

	//Declare an Analog handle
	CPhidgetAnalogHandle analog = 0;

	//create the Analog object
	CPhidgetAnalog_create(&analog);

	//Set the handlers to be run when the device is plugged in or opened from software, unplugged or closed from software, or generates an error.
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)analog, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)analog, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)analog, ErrorHandler, NULL);

	//open the Analog for device connections
	CPhidget_open((CPhidgetHandle)analog, -1);

	//get the program to wait for an Analog device to be attached
	printf("Waiting for Analog to be attached....");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)analog, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return 0;
	}

	//Display the properties of the attached Analog device
	display_properties(analog);

	printf("Press any key to continue. WARNING: Output 0 will be enabled with +5V output.\n");
	getchar();

	//enable an analog output
	CPhidgetAnalog_setVoltage(analog, 0, 5.0);
	CPhidgetAnalog_setEnabled(analog, 0, PTRUE);
	printf("Output 0 enabled at +5V output.\n");

	printf("Press any key to continue\n");
	getchar();

	//disable the output
	CPhidgetAnalog_setEnabled(analog, 0, PFALSE);
	printf("Output 0 disabled.\n");

	printf("Press any key to end\n");
	getchar();

	//since user input has been read, this is a signal to terminate the program so we will close the phidget and delete the object we created
	printf("Closing...\n");
	CPhidget_close((CPhidgetHandle)analog);
	CPhidget_delete((CPhidgetHandle)analog);

	//all done, exit
	return 0;
}

int main(int argc, char* argv[])
{
	Analog_simple();
	return 0;
}

