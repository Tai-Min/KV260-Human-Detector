
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common22
Nodegraph reading from file.  2default:default2
00:00:00.392default:default2
00:00:00.762default:default2
4851.5082default:default2
0.0002default:default2
63612default:default2
108252default:defaultZ17-722h px? 
C
.Phase 1 Build RT Design | Checksum: 13cf2b122
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:20 ; elapsed = 00:00:06 . Memory (MB): peak = 4851.508 ; gain = 0.000 ; free physical = 6351 ; free virtual = 108322default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.1 Fix Topology Constraints | Checksum: e131fca7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:20 ; elapsed = 00:00:07 . Memory (MB): peak = 4851.508 ; gain = 0.000 ; free physical = 6291 ; free virtual = 107742default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.2 Pre Route Cleanup | Checksum: e131fca7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:20 ; elapsed = 00:00:07 . Memory (MB): peak = 4851.508 ; gain = 0.000 ; free physical = 6291 ; free virtual = 107742default:defaulth px? 
{

Phase %s%s
101*constraints2
2.3 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px? 
M
8Phase 2.3 Global Clock Net Routing | Checksum: c5776797
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:22 ; elapsed = 00:00:09 . Memory (MB): peak = 4925.375 ; gain = 73.867 ; free physical = 6251 ; free virtual = 107452default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 142026359
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:33 ; elapsed = 00:00:12 . Memory (MB): peak = 4925.375 ; gain = 73.867 ; free physical = 6225 ; free virtual = 107412default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=0.227  | TNS=0.000  | WHS=-0.323 | THS=-477.474|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 11cd1e587
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:53 ; elapsed = 00:00:18 . Memory (MB): peak = 4935.359 ; gain = 83.852 ; free physical = 6202 ; free virtual = 107372default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 11cd1e587
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:55 ; elapsed = 00:00:18 . Memory (MB): peak = 4935.359 ; gain = 83.852 ; free physical = 6198 ; free virtual = 107342default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 121cb5415
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:22 ; elapsed = 00:00:24 . Memory (MB): peak = 5256.359 ; gain = 404.852 ; free physical = 6102 ; free virtual = 106532default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
612default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
| dpux2_hardware_clk_wiz_0_2 | dpu_hardware_clk_wiz_0_2 |hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_5d4f008e/g_d75a2c81[1].u_a8e4d001/g_427f060c[2].u_3b3f8210/g_b4c563af[0].u_0fd5ac8c/g_12bdb8ee.g_d6c0e7f9.s_bba40f03_reg[9]/D|
| dpux2_hardware_clk_wiz_0_2 | dpu_hardware_clk_wiz_0_2 |hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_5d4f008e/g_d75a2c81[1].u_a8e4d001/g_427f060c[2].u_3b3f8210/g_b4c563af[0].u_0fd5ac8c/g_12bdb8ee.g_d6c0e7f9.s_bba40f03_reg[17]/D|
| dpux2_hardware_clk_wiz_0_2 | dpu_hardware_clk_wiz_0_2 |hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_5d4f008e/g_d75a2c81[1].u_a8e4d001/g_427f060c[2].u_3b3f8210/g_b4c563af[0].u_0fd5ac8c/g_12bdb8ee.g_d6c0e7f9.s_bba40f03_reg[10]/D|
| dpux2_hardware_clk_wiz_0_2 | dpu_hardware_clk_wiz_0_2 |hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_5d4f008e/g_d75a2c81[1].u_a8e4d001/g_427f060c[2].u_3b3f8210/g_b4c563af[0].u_0fd5ac8c/g_12bdb8ee.g_d6c0e7f9.s_bba40f03_reg[14]/D|
| dpux2_hardware_clk_wiz_0_2 | dpu_hardware_clk_wiz_0_2 |hardware_i/DPUCZDX8G_0/inst/g_8aa581ff.u_33f22aee/u_9dacd827/u_531b179c/u_55dabb40/u_5d4f008e/g_d75a2c81[1].u_a8e4d001/g_427f060c[2].u_3b3f8210/g_b4c563af[0].u_0fd5ac8c/g_12bdb8ee.g_d6c0e7f9.s_bba40f03_reg[11]/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.038  | TNS=0.000  | WHS=-0.060 | THS=-1.462 |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1a6c24dbe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:51 ; elapsed = 00:01:00 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6080 ; free virtual = 106812default:defaulth px? 
?

Phase %s%s
101*constraints2
4.2 2default:default21
Additional Iteration for Hold2default:defaultZ18-101h px? 
S
>Phase 4.2 Additional Iteration for Hold | Checksum: 1cefa26af
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:51 ; elapsed = 00:01:00 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6079 ; free virtual = 106802default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1cefa26af
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:52 ; elapsed = 00:01:00 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6078 ; free virtual = 106802default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 186c46e34
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:02 ; elapsed = 00:01:03 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6057 ; free virtual = 106822default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.038  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 186c46e34
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:02 ; elapsed = 00:01:03 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6057 ; free virtual = 106822default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 186c46e34
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:02 ; elapsed = 00:01:03 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6056 ; free virtual = 106832default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 186c46e34
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:03 ; elapsed = 00:01:03 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6056 ; free virtual = 106832default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1551601bf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:11 ; elapsed = 00:01:06 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6038 ; free virtual = 106812default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.038  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 18f95b420
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:12 ; elapsed = 00:01:06 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6037 ; free virtual = 106812default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 18f95b420
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:12 ; elapsed = 00:01:06 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6037 ; free virtual = 106812default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1b6aeecd0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:12 ; elapsed = 00:01:07 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6034 ; free virtual = 106782default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1b6aeecd0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:13 ; elapsed = 00:01:07 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6031 ; free virtual = 106772default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1b6aeecd0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:15 ; elapsed = 00:01:08 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6031 ; free virtual = 106812default:defaulth px? 
o

Phase %s%s
101*constraints2
10 2default:default2!
Resolve XTalk2default:defaultZ18-101h px? 
B
-Phase 10 Resolve XTalk | Checksum: 1b6aeecd0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:15 ; elapsed = 00:01:09 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6032 ; free virtual = 106832default:defaulth px? 
t

Phase %s%s
101*constraints2
11 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=0.038  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 11 Post Router Timing | Checksum: 1b6aeecd0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:21 ; elapsed = 00:01:10 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6032 ; free virtual = 106842default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:21 ; elapsed = 00:01:10 . Memory (MB): peak = 5288.375 ; gain = 436.867 ; free physical = 6150 ; free virtual = 108022default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1292default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:03:312default:default2
00:01:132default:default2
5288.3752default:default2
441.7702default:default2
61502default:default2
108022default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:062default:default2
00:00:022default:default2
5288.3752default:default2
0.0002default:default2
59732default:default2
107692default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
M/home/mateusz/KV260/hardware/hardware.runs/impl_1/hardware_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:162default:default2
00:00:102default:default2
5288.3752default:default2
0.0002default:default2
60792default:default2
107772default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_drc -file hardware_wrapper_drc_routed.rpt -pb hardware_wrapper_drc_routed.pb -rpx hardware_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
xreport_drc -file hardware_wrapper_drc_routed.rpt -pb hardware_wrapper_drc_routed.pb -rpx hardware_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
Q/home/mateusz/KV260/hardware/hardware.runs/impl_1/hardware_wrapper_drc_routed.rptQ/home/mateusz/KV260/hardware/hardware.runs/impl_1/hardware_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file hardware_wrapper_methodology_drc_routed.rpt -pb hardware_wrapper_methodology_drc_routed.pb -rpx hardware_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file hardware_wrapper_methodology_drc_routed.rpt -pb hardware_wrapper_methodology_drc_routed.pb -rpx hardware_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
]/home/mateusz/KV260/hardware/hardware.runs/impl_1/hardware_wrapper_methodology_drc_routed.rpt]/home/mateusz/KV260/hardware/hardware.runs/impl_1/hardware_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:302default:default2
00:00:072default:default2
5288.3752default:default2
0.0002default:default2
60192default:default2
107312default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_power -file hardware_wrapper_power_routed.rpt -pb hardware_wrapper_power_summary_routed.pb -rpx hardware_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file hardware_wrapper_power_routed.rpt -pb hardware_wrapper_power_summary_routed.pb -rpx hardware_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1412default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:262default:default2
00:00:102default:default2
5312.3872default:default2
24.0122default:default2
59022default:default2
106542default:defaultZ17-722h px? 
?
%s4*runtcl2?
mExecuting : report_route_status -file hardware_wrapper_route_status.rpt -pb hardware_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file hardware_wrapper_timing_summary_routed.rpt -pb hardware_wrapper_timing_summary_routed.pb -rpx hardware_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2Q
= Speed grade: -2LV, Temperature grade: C, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
%s4*runtcl2m
YExecuting : report_incremental_reuse -file hardware_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2m
YExecuting : report_clock_utilization -file hardware_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file hardware_wrapper_bus_skew_routed.rpt -pb hardware_wrapper_bus_skew_routed.pb -rpx hardware_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2Q
= Speed grade: -2LV, Temperature grade: C, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record