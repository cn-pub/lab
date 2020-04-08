
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab7_skel -dir "/home/criss/CN1/Cristina/lab7_skel/planAhead_run_1" -part xa7a100tcsg324-2I
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "adder_subtractor.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {display_7_segment_driver.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {debouncer.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {cla_subtractor.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {cla_adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {adder_subtractor.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top adder_subtractor $srcset
add_files [list {adder_subtractor.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xa7a100tcsg324-2I
