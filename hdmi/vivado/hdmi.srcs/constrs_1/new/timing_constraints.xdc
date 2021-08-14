#------------------------------------------------------------------------------
#--  Constraint file for HDMI controller <> QMTECH ZYNQ 7010
#--  rev. 1.0 : 2021 Provoost Kris
#------------------------------------------------------------------------------

# for now add arbitrary delay of 
# 1 ns for the generated clock
# 1 ns for the generated data

set HDMI_PIX_CLK    25.0
set HDMI_TSU         1.0
set HDMI_TH          1.0
set HDMI_PAD         0.3
set HDMI_MAX [expr ${HDMI_PIX_CLK} - ${HDMI_TSU} - ${HDMI_PAD}]
set HDMI_MIN [expr ${HDMI_PIX_CLK} + ${HDMI_TH}  + ${HDMI_PAD}]

create_clock -period ${HDMI_PIX_CLK} -name HDMI_TX_CLK -waveform {0.000 2.500} [get_ports {clk_p clk_n}]

#set_output_delay -clock [get_clocks HDMI_TX_CLK] -max ${HDMI_MAX} [get_ports {{data_n[0]} {data_p[0]} }]
#set_output_delay -clock [get_clocks HDMI_TX_CLK] -max ${HDMI_MAX} [get_ports {{data_n[1]} {data_p[1]} }]
#set_output_delay -clock [get_clocks HDMI_TX_CLK] -max ${HDMI_MAX} [get_ports {{data_n[2]} {data_p[2]} }]

#set_output_delay -clock [get_clocks HDMI_TX_CLK] -min ${HDMI_MIN} [get_ports {{data_n[0]} {data_p[0]} }]
#set_output_delay -clock [get_clocks HDMI_TX_CLK] -min ${HDMI_MIN} [get_ports {{data_n[1]} {data_p[1]} }]
#set_output_delay -clock [get_clocks HDMI_TX_CLK] -min ${HDMI_MIN} [get_ports {{data_n[2]} {data_p[2]} }]