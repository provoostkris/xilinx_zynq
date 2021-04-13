### ethernet


The purpose is to interact with the board via the ethernet port.
For now the application is running the LW IP stack

Connect the board with the Ethernet cable , and configure the host PC in the same address range
Example : 192.168.1.100 , start the application and ping to the board, a valid response should occur


##### Vitis console output:
Connected to COM8 at 115200



-----lwIP TCP echo server ------

TCP packets sent to port 6001 will be echoed back

Start PHY autonegotiation 
Waiting for PHY to complete autonegotiation.
autonegotiation complete 
link speed for phy address 0: 10
DHCP Timeout
Configuring default IP of 192.168.1.10
Board IP: 192.168.1.10

Netmask : 255.255.255.0

Gateway : 192.168.1.1

TCP echo server started @ port 7

##### Console terminal
Microsoft Windows [Version 10.0.18362.295]
(c) 2019 Microsoft Corporation. Alle rechten voorbehouden.

C:\Users\Kris>ping 192.168.1.10

Pinging 192.168.1.10 with 32 bytes of data:
Reply from 192.168.1.10: bytes=32 time=1ms TTL=255
Reply from 192.168.1.10: bytes=32 time<1ms TTL=255
Reply from 192.168.1.10: bytes=32 time<1ms TTL=255
Reply from 192.168.1.10: bytes=32 time<1ms TTL=255

Ping statistics for 192.168.1.10:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 1ms, Average = 0ms

C:\Users\Kris>arp -a

Interface: 192.168.1.100 --- 0xb
  Internet Address      Physical Address      Type
  192.168.1.10          00-0a-35-00-01-02     dynamic
  ...
