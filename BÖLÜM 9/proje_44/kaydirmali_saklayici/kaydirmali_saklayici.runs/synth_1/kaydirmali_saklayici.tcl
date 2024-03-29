# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7k70tfbg676-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Hakan/Documents/VHDL_Proje/kaydirmali_saklayici/kaydirmali_saklayici.cache/wt [current_project]
set_property parent.project_path C:/Users/Hakan/Documents/VHDL_Proje/kaydirmali_saklayici/kaydirmali_saklayici.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib C:/Users/Hakan/Documents/VHDL_Proje/kaydirmali_saklayici/kaydirmali_saklayici.srcs/sources_1/new/kaydirmali_saklayici.vhd
catch { write_hwdef -file kaydirmali_saklayici.hwdef }
synth_design -top kaydirmali_saklayici -part xc7k70tfbg676-1
write_checkpoint -noxdef kaydirmali_saklayici.dcp
catch { report_utilization -file kaydirmali_saklayici_utilization_synth.rpt -pb kaydirmali_saklayici_utilization_synth.pb }
