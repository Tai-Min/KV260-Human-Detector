-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Feb  6 11:26:28 2022
-- Host        : PC running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_stepper_0_0_sim_netlist.vhdl
-- Design      : hardware_stepper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stepper is
  port (
    ena : out STD_LOGIC;
    busy : out STD_LOGIC;
    step : out STD_LOGIC;
    dir : out STD_LOGIC;
    cmd : in STD_LOGIC_VECTOR ( 10 downto 0 );
    latch : in STD_LOGIC;
    force_ena : in STD_LOGIC;
    stop2 : in STD_LOGIC;
    stop1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stepper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stepper is
  signal busy_latch_i_1_n_0 : STD_LOGIC;
  signal busy_latch_reg_n_0 : STD_LOGIC;
  signal \busy_posedge0__2\ : STD_LOGIC;
  signal busy_posedge_i_1_n_0 : STD_LOGIC;
  signal busy_posedge_i_4_n_0 : STD_LOGIC;
  signal busy_posedge_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal cmd_latch_flip : STD_LOGIC;
  signal cmd_latch_flip_i_1_n_0 : STD_LOGIC;
  signal cmd_posedge_flip : STD_LOGIC;
  signal curr_cmd : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dir\ : STD_LOGIC;
  signal dir_i_1_n_0 : STD_LOGIC;
  signal step_negedge : STD_LOGIC;
  signal step_posedge_i_1_n_0 : STD_LOGIC;
  signal step_posedge_i_2_n_0 : STD_LOGIC;
  signal step_posedge_reg_n_0 : STD_LOGIC;
  signal \steps_performed1__0\ : STD_LOGIC;
  signal \steps_performed[0]_i_1_n_0\ : STD_LOGIC;
  signal \steps_performed[1]_i_1_n_0\ : STD_LOGIC;
  signal \steps_performed[2]_i_1_n_0\ : STD_LOGIC;
  signal \steps_performed[3]_i_1_n_0\ : STD_LOGIC;
  signal \steps_performed[4]_i_1_n_0\ : STD_LOGIC;
  signal \steps_performed[5]_i_1_n_0\ : STD_LOGIC;
  signal \steps_performed[5]_i_2_n_0\ : STD_LOGIC;
  signal \steps_performed[6]_i_1_n_0\ : STD_LOGIC;
  signal \steps_performed[7]_i_1_n_0\ : STD_LOGIC;
  signal \steps_performed[7]_i_3_n_0\ : STD_LOGIC;
  signal \steps_performed[7]_i_5_n_0\ : STD_LOGIC;
  signal \steps_performed[7]_i_6_n_0\ : STD_LOGIC;
  signal \steps_performed[7]_i_7_n_0\ : STD_LOGIC;
  signal \steps_performed[7]_i_8_n_0\ : STD_LOGIC;
  signal \steps_performed[7]_i_9_n_0\ : STD_LOGIC;
  signal \steps_performed__1\ : STD_LOGIC;
  signal steps_performed_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal steps_to_perform : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of busy_posedge_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of cmd_latch_flip_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ena_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \steps_performed[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \steps_performed[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \steps_performed[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \steps_performed[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \steps_performed[7]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \steps_performed[7]_i_5\ : label is "soft_lutpair2";
begin
  dir <= \^dir\;
busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => busy_posedge_reg_n_0,
      I1 => busy_latch_reg_n_0,
      O => busy
    );
busy_latch_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9E16"
    )
        port map (
      I0 => cmd(10),
      I1 => cmd(9),
      I2 => busy_posedge_reg_n_0,
      I3 => busy_latch_reg_n_0,
      O => busy_latch_i_1_n_0
    );
busy_latch_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => '1',
      D => busy_latch_i_1_n_0,
      Q => busy_latch_reg_n_0,
      R => '0'
    );
busy_posedge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F53FFFFF0AC00000"
    )
        port map (
      I0 => \steps_performed1__0\,
      I1 => \busy_posedge0__2\,
      I2 => curr_cmd(0),
      I3 => curr_cmd(1),
      I4 => busy_posedge_i_4_n_0,
      I5 => busy_posedge_reg_n_0,
      O => busy_posedge_i_1_n_0
    );
busy_posedge_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \steps_performed[7]_i_9_n_0\,
      I1 => \steps_performed[7]_i_8_n_0\,
      I2 => \steps_performed[7]_i_7_n_0\,
      I3 => \steps_performed[7]_i_6_n_0\,
      I4 => \busy_posedge0__2\,
      O => \steps_performed1__0\
    );
busy_posedge_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => stop2,
      I1 => \^dir\,
      I2 => stop1,
      O => \busy_posedge0__2\
    );
busy_posedge_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => busy_latch_reg_n_0,
      I1 => busy_posedge_reg_n_0,
      I2 => cmd_latch_flip,
      I3 => cmd_posedge_flip,
      O => busy_posedge_i_4_n_0
    );
busy_posedge_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => busy_posedge_i_1_n_0,
      Q => busy_posedge_reg_n_0,
      R => '0'
    );
cmd_latch_flip_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cmd_latch_flip,
      O => cmd_latch_flip_i_1_n_0
    );
cmd_latch_flip_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => '1',
      D => cmd_latch_flip_i_1_n_0,
      Q => cmd_latch_flip,
      R => '0'
    );
cmd_posedge_flip_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cmd_latch_flip,
      Q => cmd_posedge_flip,
      R => '0'
    );
\curr_cmd_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => '1',
      D => cmd(9),
      Q => curr_cmd(0),
      R => '0'
    );
\curr_cmd_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => '1',
      D => cmd(10),
      Q => curr_cmd(1),
      R => '0'
    );
dir_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cmd(10),
      I1 => cmd(9),
      O => dir_i_1_n_0
    );
dir_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => dir_i_1_n_0,
      D => cmd(8),
      Q => \^dir\,
      R => '0'
    );
ena_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => force_ena,
      I1 => busy_latch_reg_n_0,
      I2 => busy_posedge_reg_n_0,
      O => ena
    );
step_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_negedge,
      I1 => step_posedge_reg_n_0,
      O => step
    );
step_negedge_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => step_posedge_reg_n_0,
      Q => step_negedge,
      R => '0'
    );
step_posedge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FACFFFFF05300000"
    )
        port map (
      I0 => \steps_performed1__0\,
      I1 => \busy_posedge0__2\,
      I2 => curr_cmd(0),
      I3 => curr_cmd(1),
      I4 => step_posedge_i_2_n_0,
      I5 => step_posedge_reg_n_0,
      O => step_posedge_i_1_n_0
    );
step_posedge_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => step_negedge,
      I1 => step_posedge_reg_n_0,
      I2 => busy_posedge_reg_n_0,
      I3 => busy_latch_reg_n_0,
      I4 => cmd_latch_flip,
      I5 => cmd_posedge_flip,
      O => step_posedge_i_2_n_0
    );
step_posedge_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => step_posedge_i_1_n_0,
      Q => step_posedge_reg_n_0,
      R => '0'
    );
\steps_performed[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4182"
    )
        port map (
      I0 => \steps_performed__1\,
      I1 => cmd_latch_flip,
      I2 => cmd_posedge_flip,
      I3 => steps_performed_reg(0),
      O => \steps_performed[0]_i_1_n_0\
    );
\steps_performed[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70078008"
    )
        port map (
      I0 => \steps_performed__1\,
      I1 => steps_performed_reg(0),
      I2 => cmd_latch_flip,
      I3 => cmd_posedge_flip,
      I4 => steps_performed_reg(1),
      O => \steps_performed[1]_i_1_n_0\
    );
\steps_performed[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00007F80000080"
    )
        port map (
      I0 => steps_performed_reg(0),
      I1 => \steps_performed__1\,
      I2 => steps_performed_reg(1),
      I3 => cmd_latch_flip,
      I4 => cmd_posedge_flip,
      I5 => steps_performed_reg(2),
      O => \steps_performed[2]_i_1_n_0\
    );
\steps_performed[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \steps_performed__1\,
      I1 => steps_performed_reg(0),
      I2 => steps_performed_reg(1),
      I3 => steps_performed_reg(2),
      I4 => clear,
      I5 => steps_performed_reg(3),
      O => \steps_performed[3]_i_1_n_0\
    );
\steps_performed[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00007F80000080"
    )
        port map (
      I0 => \steps_performed[5]_i_2_n_0\,
      I1 => \steps_performed__1\,
      I2 => steps_performed_reg(3),
      I3 => cmd_latch_flip,
      I4 => cmd_posedge_flip,
      I5 => steps_performed_reg(4),
      O => \steps_performed[4]_i_1_n_0\
    );
\steps_performed[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \steps_performed__1\,
      I1 => \steps_performed[5]_i_2_n_0\,
      I2 => steps_performed_reg(3),
      I3 => steps_performed_reg(4),
      I4 => clear,
      I5 => steps_performed_reg(5),
      O => \steps_performed[5]_i_1_n_0\
    );
\steps_performed[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => steps_performed_reg(2),
      I1 => steps_performed_reg(1),
      I2 => steps_performed_reg(0),
      O => \steps_performed[5]_i_2_n_0\
    );
\steps_performed[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00007F80000080"
    )
        port map (
      I0 => \steps_performed[7]_i_3_n_0\,
      I1 => \steps_performed__1\,
      I2 => steps_performed_reg(5),
      I3 => cmd_latch_flip,
      I4 => cmd_posedge_flip,
      I5 => steps_performed_reg(6),
      O => \steps_performed[6]_i_1_n_0\
    );
\steps_performed[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => steps_performed_reg(5),
      I1 => \steps_performed__1\,
      I2 => \steps_performed[7]_i_3_n_0\,
      I3 => steps_performed_reg(6),
      I4 => clear,
      I5 => steps_performed_reg(7),
      O => \steps_performed[7]_i_1_n_0\
    );
\steps_performed[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222222220"
    )
        port map (
      I0 => \steps_performed[7]_i_5_n_0\,
      I1 => \busy_posedge0__2\,
      I2 => \steps_performed[7]_i_6_n_0\,
      I3 => \steps_performed[7]_i_7_n_0\,
      I4 => \steps_performed[7]_i_8_n_0\,
      I5 => \steps_performed[7]_i_9_n_0\,
      O => \steps_performed__1\
    );
\steps_performed[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => steps_performed_reg(4),
      I1 => steps_performed_reg(3),
      I2 => steps_performed_reg(0),
      I3 => steps_performed_reg(1),
      I4 => steps_performed_reg(2),
      O => \steps_performed[7]_i_3_n_0\
    );
\steps_performed[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cmd_posedge_flip,
      I1 => cmd_latch_flip,
      O => clear
    );
\steps_performed[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => curr_cmd(0),
      I1 => curr_cmd(1),
      I2 => busy_latch_reg_n_0,
      I3 => busy_posedge_reg_n_0,
      O => \steps_performed[7]_i_5_n_0\
    );
\steps_performed[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => steps_performed_reg(7),
      I1 => steps_to_perform(7),
      I2 => steps_performed_reg(6),
      I3 => steps_to_perform(6),
      O => \steps_performed[7]_i_6_n_0\
    );
\steps_performed[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => steps_performed_reg(5),
      I1 => steps_to_perform(5),
      I2 => steps_performed_reg(2),
      I3 => steps_to_perform(2),
      O => \steps_performed[7]_i_7_n_0\
    );
\steps_performed[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => steps_performed_reg(1),
      I1 => steps_to_perform(1),
      I2 => steps_performed_reg(0),
      I3 => steps_to_perform(0),
      O => \steps_performed[7]_i_8_n_0\
    );
\steps_performed[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => steps_performed_reg(4),
      I1 => steps_to_perform(4),
      I2 => steps_performed_reg(3),
      I3 => steps_to_perform(3),
      O => \steps_performed[7]_i_9_n_0\
    );
\steps_performed_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \steps_performed[0]_i_1_n_0\,
      Q => steps_performed_reg(0),
      R => '0'
    );
\steps_performed_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \steps_performed[1]_i_1_n_0\,
      Q => steps_performed_reg(1),
      R => '0'
    );
\steps_performed_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \steps_performed[2]_i_1_n_0\,
      Q => steps_performed_reg(2),
      R => '0'
    );
\steps_performed_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \steps_performed[3]_i_1_n_0\,
      Q => steps_performed_reg(3),
      R => '0'
    );
\steps_performed_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \steps_performed[4]_i_1_n_0\,
      Q => steps_performed_reg(4),
      R => '0'
    );
\steps_performed_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \steps_performed[5]_i_1_n_0\,
      Q => steps_performed_reg(5),
      R => '0'
    );
\steps_performed_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \steps_performed[6]_i_1_n_0\,
      Q => steps_performed_reg(6),
      R => '0'
    );
\steps_performed_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \steps_performed[7]_i_1_n_0\,
      Q => steps_performed_reg(7),
      R => '0'
    );
\steps_to_perform_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => dir_i_1_n_0,
      D => cmd(0),
      Q => steps_to_perform(0),
      R => '0'
    );
\steps_to_perform_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => dir_i_1_n_0,
      D => cmd(1),
      Q => steps_to_perform(1),
      R => '0'
    );
\steps_to_perform_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => dir_i_1_n_0,
      D => cmd(2),
      Q => steps_to_perform(2),
      R => '0'
    );
\steps_to_perform_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => dir_i_1_n_0,
      D => cmd(3),
      Q => steps_to_perform(3),
      R => '0'
    );
\steps_to_perform_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => dir_i_1_n_0,
      D => cmd(4),
      Q => steps_to_perform(4),
      R => '0'
    );
\steps_to_perform_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => dir_i_1_n_0,
      D => cmd(5),
      Q => steps_to_perform(5),
      R => '0'
    );
\steps_to_perform_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => dir_i_1_n_0,
      D => cmd(6),
      Q => steps_to_perform(6),
      R => '0'
    );
\steps_to_perform_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => latch,
      CE => dir_i_1_n_0,
      D => cmd(7),
      Q => steps_to_perform(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    latch : in STD_LOGIC;
    cmd : in STD_LOGIC_VECTOR ( 10 downto 0 );
    force_ena : in STD_LOGIC;
    stop1 : in STD_LOGIC;
    stop2 : in STD_LOGIC;
    step : out STD_LOGIC;
    dir : out STD_LOGIC;
    ena : out STD_LOGIC;
    busy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hardware_stepper_0_0,stepper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "stepper,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stepper
     port map (
      busy => busy,
      clk => clk,
      cmd(10 downto 0) => cmd(10 downto 0),
      dir => dir,
      ena => ena,
      force_ena => force_ena,
      latch => latch,
      step => step,
      stop1 => stop1,
      stop2 => stop2
    );
end STRUCTURE;
