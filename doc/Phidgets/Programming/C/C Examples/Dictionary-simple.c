#include <stdio.h>
#include <phidget21.h>


#if !defined(_MSC_VER)   
	#define WAITTIME 3
#else						//Visual C/C++
	#define WAITTIME 3000
	#include <windows.h>;
	#define sleep Sleep
#endif


CPhidgetDictionaryHandle dict = 0;
CPhidgetDictionaryListenerHandle keyListener = 0;
const char *keyPattern = ".*";


int CCONV KeyChangedHandler(CPhidgetDictionaryHandle dict, void *userPtr, const char *key, const char *value, CPhidgetDictionary_keyChangeReason reason)
{
	const char *reasonString;



	if(reason == PHIDGET_DICTIONARY_VALUE_CHANGED)

	{

		reasonString = "Value Changed";

	}

	else if(reason == PHIDGET_DICTIONARY_ENTRY_ADDED)

	{

		reasonString = "Entry Added";

	}

	else if(reason == PHIDGET_DICTIONARY_ENTRY_REMOVING)

	{

		reasonString = "Entry Removed";

	}

	else if(reason == PHIDGET_DICTIONARY_CURRENT_VALUE)

	{

		reasonString = "Current Value";

	}



	printf("%s>> Key: %s -- Value: %s\n", reasonString, key, value);

	return 0;
}
int CCONV DictionaryErrorHandler(CPhidgetDictionaryHandle dict, void *userPtr, int errorCode, const char *errorString)
{

	printf("Dictionary Error>> %i: %s\n", errorCode, errorString);
	return 0;
}
int CCONV ServerConnectedHandler(CPhidgetHandle phid, void *userPtr)
{

	printf("Server Connection Established.\n");
	CPhidgetDictionary_set_OnKeyChange_Handler(dict, &keyListener, keyPattern, KeyChangedHandler, NULL);
	return 0;
}
int CCONV ServerDisconnectedHandler(CPhidgetHandle phid, void *userPtr)
{

	printf("Server Disconnected!\n");
	CPhidgetDictionary_remove_OnKeyChange_Handler(keyListener);
	keyListener = 0;
	return 0;
}
int dictionary_simple()
{
	int result, serverStatus, port;
	const char *address;

	result = CPhidgetDictionary_create(&dict);

	result = CPhidget_set_OnServerConnect_Handler((CPhidgetHandle)dict, ServerConnectedHandler, NULL);
	result = CPhidget_set_OnServerDisconnect_Handler((CPhidgetHandle)dict, ServerDisconnectedHandler, NULL);
	result = CPhidgetDictionary_set_OnError_Handler(dict, DictionaryErrorHandler, NULL);

	result = CPhidgetDictionary_openRemoteIP(dict, "localhost", 5001, NULL);

	do
	{
		result = CPhidgetDictionary_getServerStatus(dict, &serverStatus);
	}while(serverStatus = PHIDGET_NOTATTACHED);


	printf("Attached to server\n");

	CPhidgetDictionary_getServerAddress(dict, &address, &port);

	printf("Address: %s -- Port: %i \n", address, port);



	//Set some keys

	printf("Add some keys....\n");

	sleep(WAITTIME);



	CPhidgetDictionary_addKey(dict, "TEST1", "234", 1);

	CPhidgetDictionary_addKey(dict, "TEST2", "5678", 1);

	CPhidgetDictionary_addKey(dict, "TEST3", "9012", 0);

	CPhidgetDictionary_addKey(dict, "TEST4", "3456", 1);

	sleep(WAITTIME);



	printf("Delete the 4th key....\n");

	sleep(WAITTIME);


	CPhidgetDictionary_removeKey(dict, "TEST4");

    sleep(WAITTIME);



	printf("Press any key to end\n");

	getchar();


	result = CPhidgetDictionary_close(dict);
	result = CPhidgetDictionary_delete(dict);
	return 0;
}

int main(int argc, char* argv[])
{
	dictionary_simple();
	return 0;
}
