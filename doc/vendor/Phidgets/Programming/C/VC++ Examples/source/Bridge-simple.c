// BridgeTest.cpp : Defines the entry point for the console application.
//

#include <stdio.h>
#include <phidget21.h>

int CCONV AttachHandler(CPhidgetHandle phid, void *userptr)
{
	CPhidgetBridgeHandle bridge = (CPhidgetBridgeHandle)phid;

	CPhidgetBridge_setEnabled(bridge, 0, PTRUE);
	CPhidgetBridge_setEnabled(bridge, 1, PFALSE);
	CPhidgetBridge_setEnabled(bridge, 2, PFALSE);
	CPhidgetBridge_setEnabled(bridge, 3, PFALSE);

	CPhidgetBridge_setGain(bridge, 0, PHIDGET_BRIDGE_GAIN_128);
	CPhidgetBridge_setGain(bridge, 1, PHIDGET_BRIDGE_GAIN_16);
	CPhidgetBridge_setGain(bridge, 2, PHIDGET_BRIDGE_GAIN_32);
	CPhidgetBridge_setGain(bridge, 3, PHIDGET_BRIDGE_GAIN_64);
	CPhidgetBridge_setDataRate(bridge, 1000);

	printf("Attach handler ran!\n");
	return 0;
}

int CCONV DetachHandler(CPhidgetHandle phid, void *userptr)
{
	printf("Detach handler ran!\n");
	return 0;
}

int CCONV ErrorHandler(CPhidgetHandle phid, void *userptr, int ErrorCode, const char *errorStr)
{
	printf("Error event: %s\n",errorStr);
	return 0;
}

#define FREQS_SIZE 20
double bridges[FREQS_SIZE] = {0};
int CCONV data(CPhidgetBridgeHandle phid, void *userPtr, int index, double val)
{
	CPhidgetBridgeHandle bridge = (CPhidgetBridgeHandle)phid;
	double f, ms;
	int i;

	printf("Data Event (%d) %lf\n",index,val);
	/*if(val < 0)
		printf("Data Event (%d) - -0x%06x\n",index,(int)-val);
	else
		printf("Data Event (%d) - +0x%06x\n",index,(int)val);*/

	return 0;
}

void display_generic_properties(CPhidgetHandle phid)
{
	int sernum, version;
	const char *deviceptr;
	CPhidget_getDeviceType(phid, &deviceptr);
	CPhidget_getSerialNumber(phid, &sernum);
	CPhidget_getDeviceVersion(phid, &version);

	printf("%s\n", deviceptr);
	printf("Version: %8d SerialNumber: %10d\n", version, sernum);
	return;
}

void test()
{
    const char *err;	
	int result;
	CPhidgetBridgeHandle bridge;
	//CPhidget_enableLogging(PHIDGET_LOG_VERBOSE, NULL);

	CPhidgetBridge_create(&bridge);

	CPhidget_set_OnAttach_Handler((CPhidgetHandle)bridge, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)bridge, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)bridge, ErrorHandler, NULL);

	CPhidgetBridge_set_OnBridgeData_Handler(bridge, data, NULL);

	CPhidget_open((CPhidgetHandle)bridge, -1);

	//Wait for 10 seconds, otherwise exit
	if(result = CPhidget_waitForAttachment((CPhidgetHandle)bridge, 10000))
	{

		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return;
	}

	display_generic_properties((CPhidgetHandle)bridge);

	//Wait for enter
	getchar();

	printf("Closing...\n");

	CPhidget_close((CPhidgetHandle)bridge);
	CPhidget_delete((CPhidgetHandle)bridge);

	return;
}

int main(int argc, char* argv[])
{
	test();

	return 0;
}

