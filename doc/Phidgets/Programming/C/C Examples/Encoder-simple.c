// - Encoder simple -
// This example simply creates an Encoder handle, hooks the event handlers, and then waits for an encoder is attached.
// Once it is attached, the program will wait for user input so that we can see the event data on the screen when using the
// encoder.
//
// Copyright 2008 Phidgets Inc.  All rights reserved.
// This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
// view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/

#include <stdio.h>
#include <phidget21.h>


int CCONV AttachHandler(CPhidgetHandle ENC, void *userptr)
{
        int serialNo;
        CPhidget_DeviceID deviceID;
        int i, inputcount;

        CPhidget_getSerialNumber(ENC, &serialNo);

        //Retrieve the device ID and number of encoders so that we can set the enables if needed
        CPhidget_getDeviceID(ENC, &deviceID);
        CPhidgetEncoder_getEncoderCount((CPhidgetEncoderHandle)ENC, &inputcount);
        printf("Encoder %10d attached! \n", serialNo);

        //the 1047 requires enabling of the encoder inputs, so enable them if this is a 1047    
        if (deviceID == PHIDID_ENCODER_HS_4ENCODER_4INPUT)
        {
                printf("Encoder requires Enable. Enabling inputs....\n");
                for (i = 0 ; i < inputcount ; i++)
                        CPhidgetEncoder_setEnabled((CPhidgetEncoderHandle)ENC, i, 1);
        }
        return 0;
}


int CCONV DetachHandler(CPhidgetHandle ENC, void *userptr)
{
	int serialNo;
	CPhidget_getSerialNumber(ENC, &serialNo);
	printf("Encoder %10d detached! \n", serialNo);

	return 0;
}

int CCONV ErrorHandler(CPhidgetHandle ENC, void *userptr, int ErrorCode, const char *Description)
{
	printf("Error handled. %d - %s \n", ErrorCode, Description);

	return 0;
}

int CCONV InputChangeHandler(CPhidgetEncoderHandle ENC, void *usrptr, int Index, int State)
{
	printf("Input #%i - State: %i \n", Index, State);

	return 0;
}

int CCONV PositionChangeHandler(CPhidgetEncoderHandle ENC, void *usrptr, int Index, int Time, int RelativePosition)
{
	int Position;
	CPhidgetEncoder_getPosition(ENC, Index, &Position);
	printf("Encoder #%i - Position: %5d -- Relative Change %2d -- Elapsed Time: %5d \n", Index, Position, RelativePosition, Time);
	
	return 0;
}

//Display the properties of the attached phidget to the screen.  We will be displaying the name, serial number and version of the attached device.
//Will also display the number of inputs and encoders on this device
int display_properties(CPhidgetEncoderHandle phid)
{
	int serialNo, version, num_inputs, num_encoders;
	const char* ptr;

	CPhidget_getDeviceType((CPhidgetHandle)phid, &ptr);
	CPhidget_getSerialNumber((CPhidgetHandle)phid, &serialNo);
	CPhidget_getDeviceVersion((CPhidgetHandle)phid, &version);

	CPhidgetEncoder_getInputCount(phid, &num_inputs);
	CPhidgetEncoder_getEncoderCount(phid, &num_encoders);

	printf("%s\n", ptr);
	printf("Serial Number: %10d\nVersion: %8d\n", serialNo, version);
	printf("Num Encoders: %d\nNum Inputs: %d\n", num_encoders, num_inputs);

	return 0;
}

int encoder_simple()
{
	int result;
	const char *err;

	//Declare an encoder handle
	CPhidgetEncoderHandle encoder = 0;

	//create the encoder object
	CPhidgetEncoder_create(&encoder);

	//Set the handlers to be run when the device is plugged in or opened from software, unplugged or closed from software, or generates an error.
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)encoder, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)encoder, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)encoder, ErrorHandler, NULL);

	//Registers a callback that will run if an input changes.
	//Requires the handle for the Phidget, the function that will be called, and an arbitrary pointer that will be supplied to the callback function (may be NULL).
	CPhidgetEncoder_set_OnInputChange_Handler(encoder, InputChangeHandler, NULL);

	//Registers a callback that will run if the encoder changes.
	//Requires the handle for the Encoder, the function that will be called, and an arbitrary pointer that will be supplied to the callback function (may be NULL).
	CPhidgetEncoder_set_OnPositionChange_Handler (encoder, PositionChangeHandler, NULL);

	CPhidget_open((CPhidgetHandle)encoder, -1);

	//get the program to wait for an encoder device to be attached
	printf("Waiting for encoder to be attached....");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)encoder, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return 0;
	}

	//Display the properties of the attached encoder device
	display_properties(encoder);

	//read encoder event data
	printf("Reading.....\n");

	//keep displaying encoder data until user input is read
	printf("Press any key to end\n");
	getchar();

	//since user input has been read, this is a signal to terminate the program so we will close the phidget and delete the object we created
	printf("Closing...\n");
	CPhidget_close((CPhidgetHandle)encoder);
	CPhidget_delete((CPhidgetHandle)encoder);

	//all done, exit
	return 0;
}

int main(int argc, char* argv[])
{
	encoder_simple();
	return 0;
}

