// - Accelerometer simple -
// This simple example creates an accelerometer handle, initializes it, hooks the event handlers and opens it.  It then waits
// for an accelerometer to be attached and waits for events to be fired. We preset the sensitivity of each axis to 0.5 to make it
// easier to see the event data.
//
// Copyright 2008 Phidgets Inc.  All rights reserved.
// This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
// view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/

#include <stdio.h>
#include <phidget21.h>

double past_samples[3];

//callback that will run if the Accelerometer is attached to the computer
int CCONV AttachHandler(CPhidgetHandle IFK, void *userptr)
{
	int serialNo;
	CPhidget_getSerialNumber(IFK, &serialNo);
	printf("Accelerometer %10d attached!", serialNo);

	return 0;
}

//callback that will run if the Accelerometer is detached from the computer
int CCONV DetachHandler(CPhidgetHandle IFK, void *userptr)
{
	int serialNo;
	CPhidget_getSerialNumber(IFK, &serialNo);
	printf("Accelerometer %10d detached! \n", serialNo);

	return 0;
}

//callback that will run if the Accelerometer generates an error
int CCONV ErrorHandler(CPhidgetHandle IFK, void *userptr, int ErrorCode, const char *unknown)
{
	printf("Error handled. %d - %s \n", ErrorCode, unknown);
	return 0;
}

//callback that will run if the acceleration changes by more than the Acceleration trigger.
//Index - Index of the axis that is generating the event, Value - the value read by the accelerometer axis
int CCONV accel_AccelChangeHandler(CPhidgetAccelerometerHandle WGT, void *userptr, int Index, double Value)
{
	past_samples[Index] = (past_samples[Index] * 0.90) + (Value * 0.10);
	
	printf("Axis: %i -- %6f\n", Index, past_samples[Index]);

	return 0;
}

//Display the properties of the attached phidget to the screen.  
//We will be displaying the name, serial number, version of the attached device and number of Axes on the accelerometer.
int display_properties(CPhidgetHandle phid)
{
	int serialNo, version;
	const char* ptr;
	int numAxes;

	CPhidget_getDeviceType(phid, &ptr);
	CPhidget_getSerialNumber(phid, &serialNo);
	CPhidget_getDeviceVersion(phid, &version);
	CPhidgetAccelerometer_getAxisCount((CPhidgetAccelerometerHandle)phid, &numAxes);

	printf("%s\n", ptr);
	printf("Serial Number: %10d\nVersion: %8d\n", serialNo, version);
	printf("Number of Axes: %i\n", numAxes);

	return 0;
}

int accelerometer_simple()
{
	int result, numAxes;
	const char *err;

	//Declare an accelerometer handle
	CPhidgetAccelerometerHandle accel = 0;

	//create the accelerometer object
	CPhidgetAccelerometer_create(&accel);

	//Set the handlers to be run when the device is plugged in or opened from software, unplugged or closed from software, or generates an error.
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)accel, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)accel, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)accel, ErrorHandler, NULL);

	//Registers a callback that will run if the acceleration changes by more than the Acceleration trigger.
	//Requires the handle for the Accelerometer, the function that will be called, 
	//and an arbitrary pointer that will be supplied to the callback function (may be NULL)
	CPhidgetAccelerometer_set_OnAccelerationChange_Handler(accel, accel_AccelChangeHandler, NULL);

	//open the acclerometer for device connections
	CPhidget_open((CPhidgetHandle)accel, -1);

	//get the program to wait for an accelerometer device to be attached
	printf("Waiting for accelerometer to be attached.... \n");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)accel, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return 0;
	}

	//Display the properties of the attached accelerometer device
	display_properties((CPhidgetHandle)accel);

	//read accelerometer event data
	printf("Reading.....\n");

	//get the number of available axes on the attached accelerometer
	CPhidgetAccelerometer_getAxisCount(accel, &numAxes);

	//Most accelerometers have 2 axes so we'll pre-set their sensitivity to make the data more readable
	CPhidgetAccelerometer_setAccelerationChangeTrigger(accel, 0, 0.500);
	CPhidgetAccelerometer_setAccelerationChangeTrigger(accel, 1, 0.500);

	//If the accelerometer attached is a 3-axis, we'll set the sensitivity of the 3rd axis
	if(numAxes > 2)
	{
		CPhidgetAccelerometer_setAccelerationChangeTrigger(accel, 2, 0.500);
	}

	//wait until user input is read
	printf("Press any key to end\n");
	getchar();

	//since user input has been read, this is a signal to terminate the program so we will close the phidget and delete the object we created
	printf("Closing...\n");
	CPhidget_close((CPhidgetHandle)accel);
	CPhidget_delete((CPhidgetHandle)accel);

	//all done, exit
	return 0;
}

//main entry point to the program
int main(int argc, char* argv[])
{
	accelerometer_simple();
	return 0;
}

