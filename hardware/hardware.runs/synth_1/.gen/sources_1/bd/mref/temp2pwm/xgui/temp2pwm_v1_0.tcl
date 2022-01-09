# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FAN_0_TEMP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FAN_100_TEMP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "a" -parent ${Page_0}
  ipgui::add_param $IPINST -name "b" -parent ${Page_0}


}

proc update_PARAM_VALUE.FAN_0_TEMP { PARAM_VALUE.FAN_0_TEMP } {
	# Procedure called to update FAN_0_TEMP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAN_0_TEMP { PARAM_VALUE.FAN_0_TEMP } {
	# Procedure called to validate FAN_0_TEMP
	return true
}

proc update_PARAM_VALUE.FAN_100_TEMP { PARAM_VALUE.FAN_100_TEMP } {
	# Procedure called to update FAN_100_TEMP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAN_100_TEMP { PARAM_VALUE.FAN_100_TEMP } {
	# Procedure called to validate FAN_100_TEMP
	return true
}

proc update_PARAM_VALUE.a { PARAM_VALUE.a } {
	# Procedure called to update a when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.a { PARAM_VALUE.a } {
	# Procedure called to validate a
	return true
}

proc update_PARAM_VALUE.b { PARAM_VALUE.b } {
	# Procedure called to update b when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.b { PARAM_VALUE.b } {
	# Procedure called to validate b
	return true
}


proc update_MODELPARAM_VALUE.FAN_0_TEMP { MODELPARAM_VALUE.FAN_0_TEMP PARAM_VALUE.FAN_0_TEMP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAN_0_TEMP}] ${MODELPARAM_VALUE.FAN_0_TEMP}
}

proc update_MODELPARAM_VALUE.FAN_100_TEMP { MODELPARAM_VALUE.FAN_100_TEMP PARAM_VALUE.FAN_100_TEMP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAN_100_TEMP}] ${MODELPARAM_VALUE.FAN_100_TEMP}
}

proc update_MODELPARAM_VALUE.a { MODELPARAM_VALUE.a PARAM_VALUE.a } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.a}] ${MODELPARAM_VALUE.a}
}

proc update_MODELPARAM_VALUE.b { MODELPARAM_VALUE.b PARAM_VALUE.b } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.b}] ${MODELPARAM_VALUE.b}
}

