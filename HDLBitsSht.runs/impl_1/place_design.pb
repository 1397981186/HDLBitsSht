
?
eCannot write hardware definition file as there are no IPI block design hardware handoff files present188*	vivadotclZ4-424h px? 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7k70t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7k70t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
859.6482default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
859.6482default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
t

Phase %s%s
101*constraints2
1.1.1 2default:default2#
Pre-Place Cells2default:defaultZ18-101h px? 
F
1Phase 1.1.1 Pre-Place Cells | Checksum: 00000000
*commonh px? 
?

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.056 . Memory (MB): peak = 859.648 ; gain = 0.0002default:defaulth px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
x

Phase %s%s
101*constraints2
1.1.2 2default:default2'
IO and Clk Clean Up2default:defaultZ18-101h px? 
J
5Phase 1.1.2 IO and Clk Clean Up | Checksum: 00000000
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
?

Phase %s%s
101*constraints2
1.1.3 2default:default2>
*Implementation Feasibility check On IDelay2default:defaultZ18-101h px? 
a
LPhase 1.1.3 Implementation Feasibility check On IDelay | Checksum: 00000000
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
x

Phase %s%s
101*constraints2
1.1.4 2default:default2'
Commit IO Placement2default:defaultZ18-101h px? 
J
5Phase 1.1.4 Commit IO Placement | Checksum: dafc1953
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
g
RPhase 1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: f7472b5b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
}

Phase %s%s
101*constraints2
1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
v

Phase %s%s
101*constraints2
1.2.1 2default:default2%
Place Init Design2default:defaultZ18-101h px? 
I
4Phase 1.2.1 Place Init Design | Checksum: 1a450355e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
P
;Phase 1.2 Build Placer Netlist Model | Checksum: 1a450355e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
z

Phase %s%s
101*constraints2
1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.3.1 2default:default24
 Constrain Global/Regional Clocks2default:defaultZ18-101h px? 
X
CPhase 1.3.1 Constrain Global/Regional Clocks | Checksum: 1a450355e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
M
8Phase 1.3 Constrain Clocks/Macros | Checksum: 1a450355e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 1a450355e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
2
%s*constraints2
 2default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1094d2cc3
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1094d2cc3
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 12a4d41ff
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1870e98ed
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 


Phase %s%s
101*constraints2
3.4 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
3.4.1 2default:default26
"Commit Small Macros and Core Logic2default:defaultZ18-101h px? 
|

Phase %s%s
101*constraints2
3.4.1.1 2default:default2)
Commit Slice Clusters2default:defaultZ18-101h px? 
O
:Phase 3.4.1.1 Commit Slice Clusters | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
Z
EPhase 3.4.1 Commit Small Macros and Core Logic | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4.2 2default:default2C
/Clock Restriction Legalization for Leaf Columns2default:defaultZ18-101h px? 
g
RPhase 3.4.2 Clock Restriction Legalization for Leaf Columns | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4.3 2default:default2E
1Clock Restriction Legalization for Non-Clock Pins2default:defaultZ18-101h px? 
i
TPhase 3.4.3 Clock Restriction Legalization for Non-Clock Pins | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
R
=Phase 3.4 Small Shape Detail Placement | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
u

Phase %s%s
101*constraints2
3.5 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.5 Re-assign LUT pins | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
?

Phase %s%s
101*constraints2
4.2 2default:default25
!Sweep Clock Roots: Post-Placement2default:defaultZ18-101h px? 
W
BPhase 4.2 Sweep Clock Roots: Post-Placement | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
y

Phase %s%s
101*constraints2
4.3 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.3 Post Placement Cleanup | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
s

Phase %s%s
101*constraints2
4.4 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.4 Placer Reporting | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
z

Phase %s%s
101*constraints2
4.5 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
M
8Phase 4.5 Final Placement Cleanup | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1afbd9403
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
>
)Ending Placer Task | Checksum: 11b27366d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 876.043 ; gain = 16.3952default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
332default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
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
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0862default:default2
876.0432default:default2
0.0002default:defaultZ17-268h px? 

jreport_io: Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.114 . Memory (MB): peak = 876.043 ; gain = 0.000
*commonh px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.034 . Memory (MB): peak = 876.043 ; gain = 0.000
*commonh px? 
?
treport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.002 . Memory (MB): peak = 876.043 ; gain = 0.000
*commonh px? 


End Record