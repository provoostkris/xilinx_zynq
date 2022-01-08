# xilinx_zynq

### Hardware
A QMTECH ZYNQ starter kit is used in these examples.
The board contains a ZYNQ 7010 FPGA, which is the smallest device in the Z-7000 family.
It contains a dual core ARM and an FPGA with 17.000 LUT and 35.000 DFF.

### The board overview
![Board](/img/board_top.JPG)

### [Blink a LED](/blink_a_led)
A test run of the board.
The blink_a_led design uses the ZYNQ IP with the following components enabled:
- Ethernet
- SD card
- UART
- DDR
The vitis project files and source code are added, when this is deployed to the board it will simply blink the LED next to the GPIO header.

### [Ethernet](/ethernet)
A test run of the board.
The Ethernet design uses the ZYNQ IP with the following components enabled:
- Ethernet
- SD card
- UART
- DDR

### [Data Transfers](data_transfers)
The data_transfers design uses the ZYNQ IP with the following components enabled:
- Ethernet
- SD card
- UART
- DDR
Additionally in the PL there is addition of the following components
- Central DMA controller
- Smartconnect
The purpose is to have a reference hardware to test DMA transfers

### [Memories](/memories)
The memories design uses the ZYNQ IP with the following components enabled:
- Ethernet
- SD card
- UART
- DDR
Additionally in the PL there is addition of the following components
- BRAM
- JTAG master
- Smartconnect
- reset controller
The purpose is to have a reference hardware to test access to the memories (RAM and BRAM)

### [HDMI](/hdmi)
Pattern generator and HDMI interface controller. All in PL fabric.
