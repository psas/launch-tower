// - TextLCD simple -
// This simple example set up a TextLCD(including the TextLCD Adapter), waits for one to be attached, and then simulates 
// the different functionalites available on the TextLCD
//
// Copyright 2012 Phidgets Inc.  All rights reserved.
// This work is licensed under the Creative Commons Attribution 2.5 Canada License. 
// view a copy of this license, visit http://creativecommons.org/licenses/by/2.5/ca/

#include <stdio.h>
#include <phidget21.h>


int CCONV AttachHandler(CPhidgetHandle TXT, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (TXT, &name);
	CPhidget_getSerialNumber(TXT, &serialNo);
	printf("%s %10d attached!\n", name, serialNo);

	return 0;
}

int CCONV DetachHandler(CPhidgetHandle TXT, void *userptr)
{
	int serialNo;
	const char *name;

	CPhidget_getDeviceName (TXT, &name);
	CPhidget_getSerialNumber(TXT, &serialNo);
	printf("%s %10d detached!\n", name, serialNo);

	return 0;
}

int CCONV ErrorHandler(CPhidgetHandle TXT, void *userptr, int ErrorCode, const char *Description)
{
	printf("Error handled. %d - %s\n", ErrorCode, Description);
	return 0;
}

//Display the properties of the attached phidget to the screen.  We will be displaying the name, serial number and version of the attached device.
int display_properties(CPhidgetTextLCDHandle phid)
{
	int serialNo, version, numRows, numColumns, backlight, cursor, contrast, cursor_blink, numScreens;
	const char* ptr;
	CPhidget_DeviceClass *name;
	
	CPhidget_getDeviceType((CPhidgetHandle)phid, &ptr);
	CPhidget_getSerialNumber((CPhidgetHandle)phid, &serialNo);
	CPhidget_getDeviceVersion((CPhidgetHandle)phid, &version);
	CPhidget_getDeviceID((CPhidgetHandle)phid, &name);

	CPhidgetTextLCD_getRowCount (phid, &numRows);
	CPhidgetTextLCD_getColumnCount (phid, &numColumns);
	CPhidgetTextLCD_getBacklight (phid, &backlight);
	CPhidgetTextLCD_getContrast (phid, &contrast);
	CPhidgetTextLCD_getCursorOn (phid, &cursor);
	CPhidgetTextLCD_getCursorBlink (phid, &cursor_blink);

	printf("%s\n", ptr);
	printf("Serial Number: %10d\nVersion: %8d\n", serialNo, version);
	if(name == PHIDID_TEXTLCD_ADAPTER){
		CPhidgetTextLCD_getScreenCount (phid, &numScreens);
		printf("# Screens: %d\n", numScreens);
		CPhidgetTextLCD_setScreen(phid, 0);
		CPhidgetTextLCD_setScreenSize(phid, PHIDGET_TEXTLCD_SCREEN_2x16);
		CPhidgetTextLCD_initialize(phid);
	}

	printf("# Rows: %d\n# Columns: %d\n", numRows, numColumns);
	printf("Current Contrast Level: %d\nBacklight Status: %d\n", contrast, backlight);
	printf("Cursor Status: %d\nCursor Blink Status: %d\n", cursor, cursor_blink);

	return 0;
}

int textlcd_simple()
{
	int result;
	const char *err;

	//Declare an TextLCD handle
	CPhidgetTextLCDHandle txt_lcd = 0;

	//create the TextLCD object
	CPhidgetTextLCD_create(&txt_lcd);

	//Set the handlers to be run when the device is plugged in or opened from software, unplugged or closed from software, or generates an error.
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)txt_lcd, AttachHandler, NULL);
	CPhidget_set_OnDetach_Handler((CPhidgetHandle)txt_lcd, DetachHandler, NULL);
	CPhidget_set_OnError_Handler((CPhidgetHandle)txt_lcd, ErrorHandler, NULL);

	//open the TextLCD for device connections
	CPhidget_open((CPhidgetHandle)txt_lcd, -1);

	//get the program to wait for an TextLCD device to be attached
	printf("Waiting for TextLCD to be attached....\n");
	if((result = CPhidget_waitForAttachment((CPhidgetHandle)txt_lcd, 10000)))
	{
		CPhidget_getErrorDescription(result, &err);
		printf("Problem waiting for attachment: %s\n", err);
		return 0;
	}

	//Display the properties of the attached textlcd device
	display_properties(txt_lcd);

	//read TextLCD event data
	printf("Reading.....\n");

	//Begin simulation of capabilities

	//Step 1: Write a simple message to the first row
	printf("Writing to first row. Press any key to continue\n");
	getchar();

	CPhidgetTextLCD_setDisplayString (txt_lcd, 0, "Row 1");

	//Step 2: write a simple message to the second row
	printf("Writing to second row. Press any key to continue\n");
	getchar();

	CPhidgetTextLCD_setDisplayString (txt_lcd, 1, "Row 2");

	//Step 3: turn up, turn down, and set back to default the contrast
	printf("Adjusting contrast up. Press any key to continue\n");
	getchar();

	CPhidgetTextLCD_setContrast (txt_lcd, 255); //valid range is 0 - 255, default is 0 normal viewable seems to be around 100

	printf("Restoring default contrast. Press any key to continue\n");
	getchar();

	CPhidgetTextLCD_setContrast (txt_lcd, 110);

	//Step 4: Turn on the cursor
	printf("Turn on cursor. Press any key to continue\n");
	getchar();

	CPhidgetTextLCD_setCursorOn (txt_lcd, 1);

	//Step 5: turn on the cursor blink
	printf("Turn on cursor blink. Press any key to continue\n");
	getchar();

	CPhidgetTextLCD_setCursorOn (txt_lcd, 0);

	CPhidgetTextLCD_setCursorBlink (txt_lcd, 1);

	//End simulation
	printf("Press any key to end\n");
	getchar();

	CPhidgetTextLCD_setCursorBlink (txt_lcd, 0);
	CPhidgetTextLCD_setDisplayString (txt_lcd, 0, "");
	CPhidgetTextLCD_setDisplayString (txt_lcd, 1, "");

	//since user input has been read, this is a signal to terminate the program so we will close the phidget and delete the object we created
	printf("Closing...\n");
	CPhidget_close((CPhidgetHandle)txt_lcd);
	CPhidget_delete((CPhidgetHandle)txt_lcd);

	//all done, exit
	return 0;
}

int main(int argc, char* argv[])
{
	textlcd_simple();
	return 0;
}

