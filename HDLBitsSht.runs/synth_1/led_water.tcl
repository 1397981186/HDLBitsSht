# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param simulator.modelsimInstallPath D:/modeltech64_10.7/win64
set_param synth.incrementalSynthesisCache C:/Users/Mihtop/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-21664-Alemin/incrSyn
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/FPGACode/HDLBitsSht/HDLBitsSht.cache/wt [current_project]
set_property parent.project_path E:/FPGACode/HDLBitsSht/HDLBitsSht.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
read_verilog -library xil_defaultlib {
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/m2014_q4d.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Popcount3.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Wire_decl.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Vectorr.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Vectorgates.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Vector3.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Vector2.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Vector1.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Vector0.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Gates4.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Alwaysblock2.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/7458Chip.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Gatesv.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Gatesv100.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Mux9to1v.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Mux256to1.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Hadd.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Adder3.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/ece241_2014_q1c.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Dff.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Dff8r.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Dff8ar.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/Dff16e.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/2014_q4a2.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/new/ece241_2013_q7.v
  E:/FPGACode/HDLBitsSht/HDLBitsSht.srcs/sources_1/imports/Desktop/led_water.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top led_water -part xc7k70tfbv676-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef led_water.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file led_water_utilization_synth.rpt -pb led_water_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]