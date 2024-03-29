# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "data_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sph" -parent ${Page_0}
  ipgui::add_param $IPINST -name "spo" -parent ${Page_0}


}

proc update_PARAM_VALUE.data_width { PARAM_VALUE.data_width } {
	# Procedure called to update data_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.data_width { PARAM_VALUE.data_width } {
	# Procedure called to validate data_width
	return true
}

proc update_PARAM_VALUE.sph { PARAM_VALUE.sph } {
	# Procedure called to update sph when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sph { PARAM_VALUE.sph } {
	# Procedure called to validate sph
	return true
}

proc update_PARAM_VALUE.spo { PARAM_VALUE.spo } {
	# Procedure called to update spo when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.spo { PARAM_VALUE.spo } {
	# Procedure called to validate spo
	return true
}


proc update_MODELPARAM_VALUE.data_width { MODELPARAM_VALUE.data_width PARAM_VALUE.data_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.data_width}] ${MODELPARAM_VALUE.data_width}
}

proc update_MODELPARAM_VALUE.spo { MODELPARAM_VALUE.spo PARAM_VALUE.spo } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.spo}] ${MODELPARAM_VALUE.spo}
}

proc update_MODELPARAM_VALUE.sph { MODELPARAM_VALUE.sph PARAM_VALUE.sph } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sph}] ${MODELPARAM_VALUE.sph}
}

