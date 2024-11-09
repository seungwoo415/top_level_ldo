module digital_ldo_top( 
	input ldotop_ref, 
	input ldotop_vdd, 
	input ldotop_vss, 
	input ldotop_clk, 
	input ldotop_rst, 
	input enable, 
	input [31:0] pass_transistors_code,  
	output ldotop_vout
);

wire output_n, output_p; 
wire rs_out_n, rs_out_p; 
wire inv_clk, real_output, fake_output;
wire pass_in_0, pass_in_1, pass_in_2, pass_in_3, pass_in_4, pass_in_5, pass_in_6, pass_in_7, pass_in_8, pass_in_9, pass_in_10, pass_in_11, pass_in_12, pass_in_13, pass_in_14, pass_in_15, pass_in_16, pass_in_17, pass_in_18, pass_in_19, pass_in_20, pass_in_21, pass_in_22, pass_in_23, pass_in_24, pass_in_25, pass_in_26, pass_in_27, pass_in_28, pass_in_29, pass_in_30, pass_in_31; 
wire out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16, out17, out18, out19, out20, out21, out22, out23, out24, out25, out26, out27, out28, out29, out30, out31;
wire vout; 


assign ldotop_vout = vout;

assign pass_in_0 = enable ? pass_transistors_code[0] : out0; 
assign pass_in_1 = enable ? pass_transistors_code[1] : out1;
assign pass_in_2 = enable ? pass_transistors_code[2] : out2; 
assign pass_in_3 = enable ? pass_transistors_code[3] : out3; 
assign pass_in_4 = enable ? pass_transistors_code[4]: out4; 
assign pass_in_5 = enable ? pass_transistors_code[5] : out5; 
assign pass_in_6 = enable ? pass_transistors_code[6] : out6; 
assign pass_in_7 = enable ? pass_transistors_code[7] : out7; 
assign pass_in_8 = enable ? pass_transistors_code[8] : out8; 
assign pass_in_9 = enable ? pass_transistors_code[9] : out9; 
assign pass_in_10 = enable ? pass_transistors_code[10] : out10; 
assign pass_in_11 = enable ? pass_transistors_code[11] :out11 ; 
assign pass_in_12 = enable ? pass_transistors_code[12] : out12;
assign pass_in_13 = enable ? pass_transistors_code[13] : out13;
assign pass_in_14 = enable ? pass_transistors_code[14] : out14;
assign pass_in_15 = enable ? pass_transistors_code[15] : out15;
assign pass_in_16 = enable ? pass_transistors_code[16]: out16;
assign pass_in_17 = enable ? pass_transistors_code[17] : out17;
assign pass_in_18 = enable ? pass_transistors_code[18] : out18;
assign pass_in_19 = enable ? pass_transistors_code[19] : out19;
assign pass_in_20 = enable ? pass_transistors_code[20] : out20;
assign pass_in_21 = enable ? pass_transistors_code[21] : out21;
assign pass_in_22 = enable ? pass_transistors_code[22] : out22;
assign pass_in_23 = enable ? pass_transistors_code[23] : out23;
assign pass_in_24 = enable ? pass_transistors_code[24] : out24;
assign pass_in_25 = enable ? pass_transistors_code[25] : out25;
assign pass_in_26 = enable ? pass_transistors_code[26] : out26;
assign pass_in_27 = enable ? pass_transistors_code[27] : out27;
assign pass_in_28 = enable ? pass_transistors_code[28]: out28;
assign pass_in_29= enable ? pass_transistors_code[29] : out29;
assign pass_in_30 = enable ? pass_transistors_code[30] : out30;
assign pass_in_31 = enable ? pass_transistors_code[31] : out31;


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
