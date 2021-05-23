
################################################################
# This is a generated script based on design: assembly
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source assembly_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# clock_divider, data_controller, encoder, encoder, not_gate, not_gate, pwm, pwm, spi

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART tul.com.tw:pynq-z2:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name assembly

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set ar [ create_bd_port -dir O -from 7 -to 0 ar ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set pan_a [ create_bd_port -dir I pan_a ]
  set pan_b [ create_bd_port -dir I pan_b ]
  set pan_en [ create_bd_port -dir O pan_en ]
  set pan_in1 [ create_bd_port -dir O -from 0 -to 0 pan_in1 ]
  set pan_in2 [ create_bd_port -dir O -from 0 -to 0 pan_in2 ]
  set rst [ create_bd_port -dir I rst ]
  set sclk [ create_bd_port -dir I sclk ]
  set sdi [ create_bd_port -dir I sdi ]
  set sdo [ create_bd_port -dir O sdo ]
  set ss [ create_bd_port -dir I ss ]
  set tilt_a [ create_bd_port -dir I tilt_a ]
  set tilt_b [ create_bd_port -dir I tilt_b ]
  set tilt_en [ create_bd_port -dir O tilt_en ]
  set tilt_in1 [ create_bd_port -dir O -from 0 -to 0 tilt_in1 ]
  set tilt_in2 [ create_bd_port -dir O -from 0 -to 0 tilt_in2 ]

  # Create instance: clock_divider_0, and set properties
  set block_name clock_divider
  set block_cell_name clock_divider_0
  if { [catch {set clock_divider_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clock_divider_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.n_bits {6} \
 ] $clock_divider_0

  # Create instance: data_controller_0, and set properties
  set block_name data_controller
  set block_cell_name data_controller_0
  if { [catch {set data_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_controller_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: encoder_pan, and set properties
  set block_name encoder
  set block_cell_name encoder_pan
  if { [catch {set encoder_pan [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $encoder_pan eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.n_bits {9} \
 ] $encoder_pan

  # Create instance: encoder_tilt, and set properties
  set block_name encoder
  set block_cell_name encoder_tilt
  if { [catch {set encoder_tilt [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $encoder_tilt eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.n_bits {9} \
 ] $encoder_tilt

  # Create instance: not_gate_1, and set properties
  set block_name not_gate
  set block_cell_name not_gate_1
  if { [catch {set not_gate_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $not_gate_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: not_gate_2, and set properties
  set block_name not_gate
  set block_cell_name not_gate_2
  if { [catch {set not_gate_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $not_gate_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pwm_pan, and set properties
  set block_name pwm
  set block_cell_name pwm_pan
  if { [catch {set pwm_pan [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pwm_pan eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.n_bits {8} \
 ] $pwm_pan

  # Create instance: pwm_tilt, and set properties
  set block_name pwm
  set block_cell_name pwm_tilt
  if { [catch {set pwm_tilt [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pwm_tilt eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.n_bits {8} \
 ] $pwm_tilt

  # Create instance: spi_0, and set properties
  set block_name spi
  set block_cell_name spi_0
  if { [catch {set spi_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $spi_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.data_width {16} \
   CONFIG.sph {"1"} \
   CONFIG.spo {"0"} \
 ] $spi_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {4} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_0

  # Create instance: xlconcat_spi_test, and set properties
  set xlconcat_spi_test [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_spi_test ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_spi_test

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_3

  # Create instance: xlslice_4, and set properties
  set xlslice_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_4

  # Create instance: xlslice_5, and set properties
  set xlslice_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_5 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_5

  # Create instance: xlslice_6, and set properties
  set xlslice_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_6

  # Create port connections
  connect_bd_net -net Net [get_bd_pins clock_divider_0/clk_div] [get_bd_pins data_controller_0/clk] [get_bd_pins encoder_pan/clk] [get_bd_pins encoder_tilt/clk] [get_bd_pins spi_0/clk]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins clock_divider_0/clk] [get_bd_pins pwm_pan/clk] [get_bd_pins pwm_tilt/clk]
  connect_bd_net -net data_controller_0_spi_tx [get_bd_pins data_controller_0/spi_tx] [get_bd_pins spi_0/data_in]
  connect_bd_net -net encoder_pan_cnt [get_bd_pins data_controller_0/pan_in] [get_bd_pins encoder_pan/cnt]
  connect_bd_net -net encoder_pan_col_p [get_bd_pins encoder_pan/col_p] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net encoder_tilt_cnt [get_bd_pins data_controller_0/tilt_in] [get_bd_pins encoder_tilt/cnt]
  connect_bd_net -net encoder_tilt_col_p [get_bd_pins encoder_tilt/col_p] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net i_0_1 [get_bd_ports rst] [get_bd_pins clock_divider_0/rst] [get_bd_pins data_controller_0/rst] [get_bd_pins encoder_pan/rst] [get_bd_pins encoder_tilt/rst] [get_bd_pins pwm_pan/rst] [get_bd_pins pwm_tilt/rst] [get_bd_pins spi_0/rst]
  connect_bd_net -net not_gate_1_o [get_bd_ports pan_in2] [get_bd_pins not_gate_1/o]
  connect_bd_net -net not_gate_2_o [get_bd_ports tilt_in2] [get_bd_pins not_gate_2/o]
  connect_bd_net -net pan_a_1 [get_bd_ports pan_a] [get_bd_pins encoder_pan/a]
  connect_bd_net -net pan_b_1 [get_bd_ports pan_b] [get_bd_pins encoder_pan/b]
  connect_bd_net -net pwm_0_o [get_bd_ports pan_en] [get_bd_pins pwm_pan/o] [get_bd_pins xlconcat_spi_test/In5]
  connect_bd_net -net pwm_tilt_o [get_bd_ports tilt_en] [get_bd_pins pwm_tilt/o] [get_bd_pins xlconcat_spi_test/In6]
  connect_bd_net -net sclk_0_1 [get_bd_ports sclk] [get_bd_pins spi_0/sclk] [get_bd_pins xlconcat_spi_test/In0]
  connect_bd_net -net sdi_0_1 [get_bd_ports sdi] [get_bd_pins spi_0/sdi] [get_bd_pins xlconcat_spi_test/In2]
  connect_bd_net -net spi_0_data_out [get_bd_pins data_controller_0/spi_rx] [get_bd_pins spi_0/data_out]
  connect_bd_net -net spi_0_sdo [get_bd_ports sdo] [get_bd_pins spi_0/sdo] [get_bd_pins xlconcat_spi_test/In3]
  connect_bd_net -net ss_0_1 [get_bd_ports ss] [get_bd_pins spi_0/ss] [get_bd_pins xlconcat_spi_test/In1]
  connect_bd_net -net tilt_a_1 [get_bd_ports tilt_a] [get_bd_pins encoder_tilt/a]
  connect_bd_net -net tilt_b_1 [get_bd_ports tilt_b] [get_bd_pins encoder_tilt/b]
  connect_bd_net -net xlconcat_spi_test_dout [get_bd_ports ar] [get_bd_pins xlconcat_spi_test/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins data_controller_0/pan_out] [get_bd_pins xlslice_3/Din] [get_bd_pins xlslice_4/Din]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins data_controller_0/tilt_out] [get_bd_pins xlslice_5/Din] [get_bd_pins xlslice_6/Din]
  connect_bd_net -net xlslice_3_Dout [get_bd_ports pan_in1] [get_bd_pins not_gate_1/i] [get_bd_pins xlconcat_spi_test/In4] [get_bd_pins xlslice_3/Dout]
  connect_bd_net -net xlslice_4_Dout [get_bd_pins pwm_pan/duty_cycle] [get_bd_pins xlslice_4/Dout]
  connect_bd_net -net xlslice_5_Dout [get_bd_pins pwm_tilt/duty_cycle] [get_bd_pins xlslice_5/Dout]
  connect_bd_net -net xlslice_6_Dout [get_bd_ports tilt_in1] [get_bd_pins not_gate_2/i] [get_bd_pins xlconcat_spi_test/In7] [get_bd_pins xlslice_6/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


