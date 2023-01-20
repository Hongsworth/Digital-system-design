	component DSD is
		port (
			clk_clk                            : in  std_logic                     := 'X';             -- clk
			reset_reset_n                      : in  std_logic                     := 'X';             -- reset_n
			led_pio_clk_clk                    : in  std_logic                     := 'X';             -- clk
			led_pio_reset_reset_n              : in  std_logic                     := 'X';             -- reset_n
			led_pio_s1_address                 : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- address
			led_pio_s1_write_n                 : in  std_logic                     := 'X';             -- write_n
			led_pio_s1_writedata               : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			led_pio_s1_chipselect              : in  std_logic                     := 'X';             -- chipselect
			led_pio_s1_readdata                : out std_logic_vector(31 downto 0);                    -- readdata
			led_pio_external_connection_export : out std_logic_vector(7 downto 0)                      -- export
		);
	end component DSD;

	u0 : component DSD
		port map (
			clk_clk                            => CONNECTED_TO_clk_clk,                            --                         clk.clk
			reset_reset_n                      => CONNECTED_TO_reset_reset_n,                      --                       reset.reset_n
			led_pio_clk_clk                    => CONNECTED_TO_led_pio_clk_clk,                    --                 led_pio_clk.clk
			led_pio_reset_reset_n              => CONNECTED_TO_led_pio_reset_reset_n,              --               led_pio_reset.reset_n
			led_pio_s1_address                 => CONNECTED_TO_led_pio_s1_address,                 --                  led_pio_s1.address
			led_pio_s1_write_n                 => CONNECTED_TO_led_pio_s1_write_n,                 --                            .write_n
			led_pio_s1_writedata               => CONNECTED_TO_led_pio_s1_writedata,               --                            .writedata
			led_pio_s1_chipselect              => CONNECTED_TO_led_pio_s1_chipselect,              --                            .chipselect
			led_pio_s1_readdata                => CONNECTED_TO_led_pio_s1_readdata,                --                            .readdata
			led_pio_external_connection_export => CONNECTED_TO_led_pio_external_connection_export  -- led_pio_external_connection.export
		);

