------------------------------------------------------------------------------
--  TOP level design file for HDMI controller <> QMTECH ZYNQ 7010
--  rev. 1.0 : 2021 Provoost Kris
------------------------------------------------------------------------------


library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;

entity hdmi is
	port(

    --! connections to the zynq
    DDR_0_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_0_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_0_cas_n : inout STD_LOGIC;
    DDR_0_ck_n : inout STD_LOGIC;
    DDR_0_ck_p : inout STD_LOGIC;
    DDR_0_cke : inout STD_LOGIC;
    DDR_0_cs_n : inout STD_LOGIC;
    DDR_0_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_0_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_0_odt : inout STD_LOGIC;
    DDR_0_ras_n : inout STD_LOGIC;
    DDR_0_reset_n : inout STD_LOGIC;
    DDR_0_we_n : inout STD_LOGIC;

    ENET0_GMII_RX_CLK_0 : in STD_LOGIC;
    ENET0_GMII_RX_DV_0 : in STD_LOGIC;
    ENET0_GMII_TX_CLK_0 : in STD_LOGIC;
    ENET0_GMII_TX_EN_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET0_RXD : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ENET0_TXD : out STD_LOGIC_VECTOR ( 3 downto 0 );

    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;

    MDIO_ETHERNET_0_0_mdc : out STD_LOGIC;
    MDIO_ETHERNET_0_0_mdio_io : inout STD_LOGIC;

    -- connections to the monitor
    clk_p     : out std_logic;
    clk_n     : out std_logic;
    data_p    : out std_logic_vector(2 downto 0);
    data_n    : out std_logic_vector(2 downto 0)

	);
end entity hdmi;


architecture rtl of hdmi is

  --! soc signal connections
  signal clk_out0_0  : std_logic;
  signal clk_out1_0  : std_logic;
  signal clk_out2_0  : std_logic;
  signal rst_out0_n  : std_logic;
  signal rst_out1_n  : std_logic;
  signal rst_out2_n  : std_logic;

  --! hdmi signal collection
  signal hdmi_clk    : std_logic;
  signal hdmi_rst    : std_logic;
  signal hdmi_clk_p  : std_logic;
  signal hdmi_clk_n  : std_logic;
  signal hdmi_data_p : std_logic_vector(2 downto 0);
  signal hdmi_data_n : std_logic_vector(2 downto 0);

begin

-- port level assignments
clk_p    <= hdmi_clk_p  ;
clk_n    <= hdmi_clk_n  ;
data_p   <= hdmi_data_p ;
data_n   <= hdmi_data_n ;

-- top level assignments
hdmi_clk <=     clk_out1_0;

--! reset synchronizer
p_rst: process (rst_out1_n,hdmi_clk)
begin
  if rst_out1_n = '0' then
    hdmi_rst  <= '1';
  elsif rising_edge(hdmi_clk) then
    hdmi_rst  <= '0';
  end if;
end process p_rst;

--!
--! add the soc
--!

i_soc_wrapper: entity work.soc_wrapper
  port map (
    ddr_0_addr                  => ddr_0_addr                     ,
    ddr_0_ba                    => ddr_0_ba                       ,
    ddr_0_cas_n                 => ddr_0_cas_n                    ,
    ddr_0_ck_n                  => ddr_0_ck_n                     ,
    ddr_0_ck_p                  => ddr_0_ck_p                     ,
    ddr_0_cke                   => ddr_0_cke                      ,
    ddr_0_cs_n                  => ddr_0_cs_n                     ,
    ddr_0_dm                    => ddr_0_dm                       ,
    ddr_0_dq                    => ddr_0_dq                       ,
    ddr_0_dqs_n                 => ddr_0_dqs_n                    ,
    ddr_0_dqs_p                 => ddr_0_dqs_p                    ,
    ddr_0_odt                   => ddr_0_odt                      ,
    ddr_0_ras_n                 => ddr_0_ras_n                    ,
    ddr_0_reset_n               => ddr_0_reset_n                  ,
    ddr_0_we_n                  => ddr_0_we_n                     ,

    enet0_gmii_rx_clk_0         => enet0_gmii_rx_clk_0            ,
    enet0_gmii_rx_dv_0          => enet0_gmii_rx_dv_0             ,
    enet0_gmii_tx_clk_0         => enet0_gmii_tx_clk_0            ,
    enet0_gmii_tx_en_0          => enet0_gmii_tx_en_0             ,
    enet0_rxd                   => enet0_rxd                      ,
    enet0_txd                   => enet0_txd                      ,

    fixed_io_ddr_vrn            => fixed_io_ddr_vrn               ,
    fixed_io_ddr_vrp            => fixed_io_ddr_vrp               ,
    fixed_io_mio                => fixed_io_mio                   ,
    fixed_io_ps_clk             => fixed_io_ps_clk                ,
    fixed_io_ps_porb            => fixed_io_ps_porb               ,
    fixed_io_ps_srstb           => fixed_io_ps_srstb              ,
    mdio_ethernet_0_0_mdc       => mdio_ethernet_0_0_mdc          ,
    mdio_ethernet_0_0_mdio_io   => mdio_ethernet_0_0_mdio_io      ,

    FCLK_CLK0_0                  => clk_out0_0                     ,
    FCLK_CLK1_0                  => clk_out1_0                     ,
    FCLK_CLK2_0                  => clk_out2_0                     ,
    FCLK_RESET0_N_0              => rst_out0_n                     ,
    FCLK_RESET1_N_0              => rst_out1_n                     ,
    FCLK_RESET2_N_0              => rst_out2_n

  );

--!
--! add one hdmi out driver
--!

i_hdmi_out: entity work.hdmi_out
    generic map (
        resolution   => "SVGA", --! hd1080p, hd720p, svga, vga
        gen_pattern  => true,     --! generate pattern or objects
        gen_pix_loc  => false,    --! generate location counters for x / y coordinates
        object_size  => 16,       --! size of the objects. should be higher than 11
        pixel_size   => 24,       --! rgb pixel total size. (r + g + b)
        series6      => false     --! disables oserdese2 and enables oserdese1 for ghdl simulation (7 series vs 6 series)
    )
    port map(
        clk     =>  hdmi_clk      ,
        rst     =>  hdmi_rst      ,
        clk_p   =>  hdmi_clk_p    ,
        clk_n   =>  hdmi_clk_n    ,
        data_p  =>  hdmi_data_p   ,
        data_n  =>  hdmi_data_n
    );


--! just blink LED to see activity
-- p_led: process (clk_pll_25, rst_pll_25)
  -- variable v_cnt : unsigned(24 downto 0);
-- begin
  -- if rst_pll_25 = '1' then
    -- led(0)   <= '0';
    -- v_cnt    := ( others => '0');
  -- elsif rising_edge(clk_pll_25) then
    -- led(0)   <= v_cnt(v_cnt'high);
    -- v_cnt    := v_cnt + 1;
  -- end if;
-- end process p_led;

end architecture rtl;