#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/proj/xbuilds/2021.1_0611_1/installs/lin64/Vitis/2021.1/bin:/proj/xbuilds/2021.1_0611_1/installs/lin64/Vivado/2021.1/ids_lite/ISE/bin/lin64:/proj/xbuilds/2021.1_0611_1/installs/lin64/Vivado/2021.1/bin
else
  PATH=/proj/xbuilds/2021.1_0611_1/installs/lin64/Vitis/2021.1/bin:/proj/xbuilds/2021.1_0611_1/installs/lin64/Vivado/2021.1/ids_lite/ISE/bin/lin64:/proj/xbuilds/2021.1_0611_1/installs/lin64/Vivado/2021.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/tmp/tmp.XUYe4REsrK/temp/hwflow/hwflow_project_1/project_1.runs/project_1_zynq_ultra_ps_e_0_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log project_1_zynq_ultra_ps_e_0_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source project_1_zynq_ultra_ps_e_0_0.tcl
