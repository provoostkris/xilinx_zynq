# xilinx_zynq

### Hardware
A QMTECH ZYNQ starter kit is used in these examples.
The board contains a ZYNQ 7010 FPGA, which is the smallest device in the Z-7000 family.
It contains a dual core ARM and an FPGA with 28.000 cells.

### Ethernet
A test run of the board. 
The Ethernet design uses the ZYNQ IP with the following components enabled:
 -Ethernet
 -SD card
 -UART
 -DDR
 
### blink_a_led
A test run of the board. 
The blink_a_led design uses the ZYNQ IP with the following components enabled:
 -Ethernet
 -SD card
 -UART
 -DDR
The vitis project files and source code are added, when this is deployed to the board it will simply blink the LED next to the GPIO header.
 
### memories

The blink_a_led design uses the ZYNQ IP with the following components enabled:
 -Ethernet
 -SD card
 -UART
 -DDR
Additionally in the PL there is addition of the following components
 -BRAM
 -JTAG master
 -smartconnect
 -reset controller
The purpose is to have a reference hardware to test access to the memories (RAM and BRAM) 

### The board overview
![Board](/img/board_top.JPG)
