/*
MEMORY
{
   axi_bram_ctrl_0_Mem0 : ORIGIN = 0x60000000,  LENGTH = 0x2000
   ps7_ddr_0 :            ORIGIN = 0x100000,    LENGTH = 0x1FF00000
   ps7_ram_0 :            ORIGIN = 0x0,         LENGTH = 0x30000
   ps7_ram_1 :            ORIGIN = 0xFFFF0000,  LENGTH = 0xFE00
}
*/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xil_io.h"


int mem_test(u32 Reg32Addr, u32 Reg32Data)
{
    int i;
    for (i = 1; i < 11; ++i)
      {
    	Reg32Addr = Reg32Addr + 0x4;
		Reg32Data = Reg32Data + 0x11112222;
		Xil_Out32(Reg32Addr,Reg32Data);

		Reg32Data = Xil_In32(Reg32Addr);
		xil_printf("Data : 0x%08x \n", Reg32Data);
      }
    return 0;
}

int main()
{
    u32 Reg32Addr;
    u32 Reg32Data;

    init_platform();

    print("\n Accessing BRAM @0x60000000 \n\r");
    Reg32Addr = 0x100000;
    Reg32Data = 0x00000000;
    mem_test(Reg32Addr, Reg32Data);

    print("\n Accessing ps7_ddr_0 @0x100000 \n\r");
    Reg32Addr = 0x100000;
    Reg32Data = 0x00000000;
    mem_test(Reg32Addr, Reg32Data);

    print("\n Accessing ps7_ram_0 @0x0 \n\r");
    Reg32Addr = 0x0;
    Reg32Data = 0x00000000;
    mem_test(Reg32Addr, Reg32Data);

    print("\n Accessing ps7_ram_1 @0xFFFF0000 \n\r");
    Reg32Addr = 0xFFFF0000;
    Reg32Data = 0x00000000;
    mem_test(Reg32Addr, Reg32Data);

    cleanup_platform();
    return 0;
}
