// - IR simple -
// This simple example creates an IR handle, initializes it, hooks the event handlers and opens it.
// It will then wait on user input, displaying event data to the console.  Upon receiving user input, will demonstrate transmitting a code.
// Upon receiving further input, will then demonstrate transmitting raw data. After receiving one more user input it will close the program
//
// Copyright 2010 Phidgets Inc.  All rights reserved.
// This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
// view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/

#include <stdio.h>
#include <phidget21.h>

int CCONV AttachHandler(CPhidgetHandle ir, void *userptr)
{
	int serialNo;
	CPhidget_getSerialNumber(ir, &serialNo);
	printf("PhidgetIR %10d attached!", serialNo);

	return 0;
}

//callback that will run if the Accelerometer is detached from the computer
int CCONV DetachHandler(CPhidgetHandle ir, void *userptr)
{
	int serialNo;
	CPhidget_getSerialNumber(ir, &serialNo);
	printf("PhidgetIR %10d detached! \n", serialNo);

	return 0;
}

//callback that will run if the Accelerometer generates an error
int CCONV ErrorHandler(CPhidgetHandle ir, void *userptr, int ErrorCode, const char *unknown)
{
	printf("Error handled. %d - %s \n", ErrorCode, unknown);
	return 0;
}

int CCONV CodeHandler(CPhidgetIRHandle ir, void *userPtr, unsigned char *data, int dataLength, int bitCount, int repeat)
{
	int i;
	printf("DataLength: %d, Bit Count: %d, Repeat: %d\n", dataLength, bitCount, repeat);
	printf("Code: ");
	for(i = 0; i < dataLength; i++)
	{
		printf("%02x", data[i]); 
	}
	printf("\n");
	return 0;
}

int CCONV LearnHandler(CPhidgetIRHandle phid, void *userPtr, unsigned char *data, int dataLength, CPhidgetIR_CodeInfoHandle codeInfo)
{
	int i, toggleMaskBytes;
	char *encodingStr;
	char *lengthStr;

	printf("Learned Code: ");
	for(i = 0; i < dataLength; i++)
	{
		printf("%02x", data[i]);
	}
	printf("\n");

	encodingStr = "";
	switch(codeInfo->encoding)
	{
		case PHIDGET_IR_ENCODING_UNKNOWN:
			encodingStr = "Unknown";
			break;
		case PHIDGET_IR_ENCODING_SPACE:
			encodingStr = "Space";
			break;
		case PHIDGET_IR_ENCODING_PULSE:
			encodingStr = "Pulse";
			break;
		case PHIDGET_IR_ENCODING_BIPHASE:
			encodingStr = "BiPhase";
			break;
		case PHIDGET_IR_ENCODING_RC5:
			encodingStr = "RC5";
			break;
		case PHIDGET_IR_ENCODING_RC6:
			encodingStr = "RC6";
			break;
		default:
			encodingStr = "Unknown";
			break;
	}
	lengthStr = "";
	switch(codeInfo->length)
	{
		case PHIDGET_IR_LENGTH_UNKNOWN:
			lengthStr = "Unknown";
			break;
		case PHIDGET_IR_LENGTH_CONSTANT:
			lengthStr = "Constant";
			break;
		case PHIDGET_IR_LENGTH_VARIABLE:
			lengthStr = "Variable";
			break;
		default:
			lengthStr = "Unknown";
			break;
	}

	printf("Learned Code Info:\n");
	printf("----------------------------------------------------\n");
	
	printf("Bit Count: %d\nEncoding: %s\nLength: %s\nGap: %d\nTrail: %d", codeInfo->bitCount, encodingStr, lengthStr, codeInfo->gap, codeInfo->trail);
	printf("Header: { %d, %d }\nOne: { %d, %d }\nZero: { %d, %d }\n", codeInfo->header[0], codeInfo->header[1], codeInfo->one[0], codeInfo->one[1], codeInfo->zero[0], codeInfo->zero[1]);
	printf("Repeat: {");
	for(i = 0; i < 26; i++)
	{
		if(codeInfo->repeat[i] == 0)
			break;
		if(i == 0)
			printf("%d", codeInfo->repeat[i]);
		else
			printf(", %d", codeInfo->repeat[i]);
	}
	printf("}\n");
	printf("MinRepeat: %d\n", codeInfo->min_repeat);
	printf("Toggle Mask: ");

	toggleMaskBytes = 0;
	if((codeInfo->bitCount % 8) == 0)
		toggleMaskBytes = (codeInfo->bitCount / 8) + 0;
	else
		toggleMaskBytes = (codeInfo->bitCount / 8) + 1;

	for(i = 0; i < toggleMaskBytes; i++)
	{
		printf("%02x", codeInfo->toggle_mask[i]);
	}
	printf("\n");
	printf("Carrier Frequency: %d\nDuty Cycle: %d\n", codeInfo->carrierFrequency, codeInfo->dutyCycle);
	printf("----------------------------------------------------\n");

	return 0;
}

int CCONV RawDataHandler(CPhidgetIRHandle phid, void *userPtr, int *data, int dataLength)
{
	int i;
	printf("----------------------------------------------------\n");
	for(i = 0; i < dataLength; i++)
	{
		if((i % 8) == 0) printf("\n");
		if(data[i] == 0x7fffffff) printf("LONG");
		else printf("%d", data[i]);
		if(((i + 1) % 8) != 0) printf(", ");
	}
	printf("\n----------------------------------------------------\n");
	return 0;
}

int display_properties(CPhidgetHandle phid)
{
	int serialNo, version;
	const char* ptr;
	
	CPhidget_getDeviceType(phid, &ptr);
	CPhidget_getSerialNumber(phid, &serialNo);
	CPhidget_getDeviceVersion(phid, &version);

	printf("%s\n", ptr);
	printf("Serial Number: %10d\nVersion: %8d\n", serialNo, version);

	return 0;
}

int IR_Simple()
{
	CPhidgetIRHandle ir = 0;
	int result, i, dataLength, bitCount;
	const char *err;
	unsigned char data[16];
	
	//Apple volume up
	unsigned char code[4] = {0x77,0xe1,0xd0,0xf0};

	//Apple volume up
    int rawData[67] = {
       9040,   4590,    540,    630,    550,   1740,    550,   1750,    550,   1740,
        550,    620,    550,   1750,    550,   1740,    550,   1750,    550,   1740,
        550,   1740,    560,   1740,    540,    630,    550,    620,    550,    620,
        540,    630,    550,   1750,    550,   1740,    560,   1740,    550,    620,
        550,   1740,    550,    620,    550,    620,    560,    610,    550,    620,
        550,   1750,    550,   1740,    550,    620,    550,   1740,    550,   1750,
        550,    620,    550,    620,    550,    620,    540};

	//Apple uses standard NEC code
	CPhidgetIR_CodeInfo codeInfo = {0}; //this sets eveything to 0 - important if we're NOT going to explicitely fill everything in
	codeInfo.bitCount = 32;
	codeInfo.encoding = PHIDGET_IR_ENCODING_SPACE;
	codeInfo.gap = 110000;
	codeInfo.trail = 560;
	codeInfo.header[0] = 9000, codeInfo.header[1] = 4500;
	codeInfo.one[0] = 560, codeInfo.one[1] = 1700;
	codeInfo.zero[0] = 560, codeInfo.zero[1] = 560;
	codeInfo.repeat[0] = 9000, codeInfo.repeat[1] = 2250, codeInfo.repeat[2] = 560;

	//The rest of these parameters don't need to be filled in, as we're going to use the defaults
	//but this is how they could be filled in:

	//codeInfo.length = PHIDGET_IR_LENGTH_CONSTANT;
	//codeInfo.min_repeat = 1;
	////toggle mask should be bit-length long
	//codeInfo.toggle_mask[0] = 0x00, codeInfo.toggle_mask[1] = 0x00, codeInfo.toggle_mask[2] = 0x00, codeInfo.toggle_mask[3] = 0x00;
	//codeInfo.carrierFrequency = 38000;
	//codeInfo.dutyCycle = 33;


	CPhidgetIR_create(&ir);

	CPhidget_set_OnAttach_Handler((CPhidgetHandle)ir, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)ir, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)ir, ErrorHandler, NULL);

	CPhidgetIR_set_OnCode_Handler(ir, CodeHandler, NULL);
	CPhidgetIR_set_OnLearn_Handler(ir, LearnHandler, NULL);
	CPhidgetIR_set_OnRawData_Handler(ir, RawDataHandler, NULL);

	CPhidget_open((CPhidgetHandle)ir, -1);

	printf("Waiting for PhidgetIR to be attached.... \n");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)ir, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return 0;
	}

	//Display the properties of the attached accelerometer device
	display_properties((CPhidgetHandle)ir);

	printf("Reading.....\n");

	printf("Press any key to Transmit a code...\n");
	getchar();

	if(result = CPhidgetIR_Transmit(ir, code, &codeInfo))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Error: %s\n", err);
	}

	printf("Press any key to Transmit some raw data...\n");
	getchar();

	CPhidgetIR_TransmitRaw(ir, rawData, 67, 38000, 33, 110000);

	printf("Press any key to get the last code read...\n");
	getchar();


	dataLength = 16;
	
	if((result = CPhidgetIR_getLastCode(ir, data, &dataLength, &bitCount)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Error: %s\n", err);
	}
	else
	{
		printf("Last Code: ");
		for(i = 0; i < dataLength; i++)
		{
			printf("%02x", data[i]); 
		}
		printf("\n");
	}

	printf("Press any key to end\n");
	getchar();

	printf("Closing...\n");
	CPhidget_close((CPhidgetHandle)ir);
	CPhidget_delete((CPhidgetHandle)ir);

	return 0;
}

int main(int argc, char* argv[])
{
	IR_Simple();
	return 0;
}

