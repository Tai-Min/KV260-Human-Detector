# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FAN_0_DEG_TEMP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FAN_100_DEG_TEMP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FAN_PWM_OFF_VAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FAN_PWM_ON_VAL" -parent ${Page_0}


}

proc update_PARAM_VALUE.FAN_0_DEG_TEMP { PARAM_VALUE.FAN_0_DEG_TEMP } {
	# Procedure called to update FAN_0_DEG_TEMP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAN_0_DEG_TEMP { PARAM_VALUE.FAN_0_DEG_TEMP } {
	# Procedure called to validate FAN_0_DEG_TEMP
	return true
}

proc update_PARAM_VALUE.FAN_100_DEG_TEMP { PARAM_VALUE.FAN_100_DEG_TEMP } {
	# Procedure called to update FAN_100_DEG_TEMP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAN_100_DEG_TEMP { PARAM_VALUE.FAN_100_DEG_TEMP } {
	# Procedure called to validate FAN_100_DEG_TEMP
	return true
}

proc update_PARAM_VALUE.FAN_PWM_OFF_VAL { PARAM_VALUE.FAN_PWM_OFF_VAL } {
	# Procedure called to update FAN_PWM_OFF_VAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAN_PWM_OFF_VAL { PARAM_VALUE.FAN_PWM_OFF_VAL } {
	# Procedure called to validate FAN_PWM_OFF_VAL
	return true
}

proc update_PARAM_VALUE.FAN_PWM_ON_VAL { PARAM_VALUE.FAN_PWM_ON_VAL } {
	# Procedure called to update FAN_PWM_ON_VAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FAN_PWM_ON_VAL { PARAM_VALUE.FAN_PWM_ON_VAL } {
	# Procedure called to validate FAN_PWM_ON_VAL
	return true
}


proc update_MODELPARAM_VALUE.FAN_0_DEG_TEMP { MODELPARAM_VALUE.FAN_0_DEG_TEMP PARAM_VALUE.FAN_0_DEG_TEMP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAN_0_DEG_TEMP}] ${MODELPARAM_VALUE.FAN_0_DEG_TEMP}
}

proc update_MODELPARAM_VALUE.FAN_100_DEG_TEMP { MODELPARAM_VALUE.FAN_100_DEG_TEMP PARAM_VALUE.FAN_100_DEG_TEMP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAN_100_DEG_TEMP}] ${MODELPARAM_VALUE.FAN_100_DEG_TEMP}
}

proc update_MODELPARAM_VALUE.FAN_PWM_OFF_VAL { MODELPARAM_VALUE.FAN_PWM_OFF_VAL PARAM_VALUE.FAN_PWM_OFF_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAN_PWM_OFF_VAL}] ${MODELPARAM_VALUE.FAN_PWM_OFF_VAL}
}

proc update_MODELPARAM_VALUE.FAN_PWM_ON_VAL { MODELPARAM_VALUE.FAN_PWM_ON_VAL PARAM_VALUE.FAN_PWM_ON_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FAN_PWM_ON_VAL}] ${MODELPARAM_VALUE.FAN_PWM_ON_VAL}
}

