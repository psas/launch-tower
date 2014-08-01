// FrequencyCounterTest.cpp : Defines the entry point for the console application.
//

#include <stdio.h>
#include <phidget21.h>

int CCONV AttachHandler(CPhidgetHandle phid, void *userptr)
{
	CPhidgetFrequencyCounterHandle freq = (CPhidgetFrequencyCounterHandle)phid;

	CPhidgetFrequencyCounter_setEnabled(freq, 0, PTRUE);
	CPhidgetFrequencyCounter_setEnabled(freq, 1, PTRUE);

	//CPhidgetFrequencyCounter_setFilter(freq, 0, PHIDGET_FREQUENCYCOUNTER_FILTERTYPE_ZERO_CROSSING);
	CPhidgetFrequencyCounter_setFilter(freq, 0, PHIDGET_FREQUENCYCOUNTER_FILTERTYPE_LOGIC_LEVEL);

	CPhidgetFrequencyCounter_setFilter(freq, 1, PHIDGET_FREQUENCYCOUNTER_FILTERTYPE_ZERO_CROSSING);
	//CPhidgetFrequencyCounter_setFilter(freq, 1, PHIDGET_FREQUENCYCOUNTER_FILTERTYPE_LOGIC_LEVEL);

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
double freqs[FREQS_SIZE] = {0};
int CCONV Count(CPhidgetFrequencyCounterHandle phid, void *userPtr, int index, int time, int counts)
{
	CPhidgetFrequencyCounterHandle freq = (CPhidgetFrequencyCounterHandle)phid;
	double f, ms;
	int i;

	CPhidgetFrequencyCounter_getFrequency(freq, index, &f);
	ms = time/1000.0;

	//Smooth out the frequency a bit
	for(i=0;i<FREQS_SIZE-1;i++)
	{
		freqs[i] = freqs[i+1];
	}
	freqs[FREQS_SIZE-1] = f;
	f=0;
	for(i=0;i<FREQS_SIZE;i++)
	{
		f+=freqs[i];
	}
	f/=FREQS_SIZE;

	printf("Count Event (%d) - %d counts in %0.2lfms - %0.2lfHz\n",index,counts,ms,f);

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
	CPhidgetFrequencyCounterHandle freq;
	//CPhidget_enableLogging(PHIDGET_LOG_VERBOSE, NULL);

	CPhidgetFrequencyCounter_create(&freq);

	CPhidget_set_OnAttach_Handler((CPhidgetHandle)freq, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)freq, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)freq, ErrorHandler, NULL);

	CPhidgetFrequencyCounter_set_OnCount_Handler(freq, Count, NULL);

	CPhidget_open((CPhidgetHandle)freq, -1);

	//Wait for 10 seconds, otherwise exit
	if(result = CPhidget_waitForAttachment((CPhidgetHandle)freq, 10000))
	{

		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return;
	}

	display_generic_properties((CPhidgetHandle)freq);

	//Wait for enter
	getchar();

	printf("Closing...\n");

	CPhidget_close((CPhidgetHandle)freq);
	CPhidget_delete((CPhidgetHandle)freq);

	return;
}

int main(int argc, char* argv[])
{
	test();

	return 0;
}

