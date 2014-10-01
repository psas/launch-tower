// GPSTest.cpp : Defines the entry point for the console application.
//

#include <stdio.h>
#include <phidget21.h>

int CCONV AttachHandler(CPhidgetHandle phid, void *userptr)
{
	GPSTime time;
	CPhidgetGPSHandle gps = (CPhidgetGPSHandle)phid;
	if(!CPhidgetGPS_getTime(gps, &time))
		printf("Attach handler ran at: %02d:%02d:%02d.%03d\n", time.tm_hour, time.tm_min, time.tm_sec, time.tm_ms);
	else
		printf("Attach handler ran!\n");
	return 0;
}

int CCONV DetachHandler(CPhidgetHandle phid, void *userptr)
{
	printf("Detach handler ran!\n");
	return 0;
}

int CCONV ErrorHandler(CPhidgetHandle phid, void *userptr, int ErrorCode, const char *unknown)
{
	printf("Error handler ran!\n");
	return 0;
}

int CCONV posnChange(CPhidgetGPSHandle phid, void *userPtr, double latitude, double longitude, double altitude)
{
	GPSDate date;
	GPSTime time;
	CPhidgetGPSHandle gps = (CPhidgetGPSHandle)phid;
	double heading, velocity;

	printf("Position Change event: lat: %3.4lf, long: %4.4lf, alt: %5.4lf\n", latitude, longitude, altitude);
	if(!CPhidgetGPS_getDate(gps, &date) && !CPhidgetGPS_getTime(gps, &time))
		printf(" Date: %02d/%02d/%02d Time %02d:%02d:%02d.%03d\n", date.tm_mday, date.tm_mon, date.tm_year, time.tm_hour, time.tm_min, time.tm_sec, time.tm_ms);
	if(!CPhidgetGPS_getHeading(gps, &heading) && !CPhidgetGPS_getVelocity(gps, &velocity))
		printf(" Heading: %3.2lf, Velocity: %4.3lf\n",heading, velocity);

	return 0;
}

int CCONV fixChange(CPhidgetGPSHandle phid, void *userPtr, int status)
{
	printf("Fix change event: %d\n", status);
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

void testGPS()
{
	int result;
	CPhidgetGPSHandle gps;
	//CPhidget_enableLogging(PHIDGET_LOG_VERBOSE, NULL);

	CPhidgetGPS_create(&gps);

	CPhidget_set_OnAttach_Handler((CPhidgetHandle)gps, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)gps, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)gps, ErrorHandler, NULL);

	CPhidgetGPS_set_OnPositionChange_Handler(gps, posnChange, NULL);
	CPhidgetGPS_set_OnPositionFixStatusChange_Handler(gps, fixChange, NULL);

	CPhidget_open((CPhidgetHandle)gps, -1);

	//Wait for 10 seconds, otherwise exit
	if(result = CPhidget_waitForAttachment((CPhidgetHandle)gps, 10000))
	{
		const char *err;
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return;
	}

	display_generic_properties((CPhidgetHandle)gps);

	//Wait for enter
	getchar();

	printf("Closing...\n");

	CPhidget_close((CPhidgetHandle)gps);
	CPhidget_delete((CPhidgetHandle)gps);

	return;
}

int main(int argc, char* argv[])
{
	testGPS();

	return 0;
}

