*include "/home/ff/eecs251b/sky130/sky130_cds/sky130_release_0.0.1/models/sky130.lib.spice" section=tt

simulator lang=spice

*.include '21000netlist.sp'

.SUBCKT inverter vdd vss din dout

  M0 dout din vss vss nfet_01v8 l=0.150u nf=1 w=1.000u
  M1 dout din vdd vdd pfet_01v8 l=0.150u nf=1 w=1.600u

.ENDS inverter

