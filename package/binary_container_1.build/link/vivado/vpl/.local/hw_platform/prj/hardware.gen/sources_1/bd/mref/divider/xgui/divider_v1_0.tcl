# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IN_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUT_FREQ" -parent ${Page_0}


}

proc update_PARAM_VALUE.IN_FREQ { PARAM_VALUE.IN_FREQ } {
	# Procedure called to update IN_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IN_FREQ { PARAM_VALUE.IN_FREQ } {
	# Procedure called to validate IN_FREQ
	return true
}

proc update_PARAM_VALUE.OUT_FREQ { PARAM_VALUE.OUT_FREQ } {
	# Procedure called to update OUT_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUT_FREQ { PARAM_VALUE.OUT_FREQ } {
	# Procedure called to validate OUT_FREQ
	return true
}


proc update_MODELPARAM_VALUE.IN_FREQ { MODELPARAM_VALUE.IN_FREQ PARAM_VALUE.IN_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IN_FREQ}] ${MODELPARAM_VALUE.IN_FREQ}
}

proc update_MODELPARAM_VALUE.OUT_FREQ { MODELPARAM_VALUE.OUT_FREQ PARAM_VALUE.OUT_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUT_FREQ}] ${MODELPARAM_VALUE.OUT_FREQ}
}

