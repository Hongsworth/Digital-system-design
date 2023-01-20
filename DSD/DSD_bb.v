
module DSD (
	clk_clk,
	reset_reset_n,
	led_pio_clk_clk,
	led_pio_reset_reset_n,
	led_pio_s1_address,
	led_pio_s1_write_n,
	led_pio_s1_writedata,
	led_pio_s1_chipselect,
	led_pio_s1_readdata,
	led_pio_external_connection_export);	

	input		clk_clk;
	input		reset_reset_n;
	input		led_pio_clk_clk;
	input		led_pio_reset_reset_n;
	input	[1:0]	led_pio_s1_address;
	input		led_pio_s1_write_n;
	input	[31:0]	led_pio_s1_writedata;
	input		led_pio_s1_chipselect;
	output	[31:0]	led_pio_s1_readdata;
	output	[7:0]	led_pio_external_connection_export;
endmodule
