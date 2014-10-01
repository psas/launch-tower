// - Servo simple -
// This simple example sets up a Servo objectm hooks the event handlers and opens it for device connections.  Once a Servo is attached
// with a motor in motor 0 it will simulate moving the motor from position 15 to 231, displaying the event details to the console.
//
// Copyright 2008 Phidgets Inc.  All rights reserved.
// This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
// view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/

#include <stdio.h>
#include <phidget21.h>


int CCONV AttachHandler(CPhidgetHandle SERV, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (SERV, &name);
	CPhidget_getSerialNumber(SERV, &serialNo);
	printf("%s %10d attached!\n", name, serialNo);

	return 0;
}

int CCONV DetachHandler(CPhidgetHandle SERV, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (SERV, &name);
	CPhidget_getSerialNumber(SERV, &serialNo);
	printf("%s %10d detached!\n", name, serialNo);

	return 0;
}

int CCONV ErrorHandler(CPhidgetHandle SERV, void *userptr, int ErrorCode, const char *Description)
{
	printf("Error handled. %d - %s\n", ErrorCode, Description);
	return 0;
}

int CCONV PositionChangeHandler(CPhidgetServoHandle SERV, void *usrptr, int Index, double Value)
{
	printf("Motor: %d > Current Position: %f\n", Index, Value);
	return 0;
}

//Display the properties of the attached phidget to the screen.  We will be displaying the name, serial number and version of the attached device.
int display_properties(CPhidgetServoHandle phid)
{
	int serialNo, version, numMotors;
	const char* ptr;

	CPhidget_getDeviceType((CPhidgetHandle)phid, &ptr);
	CPhidget_getSerialNumber((CPhidgetHandle)phid, &serialNo);
	CPhidget_getDeviceVersion((CPhidgetHandle)phid, &version);

	CPhidgetServo_getMotorCount (phid, &numMotors);

	printf("%s\n", ptr);
	printf("Serial Number: %10d\nVersion: %8d\n# Motors: %d\n", serialNo, version, numMotors);

	return 0;
}

int servo_simple()
{
	int result;
	double curr_pos;
	const char *err;

	//Declare an servo handle
	CPhidgetServoHandle servo = 0;

	//create the servo object
	CPhidgetServo_create(&servo);

	//Set the handlers to be run when the device is plugged in or opened from software, unplugged or closed from software, or generates an error.
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)servo, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)servo, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)servo, ErrorHandler, NULL);

	//Registers a callback that will run when the motor position is changed.
	//Requires the handle for the Phidget, the function that will be called, and an arbitrary pointer that will be supplied to the callback function (may be NULL).
	CPhidgetServo_set_OnPositionChange_Handler(servo, PositionChangeHandler, NULL);

	//open the servo for device connections
	CPhidget_open((CPhidgetHandle)servo, -1);

	//get the program to wait for an servo device to be attached
	printf("Waiting for Servo controller to be attached....");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)servo, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return 0;
	}

	//Display the properties of the attached servo device
	display_properties(servo);

	//read servo event data
	printf("Reading.....\n");

	//This example assumes servo motor is attached to index 0

	//display current motor position
	CPhidgetServo_getPosition(servo, 0, &curr_pos);
	printf("Motor: 0 > Current Position: %f\n", curr_pos);

	//keep displaying servo event data until user input is read
	printf("Press any key to continue\n");
	getchar();

	//change the motor position
	//valid range is -22 to 232
	//we'll set it to a few random positions to move it around

	//Step 1: Position 10.00
	printf("Move to position 10.00. Press any key to Continue\n");
	getchar();

	CPhidgetServo_setPosition (servo, 0, 10.00);

	//Step 2: Position 50.00
	printf("Move to position 50.00. Press any key to Continue\n");
	getchar();

	CPhidgetServo_setPosition (servo, 0, 50.00);

	//Step 3: Position 100.00
	printf("Move to position 100.00. Press any key to Continue\n");
	getchar();

	CPhidgetServo_setPosition (servo, 0, 100.00);

	//Step 4: Position 150.00
	printf("Move to position 150.00. Press any key to Continue\n");
	getchar();

	CPhidgetServo_setPosition (servo, 0, 150.00);

	//Step 5: Position 200.00
	printf("Move to position 200.00. Press any key to Continue\n");
	getchar();

	CPhidgetServo_setPosition (servo, 0, 200.00);

	//Step 6: Position 20.00
	printf("Move to position 20.00. Press any key to Continue\n");
	getchar();

	CPhidgetServo_setPosition (servo, 0, 20.00);

	//Step 7: Diseangage
	printf("Disengage. Press any key to Continue\n");
	getchar();

	CPhidgetServo_setEngaged (servo, 0, 0);

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

