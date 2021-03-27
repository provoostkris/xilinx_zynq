#include "xgpiops.h"
#include "sleep.h"

int main()
{
	static XGpioPs psGpioInstancePtr;
	XGpioPs_Config* GpioConfigPtr;
	int xStatus;

    GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	if(GpioConfigPtr == NULL)
		return XST_FAILURE;

	xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr,GpioConfigPtr, GpioConfigPtr->BaseAddr);
	if(XST_SUCCESS != xStatus)
		print(" PS GPIO INIT FAILED \n\r");
	 XGpioPs_SetDirectionPin(&psGpioInstancePtr, 54,1);
     XGpioPs_SetOutputEnablePin(&psGpioInstancePtr, 54,1);

	 while(1)
	 {
		XGpioPs_WritePin(&psGpioInstancePtr, 54, 1);
		usleep(200000);
		XGpioPs_WritePin(&psGpioInstancePtr, 54, 0);
		usleep(200000);

	 }
    return 0;
}
