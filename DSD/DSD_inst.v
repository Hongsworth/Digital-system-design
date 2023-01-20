	DSD u0 (
		.clk_clk                            (<connected-to-clk_clk>),                            //                         clk.clk
		.reset_reset_n                      (<connected-to-reset_reset_n>),                      //                       reset.reset_n
		.led_pio_clk_clk                    (<connected-to-led_pio_clk_clk>),                    //                 led_pio_clk.clk
		.led_pio_reset_reset_n              (<connected-to-led_pio_reset_reset_n>),              //               led_pio_reset.reset_n
		.led_pio_s1_address                 (<connected-to-led_pio_s1_address>),                 //                  led_pio_s1.address
		.led_pio_s1_write_n                 (<connected-to-led_pio_s1_write_n>),                 //                            .write_n
		.led_pio_s1_writedata               (<connected-to-led_pio_s1_writedata>),               //                            .writedata
		.led_pio_s1_chipselect              (<connected-to-led_pio_s1_chipselect>),              //                            .chipselect
		.led_pio_s1_readdata                (<connected-to-led_pio_s1_readdata>),                //                            .readdata
		.led_pio_external_connection_export (<connected-to-led_pio_external_connection_export>)  // led_pio_external_connection.export
	);

