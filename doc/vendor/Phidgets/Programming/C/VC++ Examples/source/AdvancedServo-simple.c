// - Advanced Servo simple -
// This simple example sets up an Advanced Servo object, hooks the event handlers and opens it for device connections.  
// Once an Advanced Servo is attached it will move the motor to various positions, displaying the event details to the console.
//
// Copyright 2008 Phidgets Inc.  All rights reserved.
// This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
// view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/

#include <stdio.h>
#include <phidget21.h>

int CCONV AttachHandler(CPhidgetHandle ADVSERVO, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (ADVSERVO, &name);
	CPhidget_getSerialNumber(ADVSERVO, &serialNo);
	printf("%s %10d attached!\n", name, serialNo);

	return 0;
}

int CCONV DetachHandler(CPhidgetHandle ADVSERVO, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (ADVSERVO, &name);
	CPhidget_getSerialNumber(ADVSERVO, &serialNo);
	printf("%s %10d detached!\n", name, serialNo);

	return 0;
}

int CCONV ErrorHandler(CPhidgetHandle ADVSERVO, void *userptr, int ErrorCode, const char *Description)
{
	printf("Error handled. %d - %s\n", ErrorCode, Description);
	return 0;
}

int CCONV PositionChangeHandler(CPhidgetAdvancedServoHandle ADVSERVO, void *usrptr, int Index, double Value)
{
	printf("Motor: %d > Current Position: %f\n", Index, Value);
	return 0;
}

//Display the properties of the attached phidget to the screen.  We will be displaying the name, serial number and version of the attached device.
int display_properties(CPhidgetAdvancedServoHandle phid)
{
	int serialNo, version, numMotors;
	const char* ptr;

	CPhidget_getDeviceType((CPhidgetHandle)phid, &ptr);
	CPhidget_getSerialNumber((CPhidgetHandle)phid, &serialNo);
	CPhidget_getDeviceVersion((CPhidgetHandle)phid, &version);

	CPhidgetAdvancedServo_getMotorCount (phid, &numMotors);

	printf("%s\n", ptr);
	printf("Serial Number: %10d\nVersion: %8d\n# Motors: %d\n", serialNo, version, numMotors);

	return 0;
}

int servo_simple()
{
	int result;
	double curr_pos;
	const char *err;
	double minAccel, maxVel;

	//Declare an advanced servo handle
	CPhidgetAdvancedServoHandle servo = 0;

	//create the advanced servo object
	CPhidgetAdvancedServo_create(&servo);

	//Set the handlers to be run when the device is plugged in or opened from software, unplugged or closed from software, or generates an error.
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)servo, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)servo, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)servo, ErrorHandler, NULL);

	//Registers a callback that will run when the motor position is changed.
	//Requires the handle for the Phidget, the function that will be called, and an arbitrary pointer that will be supplied to the callback function (may be NULL).
	CPhidgetAdvancedServo_set_OnPositionChange_Handler(servo, PositionChangeHandler, NULL);

	//open the device for connections
	CPhidget_open((CPhidgetHandle)servo, -1);

	//get the program to wait for an advanced servo device to be attached
	printf("Waiting for Phidget to be attached....");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)servo, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return 0;
	}

	//Display the properties of the attached device
	display_properties(servo);

	//read event data
	printf("Reading.....\n");

	//This example assumes servo motor is attached to index 0

	//Set up some initial acceleration and velocity values
	CPhidgetAdvancedServo_getAccelerationMin(servo, 0, &minAccel);
	CPhidgetAdvancedServo_setAcceleration(servo, 0, minAccel*2);
	CPhidgetAdvancedServo_getVelocityMax(servo, 0, &maxVel);
	CPhidgetAdvancedServo_setVelocityLimit(servo, 0, maxVel/2);

	//display current motor position
	if(CPhidgetAdvancedServo_getPosition(servo, 0, &curr_pos) == EPHIDGET_OK)
		printf("Motor: 0 > Current Position: %f\n", curr_pos);

	//keep displaying servo event data until user input is read
	printf("Press any key to continue\n");
	getchar();

	//change the motor position
	//valid range is -23 to 232, but for most motors ~30-210
	//we'll set it to a few random positions to move it around

	//Step 1: Position 40.00 - also engage servo
	printf("Move to position 40.00 and engage. Press any key to Continue\n");
	getchar();

	CPhidgetAdvancedServo_setPosition (servo, 0, 40.00);
	CPhidgetAdvancedServo_setEngaged(servo, 0, 1);

	//Step 2: Position 50.00
	printf("Move to position 50.00. Press any key to Continue\n");
	getchar();

	CPhidgetAdvancedServo_setPosition (servo, 0, 50.00);

	//Step 3: Position 100.00
	printf("Move to position 100.00. Press any key to Continue\n");
	getchar();

	CPhidgetAdvancedServo_setPosition (servo, 0, 100.00);

	//Step 4: Position 150.00
	printf("Move to position 150.00. Press any key to Continue\n");
	getchar();

	CPhidgetAdvancedServo_setPosition (servo, 0, 150.00);

	//Step 5: Position 200.00
	printf("Move to position 200.00. Press any key to Continue\n");
	getchar();

	CPhidgetAdvancedServo_setPosition (servo, 0, 200.00);

	//Step 6: Position 70.00
	printf("Move to position 70.00. Press any key to Continue\n");
	getchar();

	CPhidgetAdvancedServo_setPosition (servo, 0, 70.00);

	//Step 7: Disengage
	printf("Disengage Servo. Press any key to Continue\n");
	getchar();

	CPhidgetAdvancedServo_setEngaged(servo, 0, 0);

	printf("Press any key to end\n");
	getchar();

	//since user input has been read, this is a signal to terminate the program so we will close the phidget and delete the object we created
	printf("Closing...\n");
	CPhidget_close((CPhidgetHandle)servo);
	CPhidget_delete((CPhidgetHandle)servo);

	//all done, exit
	return 0;
}

int main(int argc, char* argv[])
{
	servo_simple();
	return 0;
}

