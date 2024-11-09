module digital_ldo_top( 
	input ldotop_ref, 
	input ldotop_vdd, 
	input ldotop_vss, 
	input ldotop_clk, 
	input ldotop_rst, 
	input ldotop_test, 
	input [31:0] ldotop_test_in,
	output [31:0] ldotop_test_out, 
	output ldotop_vout
);

wire output_n, output_p; 
wire rs_out_n, rs_out_p; 
wire inv_clk, real_output, fake_output;
wire pass_in_0, pass_in_1, pass_in_2, pass_in_3, pass_in_4, pass_in_5, pass_in_6, pass_in_7, pass_in_8, pass_in_9, pass_in_10, pass_in_11, pass_in_12, pass_in_13, pass_in_14, pass_in_15, pass_in_16, pass_in_17, pass_in_18, pass_in_19, pass_in_20, pass_in_21, pass_in_22, pass_in_23, pass_in_24, pass_in_25, pass_in_26, pass_in_27, pass_in_28, pass_in_29, pass_in_30, pass_in_31; 
wire out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16, out17, out18, out19, out20, out21, out22, out23, out24, out25, out26, out27, out28, out29, out30, out31;
wire vout; 


assign ldotop_vout = vout;
assign pass_in_0 = ldotop_test ? ldotop_test_in[0] : out0; 
assign pass_in_1 = ldotop_test ? ldotop_test_in[1] : out1;
assign pass_in_2 = ldotop_test ? ldotop_test_in[2] : out2; 
assign pass_in_3 = ldotop_test ? ldotop_test_in[3] : out3; 
assign pass_in_4 = ldotop_test ? ldotop_test_in[4]: out4; 
assign pass_in_5 = ldotop_test ? ldotop_test_in[5] : out5; 
assign pass_in_6 = ldotop_test ? ldotop_test_in[6] : out6; 
assign pass_in_7 = ldotop_test ? ldotop_test_in[7] : out7; 
assign pass_in_8 = ldotop_test ? ldotop_test_in[8] : out8; 
assign pass_in_9 = ldotop_test ? ldotop_test_in[9] : out9; 
assign pass_in_10 = ldotop_test ? ldotop_test_in[10] : out10; 
assign pass_in_11 = ldotop_test ? ldotop_test_in[11] :out11 ; 
assign pass_in_12 = ldotop_test ? ldotop_test_in[12] : out12;
assign pass_in_13 = ldotop_test ? ldotop_test_in[13] : out13;
assign pass_in_14 = ldotop_test ? ldotop_test_in[14] : out14;
assign pass_in_15 = ldotop_test ? ldotop_test_in[15] : out15;
assign pass_in_16 = ldotop_test ? ldotop_test_in[16]: out16;
assign pass_in_17 = ldotop_test ? ldotop_test_in[17] : out17;
assign pass_in_18 = ldotop_test ? ldotop_test_in[18] : out18;
assign pass_in_19 = ldotop_test ? ldotop_test_in[19] : out19;
assign pass_in_20 = ldotop_test ? ldotop_test_in[20] : out20;
assign pass_in_21 = ldotop_test ? ldotop_test_in[21] : out21;
assign pass_in_22 = ldotop_test ? ldotop_test_in[22] : out22;
assign pass_in_23 = ldotop_test ? ldotop_test_in[23] : out23;
assign pass_in_24 = ldotop_test ? ldotop_test_in[24] : out24;
assign pass_in_25 = ldotop_test ? ldotop_test_in[25] : out25;
assign pass_in_26 = ldotop_test ? ldotop_test_in[26] : out26;
assign pass_in_27 = ldotop_test ? ldotop_test_in[27] : out27;
assign pass_in_28 = ldotop_test ? ldotop_test_in[28]: out28;
assign pass_in_29= ldotop_test ? ldotop_test_in[29] : out29;
assign pass_in_30 = ldotop_test ? ldotop_test_in[30] : out30;
assign pass_in_31 = ldotop_test ? ldotop_test_in[31] : out31;





strong_arm sa (
	.vss(ldotop_vss), 
	.input_n(vout), 
	.input_p(ldotop_vref), 
	.clock(ldotop_clk), 
	.vdd(ldotop_vdd), 
	.output_n(output_n), 
	.output_p(output_p)
)

rs_latch_new rslatch (
	.top_in_n(output_n), 
	.top_in_p(output_p), 
	.VDD(ldotop_vdd), 
	.VSS(ldotop_vss), 
	.top_out_n(rs_out_n), 
	.top_out_p(rs_out_p)
)

inverter i_clk (
	.din(ldotop_clk), 
	.dout(inv_clk), 
	.VDD(ldotop_vdd), 
	.VSS(ldotop_vss)
) 

inverter ireal (
	.din(rs_out_n), 
	.dout(real_output), 
	.VDD(ldotop_vdd), 
	.VSS(ldotop_vss)
)

inverter ifake (
	.din(rs_out_p), 
	.dout(fake_output), 
	.VDD(ldotop_vdd), 
	.VSS(ldotop_vss) 
) 

DigitalLDOLogic dll (
	.clk(ldotop_clk), 
	.rst(ldotop_rst), 
	.comp_in(fake_output), 
	.VDD(ldotop_vdd), 
	.VSS(ldotop_vss), 
	.out[0](pass_in_0), 
	.out[1](pass_in_1), 
	.out[2](pass_in_2), 
	.out[3](pass_in_3), 
	.out[4](pass_in_4), 
	.out[5](pass_in_5), 
	.out[6](pass_in_6),
	.out[7](pass_in_7), 
	.out[8](pass_in_8), 
	.out[9](pass_in_9), 
	.out[10](pass_in_10),
        .out[11](pass_in_11),
        .out[12](pass_in_12),
        .out[13](pass_in_13),
        .out[14](pass_in_14),
        .out[15](pass_in_15),
        .out[16](pass_in_16),
        .out[17](pass_in_17),
        .out[18](pass_in_18),
        .out[19](pass_in_19),
        .out[20](pass_in_20),
	.out[21](pass_in_21),
        .out[22](pass_in_22),
        .out[23](pass_in_23),
        .out[24](pass_in_24),
        .out[25](pass_in_25),
        .out[26](pass_in_26),
        .out[27](pass_in_27),
        .out[28](pass_in_28),
        .out[29](pass_in_29),
        .out[30](pass_in_30),
	.out[31](pass_in_31)

) 

pass_transistors pt ( 
	.Vg_0(pass_in_0),
        .Vg_1(pass_in_1),
        .Vg_2(pass_in_2),
        .Vg_3(pass_in_3),
        .Vg_4(pass_in_4),
        .Vg_5(pass_in_5),
        .Vg_6(pass_in_6),
        .Vg_7(pass_in_7),
        .Vg_8(pass_in_8),
        .Vg_9(pass_in_9),
        .Vg_10(pass_in_10),
        .Vg_11(pass_in_11),
        .Vg_12(pass_in_12),
        .Vg_13(pass_in_13),
        .Vg_14(pass_in_14),
        .Vg_15(pass_in_15),
        .Vg_16(pass_in_16),
        .Vg_17(pass_in_17),
        .Vg_18(pass_in_18),
        .Vg_19(pass_in_19),
        .Vg_20(pass_in_20),
        .Vg_21(pass_in_21),
        .Vg_22(pass_in_22),
        .Vg_23(pass_in_23),
        .Vg_24(pass_in_24),
        .Vg_25(pass_in_25),
        .Vg_26(pass_in_26),
        .Vg_27(pass_in_27),
        .Vg_28(pass_in_28),
        .Vg_29(pass_in_29),
        .Vg_30(pass_in_30),
        .Vg_31(pass_in_31), 
	.VDD(ldotop_vdd), 
	.Vout(vout)
)


endmodule
