vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/processing_system7_vip_v1_0_10
vlib activehdl/xil_defaultlib
vlib activehdl/xlconcat_v2_1_4

vmap xilinx_vip activehdl/xilinx_vip
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 activehdl/processing_system7_vip_v1_0_10
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/ec67/hdl" "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hdmi.gen/sources_1/bd/soc/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/ec67/hdl" "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hdmi.gen/sources_1/bd/soc/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/ec67/hdl" "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hdmi.gen/sources_1/bd/soc/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/ec67/hdl" "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/soc/ip/soc_processing_system7_0_0/sim/soc_processing_system7_0_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/ec67/hdl" "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../hdmi.gen/sources_1/bd/soc/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/ec67/hdl" "+incdir+../../../../hdmi.gen/sources_1/bd/soc/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/soc/ip/soc_xlconcat_0_0/sim/soc_xlconcat_0_0.v" \
"../../../bd/soc/ip/soc_xlconcat_1_0/sim/soc_xlconcat_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/soc/sim/soc.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

