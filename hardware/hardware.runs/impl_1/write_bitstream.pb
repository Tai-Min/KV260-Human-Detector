
p
Command: %s
53*	vivadotcl2?
+write_bitstream -force hardware_wrapper.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xck262default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xck262default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2n
 "X
 hardware_i/temp2pwm/inst/pwm_on5	 hardware_i/temp2pwm/inst/pwm_on52default:default2default:default2x
 "b
(hardware_i/temp2pwm/inst/pwm_on5/A[29:0]"hardware_i/temp2pwm/inst/pwm_on5/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPIP-2h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2?
 "?
xhardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_91cbfecb/u_9e35e9b1/u_d7bba7e1/u_dsp/g_a8050f01.u_dsp48e2	xhardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_91cbfecb/u_9e35e9b1/u_d7bba7e1/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_91cbfecb/u_9e35e9b1/u_d7bba7e1/u_dsp/g_a8050f01.u_dsp48e2/P[47:0]zhardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_91cbfecb/u_9e35e9b1/u_d7bba7e1/u_dsp/g_a8050f01.u_dsp48e2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2n
 "X
 hardware_i/temp2pwm/inst/pwm_on5	 hardware_i/temp2pwm/inst/pwm_on52default:default2default:default2x
 "b
(hardware_i/temp2pwm/inst/pwm_on5/P[47:0]"hardware_i/temp2pwm/inst/pwm_on5/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-3h px? 
?	
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2?
 "?
ahardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_22c4ec7e/u_032df868/s_c92f4191_reg	ahardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_22c4ec7e/u_032df868/s_c92f4191_reg2default:default2default:default2?
 "?
ihardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_22c4ec7e/u_032df868/s_c92f4191_reg/P[47:0]chardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_22c4ec7e/u_032df868/s_c92f4191_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2n
 "X
 hardware_i/temp2pwm/inst/pwm_on5	 hardware_i/temp2pwm/inst/pwm_on52default:default2default:default2x
 "b
(hardware_i/temp2pwm/inst/pwm_on5/P[47:0]"hardware_i/temp2pwm/inst/pwm_on5/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E22default:default8ZDPOP-4h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_396da9c8/u_692652ac/u_db51cb91/u_c48af76d/g_66a0cbda[0].g_c6a789d9[0].g_214b29cc.u_dd49098f/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_396da9c8/u_692652ac/u_db51cb91/u_c48af76d/g_66a0cbda[0].g_c6a789d9[0].g_214b29cc.u_dd49098f/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_396da9c8/u_692652ac/u_db51cb91/u_c48af76d/g_66a0cbda[1].g_c6a789d9[0].g_214b29cc.u_dd49098f/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_396da9c8/u_692652ac/u_db51cb91/u_c48af76d/g_66a0cbda[1].g_c6a789d9[0].g_214b29cc.u_dd49098f/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_396da9c8/u_692652ac/u_db51cb91/u_c48af76d/g_66a0cbda[2].g_c6a789d9[0].g_214b29cc.u_dd49098f/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_396da9c8/u_692652ac/u_db51cb91/u_c48af76d/g_66a0cbda[2].g_c6a789d9[0].g_214b29cc.u_dd49098f/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_396da9c8/u_692652ac/u_db51cb91/u_c48af76d/g_66a0cbda[3].g_c6a789d9[0].g_214b29cc.u_dd49098f/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_396da9c8/u_692652ac/u_db51cb91/u_c48af76d/g_66a0cbda[3].g_c6a789d9[0].g_214b29cc.u_dd49098f/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[0].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[1].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[2].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[0].g_c9814353[3].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[0].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[1].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[2].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[0].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[0].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[1].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[1].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[2].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[2].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[3].u_7852564e/g_3439dbec[0].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
?DSP_Abus_preadd_amult_sel_A_sign_bit_restriction: %s: When using the PreAdder and AMULTSEL is set to 'AD' and PREADDINSEL is set to 'A', the A operand should be restricted to 26 bit two's complement (and sign extended) to avoid over/underflow in the pre-add stage.%s*DRC2?
 "?
?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e2	?hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_b2e34f77/g_15699fe8[1].g_c9814353[3].g_fe7d1843[3].u_7852564e/g_3439dbec[1].g_ac92fc4b.u_e612bb21/u_dsp/g_a8050f01.u_dsp48e22default:default2default:default2A
 )DRC|Netlist|Instance|Required Pin|DSP48E22default:default8Z	REQP-1731h px? 
?
aNo routable loads: 150 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2?
 "?
Phardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_master_reg2[7:0]Khardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_master_reg22default:default"?
Ohardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_master_reg[7:0]Jhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_master_reg2default:default"?
Phardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_slave0_reg2[7:0]Khardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_slave0_reg22default:default"?
Ohardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_slave0_reg[7:0]Jhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_slave0_reg2default:default"?
Phardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_slave1_reg2[7:0]Khardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_slave1_reg22default:default"?
Ohardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_slave1_reg[7:0]Jhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/daddr_C_slave1_reg2default:default"?
Nhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_master_reg2[15:0]Hhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_master_reg22default:default"?
Mhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_master_reg[15:0]Ghardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_master_reg2default:default"?
Nhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_slave0_reg2[15:0]Hhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_slave0_reg22default:default"?
Mhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_slave0_reg[15:0]Ghardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_slave0_reg2default:default"?
Nhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_slave1_reg2[15:0]Hhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_slave1_reg22default:default"?
Mhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_slave1_reg[15:0]Ghardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/di_C_slave1_reg2default:default"?
Hhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/dwe_C_master_regHhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/dwe_C_master_reg2default:default"?
Ihardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/dwe_C_master_reg2Ihardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/dwe_C_master_reg22default:default"?
Hhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/dwe_C_slave0_regHhardware_i/system_management_wiz/inst/AXI_SYSMON_CORE_I/dwe_C_slave0_reg2default:..."/
(the first 15 of 18 listed)2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 74 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
82default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
g
Writing bitstream %s...
11*	bitstream2*
./hardware_wrapper.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.*projecth px? 
?
?'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2b
N/home/mateusz/KV260/hardware/hardware.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Tue Mar 22 19:54:21 20222default:default2M
9/tools/Xilinx/Vivado/2021.1/doc/webtalk_introduction.html2default:defaultZ17-186h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
132default:default2
742default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:00:212default:default2
00:00:192default:default2
5312.3872default:default2
0.0002default:default2
57722default:default2
105672default:defaultZ17-722h px? 


End Record