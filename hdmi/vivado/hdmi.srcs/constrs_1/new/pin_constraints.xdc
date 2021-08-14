#------------------------------------------------------------------------------
#--  Constraint file for HDMI controller <> QMTECH ZYNQ 7010
#--  rev. 1.0 : 2021 Provoost Kris
#------------------------------------------------------------------------------

set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_CLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_TX_CLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports MDIO_ETHERNET_0_0_mdio_io]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_GMII_TX_EN_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_RXD[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_RXD[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_RXD[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_RXD[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_TXD[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_TXD[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_TXD[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ENET0_TXD[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports ENET0_GMII_RX_DV_0]
set_property PACKAGE_PIN J18 [get_ports ENET0_GMII_RX_CLK_0]
set_property PACKAGE_PIN H18 [get_ports ENET0_GMII_TX_CLK_0]
set_property PACKAGE_PIN D20 [get_ports {ENET0_GMII_TX_EN_0[0]}]
set_property PACKAGE_PIN M18 [get_ports ENET0_GMII_RX_DV_0]
set_property PACKAGE_PIN M20 [get_ports MDIO_ETHERNET_0_0_mdc]
set_property PACKAGE_PIN M19 [get_ports MDIO_ETHERNET_0_0_mdio_io]
set_property PACKAGE_PIN L20 [get_ports {ENET0_RXD[0]}]
set_property PACKAGE_PIN L19 [get_ports {ENET0_RXD[1]}]
set_property PACKAGE_PIN H20 [get_ports {ENET0_RXD[2]}]
set_property PACKAGE_PIN J20 [get_ports {ENET0_RXD[3]}]
set_property PACKAGE_PIN G20 [get_ports {ENET0_TXD[0]}]
set_property PACKAGE_PIN G19 [get_ports {ENET0_TXD[1]}]
set_property PACKAGE_PIN F20 [get_ports {ENET0_TXD[2]}]
set_property PACKAGE_PIN F19 [get_ports {ENET0_TXD[3]}]


set_property IOSTANDARD TMDS_33 [get_ports clk_p]
set_property IOSTANDARD TMDS_33 [get_ports {data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {data_p[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {data_p[0]}]

set_property PACKAGE_PIN T11 [get_ports clk_p]
set_property PACKAGE_PIN T12 [get_ports {data_p[2]}]
set_property PACKAGE_PIN V12 [get_ports {data_p[1]}]
set_property PACKAGE_PIN W14 [get_ports {data_p[0]}]

