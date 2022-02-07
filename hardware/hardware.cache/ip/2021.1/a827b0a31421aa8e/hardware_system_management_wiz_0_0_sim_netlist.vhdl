-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Sun Feb  6 11:12:21 2022
-- Host        : PC running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_system_management_wiz_0_0_sim_netlist.vhdl
-- Design      : hardware_system_management_wiz_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_drp_arbiter is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    den_reg_reg_0 : out STD_LOGIC;
    drdy_i : out STD_LOGIC;
    den_C : out STD_LOGIC;
    dwe_C : out STD_LOGIC;
    overlap_A_reg_0 : out STD_LOGIC;
    overlap_B_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    drdy_wr_ack_i_d1_reg : out STD_LOGIC;
    drdy_rd_ack_i_d1_reg : out STD_LOGIC;
    den_d1_reg : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg[1]_2\ : out STD_LOGIC;
    \do_A_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \daddr_C_reg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \di_C_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \do_B_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    den_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    drdy_wr_ack_i_d1 : in STD_LOGIC;
    drdy_wr_ack_i_d2 : in STD_LOGIC;
    dwe_C_reg_reg_0 : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \daddr_reg_reg[7]_0\ : in STD_LOGIC;
    drdy_rd_ack_i_d1 : in STD_LOGIC;
    drdy_rd_ack_i_d2 : in STD_LOGIC;
    hard_macro_rst_reg : in STD_LOGIC;
    bus2ip_reset_active_high : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_3\ : in STD_LOGIC;
    bbusy_A : in STD_LOGIC;
    den_reg_reg_1 : in STD_LOGIC;
    den_A : in STD_LOGIC;
    den_d1 : in STD_LOGIC;
    drdy_C : in STD_LOGIC;
    den_C_reg_reg_0 : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_4\ : in STD_LOGIC;
    dwe_C_reg_reg_1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \daddr_reg_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \daddr_C_reg_reg[7]_1\ : in STD_LOGIC;
    DO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    overlap_B_reg_1 : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_drp_arbiter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_drp_arbiter is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^fsm_sequential_state_reg[1]_1\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_2\ : STD_LOGIC;
  signal daddr_C_reg0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \daddr_C_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \daddr_C_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \daddr_C_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \daddr_C_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \daddr_C_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal daddr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \daddr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \daddr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \daddr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \daddr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \daddr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \daddr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \daddr_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \daddr_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal den_C_reg : STD_LOGIC;
  signal den_C_reg_i_3_n_0 : STD_LOGIC;
  signal den_C_reg_i_4_n_0 : STD_LOGIC;
  signal \^den_d1_reg\ : STD_LOGIC;
  signal \^den_reg_reg_0\ : STD_LOGIC;
  signal di_C_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal di_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \di_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \di_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal do_A_reg0_in : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal \do_A_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal do_B_reg0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \do_B_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal drdy_A_reg : STD_LOGIC;
  signal drdy_A_reg_i_1_n_0 : STD_LOGIC;
  signal drdy_B : STD_LOGIC;
  signal drdy_B_reg : STD_LOGIC;
  signal \^drdy_i\ : STD_LOGIC;
  signal dwe_C_reg : STD_LOGIC;
  signal dwe_reg : STD_LOGIC;
  signal dwe_reg_i_1_n_0 : STD_LOGIC;
  signal dwe_reg_i_3_n_0 : STD_LOGIC;
  signal dwe_reg_reg_n_0 : STD_LOGIC;
  signal overlap_A : STD_LOGIC;
  signal overlap_A_i_1_n_0 : STD_LOGIC;
  signal overlap_A_i_3_n_0 : STD_LOGIC;
  signal overlap_A_i_4_n_0 : STD_LOGIC;
  signal \^overlap_a_reg_0\ : STD_LOGIC;
  signal overlap_B_i_1_n_0 : STD_LOGIC;
  signal overlap_B_i_3_n_0 : STD_LOGIC;
  signal overlap_B_i_4_n_0 : STD_LOGIC;
  signal overlap_B_i_5_n_0 : STD_LOGIC;
  signal overlap_B_i_6_n_0 : STD_LOGIC;
  signal \^overlap_b_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_7\ : label is "soft_lutpair44";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "grant_b:10,nogrant:00,grant_a:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "grant_b:10,nogrant:00,grant_a:01";
  attribute SOFT_HLUTNM of \daddr_reg[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \daddr_reg[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \daddr_reg[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \daddr_reg[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \daddr_reg[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of den_reg_i_2 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \do_A_reg[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \do_A_reg[11]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \do_A_reg[12]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \do_A_reg[13]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \do_A_reg[14]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \do_A_reg[15]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \do_A_reg[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \do_A_reg[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \do_A_reg[8]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \do_A_reg[9]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \do_B_reg[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \do_B_reg[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \do_B_reg[11]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \do_B_reg[12]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \do_B_reg[13]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \do_B_reg[14]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \do_B_reg[15]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \do_B_reg[1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \do_B_reg[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \do_B_reg[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \do_B_reg[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \do_B_reg[5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \do_B_reg[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \do_B_reg[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \do_B_reg[8]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \do_B_reg[9]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of drdy_A_reg_i_2 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of drdy_B_reg_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of dwe_reg_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of dwe_reg_i_5 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of overlap_A_i_2 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of overlap_A_i_3 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of overlap_B_i_3 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of overlap_B_i_4 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of overlap_B_i_6 : label is "soft_lutpair43";
begin
  AR(0) <= \^ar\(0);
  \FSM_sequential_state_reg[1]_0\(1 downto 0) <= \^fsm_sequential_state_reg[1]_0\(1 downto 0);
  \FSM_sequential_state_reg[1]_1\ <= \^fsm_sequential_state_reg[1]_1\;
  \FSM_sequential_state_reg[1]_2\ <= \^fsm_sequential_state_reg[1]_2\;
  den_d1_reg <= \^den_d1_reg\;
  den_reg_reg_0 <= \^den_reg_reg_0\;
  drdy_i <= \^drdy_i\;
  overlap_A_reg_0 <= \^overlap_a_reg_0\;
  overlap_B_reg_0 <= \^overlap_b_reg_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30FF30FF30FF1010"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_0\,
      I1 => \^overlap_b_reg_0\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => den_A,
      I5 => \^overlap_a_reg_0\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(0),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFA20F0AAFF20F0"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => \FSM_sequential_state_reg[1]_4\,
      I2 => \FSM_sequential_state_reg[0]_0\,
      I3 => \^fsm_sequential_state_reg[1]_1\,
      I4 => \^overlap_b_reg_0\,
      I5 => bbusy_A,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(1),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(0),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(1),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => \^fsm_sequential_state_reg[1]_1\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_state_reg[1]_5\(0),
      CLR => \^ar\(0),
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \^fsm_sequential_state_reg[1]_0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_state_reg[1]_5\(0),
      CLR => \^ar\(0),
      D => \FSM_sequential_state[1]_i_2_n_0\,
      Q => \^fsm_sequential_state_reg[1]_0\(1)
    );
\daddr_C_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \daddr_reg_reg_n_0_[0]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => \daddr_reg_reg[7]_1\(0),
      O => daddr_C_reg0_in(0)
    );
\daddr_C_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \daddr_reg_reg_n_0_[1]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => \daddr_reg_reg[7]_1\(1),
      O => daddr_C_reg0_in(1)
    );
\daddr_C_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \daddr_reg_reg_n_0_[2]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => \daddr_reg_reg[7]_1\(2),
      O => daddr_C_reg0_in(2)
    );
\daddr_C_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \daddr_reg_reg_n_0_[3]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => \daddr_reg_reg[7]_1\(3),
      O => daddr_C_reg0_in(3)
    );
\daddr_C_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \daddr_reg_reg_n_0_[4]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => \daddr_reg_reg[7]_1\(4),
      O => daddr_C_reg0_in(4)
    );
\daddr_C_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \daddr_reg_reg_n_0_[5]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => \daddr_reg_reg[7]_1\(5),
      O => daddr_C_reg0_in(5)
    );
\daddr_C_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \daddr_reg_reg_n_0_[6]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => \daddr_reg_reg[7]_1\(6),
      O => daddr_C_reg0_in(6)
    );
\daddr_C_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEEE"
    )
        port map (
      I0 => dwe_C_reg_reg_1,
      I1 => \daddr_C_reg[7]_i_4_n_0\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => den_A,
      I4 => \^overlap_a_reg_0\,
      I5 => \^overlap_b_reg_0\,
      O => \daddr_C_reg[7]_i_1_n_0\
    );
\daddr_C_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \daddr_reg_reg_n_0_[7]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => \daddr_reg_reg[7]_1\(7),
      O => daddr_C_reg0_in(7)
    );
\daddr_C_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222322"
    )
        port map (
      I0 => \^overlap_b_reg_0\,
      I1 => \^fsm_sequential_state_reg[1]_1\,
      I2 => \daddr_reg_reg[7]_0\,
      I3 => dwe_C_reg_reg_0,
      I4 => den_d1,
      I5 => bbusy_A,
      O => \daddr_C_reg[7]_i_4_n_0\
    );
\daddr_C_reg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCD4FCF4DCDCFFFF"
    )
        port map (
      I0 => drdy_C,
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => bbusy_A,
      I4 => \^overlap_a_reg_0\,
      I5 => \^overlap_b_reg_0\,
      O => \daddr_C_reg[7]_i_5_n_0\
    );
\daddr_C_reg[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FDFF0DFFFDFF0D"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_0\,
      I1 => \daddr_C_reg[7]_i_7_n_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => drdy_C,
      I5 => \daddr_C_reg_reg[7]_1\,
      O => \daddr_C_reg[7]_i_6_n_0\
    );
\daddr_C_reg[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^overlap_b_reg_0\,
      I1 => \^overlap_a_reg_0\,
      I2 => den_A,
      O => \daddr_C_reg[7]_i_7_n_0\
    );
\daddr_C_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => daddr_C_reg0_in(0),
      Q => \daddr_C_reg_reg[7]_0\(0)
    );
\daddr_C_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => daddr_C_reg0_in(1),
      Q => \daddr_C_reg_reg[7]_0\(1)
    );
\daddr_C_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => daddr_C_reg0_in(2),
      Q => \daddr_C_reg_reg[7]_0\(2)
    );
\daddr_C_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => daddr_C_reg0_in(3),
      Q => \daddr_C_reg_reg[7]_0\(3)
    );
\daddr_C_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => daddr_C_reg0_in(4),
      Q => \daddr_C_reg_reg[7]_0\(4)
    );
\daddr_C_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => daddr_C_reg0_in(5),
      Q => \daddr_C_reg_reg[7]_0\(5)
    );
\daddr_C_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => daddr_C_reg0_in(6),
      Q => \daddr_C_reg_reg[7]_0\(6)
    );
\daddr_C_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => daddr_C_reg0_in(7),
      Q => \daddr_C_reg_reg[7]_0\(7)
    );
\daddr_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => \daddr_reg_reg[7]_1\(0),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => daddr_reg(0)
    );
\daddr_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => \daddr_reg_reg[7]_1\(1),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => daddr_reg(1)
    );
\daddr_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => \daddr_reg_reg[7]_1\(2),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => daddr_reg(2)
    );
\daddr_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => \daddr_reg_reg[7]_1\(3),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => daddr_reg(3)
    );
\daddr_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => \daddr_reg_reg[7]_1\(4),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => daddr_reg(4)
    );
\daddr_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => \daddr_reg_reg[7]_1\(5),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => daddr_reg(5)
    );
\daddr_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => \daddr_reg_reg[7]_1\(6),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => daddr_reg(6)
    );
\daddr_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => \daddr_reg_reg[7]_1\(7),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => daddr_reg(7)
    );
\daddr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => daddr_reg(0),
      Q => \daddr_reg_reg_n_0_[0]\
    );
\daddr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => daddr_reg(1),
      Q => \daddr_reg_reg_n_0_[1]\
    );
\daddr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => daddr_reg(2),
      Q => \daddr_reg_reg_n_0_[2]\
    );
\daddr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => daddr_reg(3),
      Q => \daddr_reg_reg_n_0_[3]\
    );
\daddr_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => daddr_reg(4),
      Q => \daddr_reg_reg_n_0_[4]\
    );
\daddr_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => daddr_reg(5),
      Q => \daddr_reg_reg_n_0_[5]\
    );
\daddr_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => daddr_reg(6),
      Q => \daddr_reg_reg_n_0_[6]\
    );
\daddr_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => daddr_reg(7),
      Q => \daddr_reg_reg_n_0_[7]\
    );
den_C_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF01"
    )
        port map (
      I0 => drdy_C,
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => \^den_d1_reg\,
      I3 => den_C_reg_reg_0,
      I4 => den_C_reg_i_3_n_0,
      I5 => den_C_reg_i_4_n_0,
      O => den_C_reg
    );
den_C_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000F000E0E0"
    )
        port map (
      I0 => den_A,
      I1 => \FSM_sequential_state_reg[0]_0\,
      I2 => \^fsm_sequential_state_reg[1]_2\,
      I3 => \^den_reg_reg_0\,
      I4 => \^overlap_a_reg_0\,
      I5 => \^overlap_b_reg_0\,
      O => den_C_reg_i_3_n_0
    );
den_C_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000004000"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(0),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      I2 => drdy_C,
      I3 => den_A,
      I4 => \^overlap_a_reg_0\,
      I5 => \^den_reg_reg_0\,
      O => den_C_reg_i_4_n_0
    );
den_C_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => den_C_reg,
      Q => den_C
    );
den_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => den_d1,
      I1 => dwe_C_reg_reg_0,
      I2 => \daddr_reg_reg[7]_0\,
      O => \^den_d1_reg\
    );
den_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => den_reg,
      Q => \^den_reg_reg_0\
    );
\di_C_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[0]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(0),
      O => di_C_reg(0)
    );
\di_C_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[10]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(10),
      O => di_C_reg(10)
    );
\di_C_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[11]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(11),
      O => di_C_reg(11)
    );
\di_C_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[12]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(12),
      O => di_C_reg(12)
    );
\di_C_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[13]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(13),
      O => di_C_reg(13)
    );
\di_C_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[14]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(14),
      O => di_C_reg(14)
    );
\di_C_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[15]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(15),
      O => di_C_reg(15)
    );
\di_C_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[1]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(1),
      O => di_C_reg(1)
    );
\di_C_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[2]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(2),
      O => di_C_reg(2)
    );
\di_C_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[3]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(3),
      O => di_C_reg(3)
    );
\di_C_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[4]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(4),
      O => di_C_reg(4)
    );
\di_C_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[5]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(5),
      O => di_C_reg(5)
    );
\di_C_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[6]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(6),
      O => di_C_reg(6)
    );
\di_C_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[7]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(7),
      O => di_C_reg(7)
    );
\di_C_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[8]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(8),
      O => di_C_reg(8)
    );
\di_C_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_5_n_0\,
      I1 => \di_reg_reg_n_0_[9]\,
      I2 => \daddr_C_reg[7]_i_6_n_0\,
      I3 => s_axi_wdata(9),
      O => di_C_reg(9)
    );
\di_C_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(0),
      Q => \di_C_reg_reg[15]_0\(0)
    );
\di_C_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(10),
      Q => \di_C_reg_reg[15]_0\(10)
    );
\di_C_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(11),
      Q => \di_C_reg_reg[15]_0\(11)
    );
\di_C_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(12),
      Q => \di_C_reg_reg[15]_0\(12)
    );
\di_C_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(13),
      Q => \di_C_reg_reg[15]_0\(13)
    );
\di_C_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(14),
      Q => \di_C_reg_reg[15]_0\(14)
    );
\di_C_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(15),
      Q => \di_C_reg_reg[15]_0\(15)
    );
\di_C_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(1),
      Q => \di_C_reg_reg[15]_0\(1)
    );
\di_C_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(2),
      Q => \di_C_reg_reg[15]_0\(2)
    );
\di_C_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(3),
      Q => \di_C_reg_reg[15]_0\(3)
    );
\di_C_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(4),
      Q => \di_C_reg_reg[15]_0\(4)
    );
\di_C_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(5),
      Q => \di_C_reg_reg[15]_0\(5)
    );
\di_C_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(6),
      Q => \di_C_reg_reg[15]_0\(6)
    );
\di_C_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(7),
      Q => \di_C_reg_reg[15]_0\(7)
    );
\di_C_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(8),
      Q => \di_C_reg_reg[15]_0\(8)
    );
\di_C_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => di_C_reg(9),
      Q => \di_C_reg_reg[15]_0\(9)
    );
\di_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(0)
    );
\di_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(10)
    );
\di_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(11)
    );
\di_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(12)
    );
\di_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(13)
    );
\di_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(14)
    );
\di_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(15)
    );
\di_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(1)
    );
\di_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(2)
    );
\di_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(3)
    );
\di_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(4)
    );
\di_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(5)
    );
\di_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(6)
    );
\di_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(7)
    );
\di_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(8)
    );
\di_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020A0A"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \daddr_reg_reg[7]_0\,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => den_A,
      O => di_reg(9)
    );
\di_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(0),
      Q => \di_reg_reg_n_0_[0]\
    );
\di_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(10),
      Q => \di_reg_reg_n_0_[10]\
    );
\di_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(11),
      Q => \di_reg_reg_n_0_[11]\
    );
\di_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(12),
      Q => \di_reg_reg_n_0_[12]\
    );
\di_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(13),
      Q => \di_reg_reg_n_0_[13]\
    );
\di_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(14),
      Q => \di_reg_reg_n_0_[14]\
    );
\di_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(15),
      Q => \di_reg_reg_n_0_[15]\
    );
\di_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(1),
      Q => \di_reg_reg_n_0_[1]\
    );
\di_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(2),
      Q => \di_reg_reg_n_0_[2]\
    );
\di_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(3),
      Q => \di_reg_reg_n_0_[3]\
    );
\di_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(4),
      Q => \di_reg_reg_n_0_[4]\
    );
\di_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(5),
      Q => \di_reg_reg_n_0_[5]\
    );
\di_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(6),
      Q => \di_reg_reg_n_0_[6]\
    );
\di_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(7),
      Q => \di_reg_reg_n_0_[7]\
    );
\di_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(8),
      Q => \di_reg_reg_n_0_[8]\
    );
\di_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => di_reg(9),
      Q => \di_reg_reg_n_0_[9]\
    );
\do_A_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(10),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(10)
    );
\do_A_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(11),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(11)
    );
\do_A_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(12),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(12)
    );
\do_A_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(13),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(13)
    );
\do_A_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(14),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(14)
    );
\do_A_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(0),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      I2 => drdy_C,
      O => \do_A_reg[15]_i_1_n_0\
    );
\do_A_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(15),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(15)
    );
\do_A_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(6),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(6)
    );
\do_A_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(7),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(7)
    );
\do_A_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(8),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(8)
    );
\do_A_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(9),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => do_A_reg0_in(9)
    );
\do_A_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(10),
      Q => \do_A_reg_reg[15]_0\(4)
    );
\do_A_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(11),
      Q => \do_A_reg_reg[15]_0\(5)
    );
\do_A_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(12),
      Q => \do_A_reg_reg[15]_0\(6)
    );
\do_A_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(13),
      Q => \do_A_reg_reg[15]_0\(7)
    );
\do_A_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(14),
      Q => \do_A_reg_reg[15]_0\(8)
    );
\do_A_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(15),
      Q => \do_A_reg_reg[15]_0\(9)
    );
\do_A_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(6),
      Q => \do_A_reg_reg[15]_0\(0)
    );
\do_A_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(7),
      Q => \do_A_reg_reg[15]_0\(1)
    );
\do_A_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(8),
      Q => \do_A_reg_reg[15]_0\(2)
    );
\do_A_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_A_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_A_reg0_in(9),
      Q => \do_A_reg_reg[15]_0\(3)
    );
\do_B_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(0),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(0)
    );
\do_B_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(10),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(10)
    );
\do_B_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(11),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(11)
    );
\do_B_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(12),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(12)
    );
\do_B_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(13),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(13)
    );
\do_B_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(14),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(14)
    );
\do_B_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(1),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      I2 => drdy_C,
      O => \do_B_reg[15]_i_1_n_0\
    );
\do_B_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(15),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(15)
    );
\do_B_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(1),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(1)
    );
\do_B_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(2),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(2)
    );
\do_B_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(3),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(3)
    );
\do_B_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(4),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(4)
    );
\do_B_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(5),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(5)
    );
\do_B_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(6),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(6)
    );
\do_B_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(7),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(7)
    );
\do_B_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(8),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(8)
    );
\do_B_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DO(9),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => do_B_reg0_in(9)
    );
\do_B_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(0),
      Q => \do_B_reg_reg[15]_0\(0)
    );
\do_B_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(10),
      Q => \do_B_reg_reg[15]_0\(10)
    );
\do_B_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(11),
      Q => \do_B_reg_reg[15]_0\(11)
    );
\do_B_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(12),
      Q => \do_B_reg_reg[15]_0\(12)
    );
\do_B_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(13),
      Q => \do_B_reg_reg[15]_0\(13)
    );
\do_B_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(14),
      Q => \do_B_reg_reg[15]_0\(14)
    );
\do_B_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(15),
      Q => \do_B_reg_reg[15]_0\(15)
    );
\do_B_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(1),
      Q => \do_B_reg_reg[15]_0\(1)
    );
\do_B_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(2),
      Q => \do_B_reg_reg[15]_0\(2)
    );
\do_B_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(3),
      Q => \do_B_reg_reg[15]_0\(3)
    );
\do_B_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(4),
      Q => \do_B_reg_reg[15]_0\(4)
    );
\do_B_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(5),
      Q => \do_B_reg_reg[15]_0\(5)
    );
\do_B_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(6),
      Q => \do_B_reg_reg[15]_0\(6)
    );
\do_B_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(7),
      Q => \do_B_reg_reg[15]_0\(7)
    );
\do_B_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(8),
      Q => \do_B_reg_reg[15]_0\(8)
    );
\do_B_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \do_B_reg[15]_i_1_n_0\,
      CLR => \^ar\(0),
      D => do_B_reg0_in(9),
      Q => \do_B_reg_reg[15]_0\(9)
    );
drdy_A_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(1),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => drdy_A_reg_i_1_n_0
    );
drdy_A_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => drdy_C,
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      O => drdy_A_reg
    );
drdy_A_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => drdy_A_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => drdy_A_reg,
      Q => \^drdy_i\
    );
drdy_B_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => drdy_C,
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      I2 => \^fsm_sequential_state_reg[1]_0\(0),
      O => drdy_B_reg
    );
drdy_B_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => drdy_A_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => drdy_B_reg,
      Q => drdy_B
    );
drdy_rd_ack_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222F0000000"
    )
        port map (
      I0 => drdy_rd_ack_i_d1,
      I1 => drdy_rd_ack_i_d2,
      I2 => Bus_RNW_reg,
      I3 => dwe_C_reg_reg_0,
      I4 => drdy_B,
      I5 => \daddr_reg_reg[7]_0\,
      O => drdy_rd_ack_i_d1_reg
    );
drdy_wr_ack_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222200F00000"
    )
        port map (
      I0 => drdy_wr_ack_i_d1,
      I1 => drdy_wr_ack_i_d2,
      I2 => dwe_C_reg_reg_0,
      I3 => Bus_RNW_reg,
      I4 => drdy_B,
      I5 => \daddr_reg_reg[7]_0\,
      O => drdy_wr_ack_i_d1_reg
    );
dwe_C_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040004"
    )
        port map (
      I0 => \daddr_C_reg[7]_i_6_n_0\,
      I1 => dwe_C_reg_reg_0,
      I2 => \daddr_reg_reg[7]_0\,
      I3 => Bus_RNW_reg,
      I4 => \daddr_C_reg[7]_i_5_n_0\,
      I5 => dwe_reg_reg_n_0,
      O => dwe_C_reg
    );
dwe_C_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \daddr_C_reg[7]_i_1_n_0\,
      CLR => \^ar\(0),
      D => dwe_C_reg,
      Q => dwe_C
    );
dwe_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAFAEAEAEAEA"
    )
        port map (
      I0 => dwe_reg_i_3_n_0,
      I1 => bbusy_A,
      I2 => den_reg_reg_1,
      I3 => \^overlap_a_reg_0\,
      I4 => \^overlap_b_reg_0\,
      I5 => den_A,
      O => dwe_reg_i_1_n_0
    );
dwe_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(1),
      I1 => Bus_RNW_reg,
      I2 => dwe_C_reg_reg_0,
      I3 => \daddr_reg_reg[7]_0\,
      O => dwe_reg
    );
dwe_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808380808"
    )
        port map (
      I0 => den_A,
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      I2 => \^fsm_sequential_state_reg[1]_0\(0),
      I3 => den_d1,
      I4 => dwe_C_reg_reg_0,
      I5 => \daddr_reg_reg[7]_0\,
      O => dwe_reg_i_3_n_0
    );
dwe_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(1),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => \^fsm_sequential_state_reg[1]_2\
    );
dwe_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => dwe_reg_i_1_n_0,
      CLR => \^ar\(0),
      D => dwe_reg,
      Q => dwe_reg_reg_n_0
    );
inst_sysmon_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => hard_macro_rst_reg,
      I1 => bus2ip_reset_active_high,
      I2 => \FSM_sequential_state_reg[1]_3\,
      O => \^ar\(0)
    );
overlap_A_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEF00"
    )
        port map (
      I0 => overlap_A,
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => drdy_C,
      I3 => \^overlap_a_reg_0\,
      I4 => overlap_A_i_3_n_0,
      I5 => overlap_A_i_4_n_0,
      O => overlap_A_i_1_n_0
    );
overlap_A_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(0),
      I1 => den_A,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \daddr_reg_reg[7]_0\,
      O => overlap_A
    );
overlap_A_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"32002200"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(1),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      I2 => \daddr_reg_reg[7]_0\,
      I3 => den_A,
      I4 => bbusy_A,
      O => overlap_A_i_3_n_0
    );
overlap_A_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4C4C40400"
    )
        port map (
      I0 => \^overlap_b_reg_0\,
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => bbusy_A,
      I3 => den_A,
      I4 => \^overlap_a_reg_0\,
      I5 => \FSM_sequential_state_reg[0]_0\,
      O => overlap_A_i_4_n_0
    );
overlap_A_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => overlap_A_i_1_n_0,
      Q => \^overlap_a_reg_0\
    );
overlap_B_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF0FF44FF04"
    )
        port map (
      I0 => overlap_B_reg_1,
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => overlap_B_i_3_n_0,
      I3 => overlap_B_i_4_n_0,
      I4 => overlap_B_i_5_n_0,
      I5 => \^overlap_b_reg_0\,
      O => overlap_B_i_1_n_0
    );
overlap_B_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => \^overlap_b_reg_0\,
      I1 => bbusy_A,
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => drdy_C,
      O => overlap_B_i_3_n_0
    );
overlap_B_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \daddr_reg_reg[7]_0\,
      I1 => dwe_C_reg_reg_0,
      I2 => den_d1,
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => \^fsm_sequential_state_reg[1]_0\(1),
      O => overlap_B_i_4_n_0
    );
overlap_B_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA02AA00AA8AAA8A"
    )
        port map (
      I0 => overlap_B_i_6_n_0,
      I1 => bbusy_A,
      I2 => \^overlap_a_reg_0\,
      I3 => \^overlap_b_reg_0\,
      I4 => den_A,
      I5 => \^den_d1_reg\,
      O => overlap_B_i_5_n_0
    );
overlap_B_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(1),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      I2 => \daddr_reg_reg[7]_0\,
      O => overlap_B_i_6_n_0
    );
overlap_B_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => overlap_B_i_1_n_0,
      Q => \^overlap_b_reg_0\
    );
\temp_out[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^drdy_i\,
      I1 => Q(0),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 18 downto 0 );
    convst_rst_wrce_or_reduce : out STD_LOGIC;
    local_reg_wrack0 : out STD_LOGIC;
    local_rdce_or_reduce : out STD_LOGIC;
    local_reg_rdack0 : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    status_reg_rdack0 : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_4_in : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    Intr2Bus_RdAck0 : out STD_LOGIC;
    irpt_wrack_d1_reg : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    dummy_bus2ip_rdce_intr : out STD_LOGIC;
    dummy_intr_reg_rdack0 : out STD_LOGIC;
    dummy_bus2ip_wrce_intr : out STD_LOGIC;
    dummy_intr_reg_wrack0 : out STD_LOGIC;
    dummy_local_reg_rdack_d10 : out STD_LOGIC;
    dummy_local_reg_rdack0 : out STD_LOGIC;
    dummy_local_reg_wrack_d10 : out STD_LOGIC;
    dummy_local_reg_wrack0 : out STD_LOGIC;
    rst_ip2bus_rdack0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\ : in STD_LOGIC;
    p_1_in46_in : in STD_LOGIC;
    p_1_in43_in : in STD_LOGIC;
    p_1_in40_in : in STD_LOGIC;
    p_1_in37_in : in STD_LOGIC;
    p_1_in34_in : in STD_LOGIC;
    p_1_in31_in : in STD_LOGIC;
    p_1_in28_in : in STD_LOGIC;
    p_1_in25_in : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    p_1_in19_in : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_1_in7_in : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    jtaglocked_i : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    local_reg_wrack_d1 : in STD_LOGIC;
    local_reg_rdack_d1 : in STD_LOGIC;
    status_reg_rdack_d1 : in STD_LOGIC;
    reset_trig_reg : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    ipif_glbl_irpt_enable_reg_reg : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    dummy_intr_reg_rdack_d1 : in STD_LOGIC;
    dummy_intr_reg_wrack_d1 : in STD_LOGIC;
    dummy_local_reg_rdack_d1 : in STD_LOGIC;
    dummy_local_reg_wrack_d1 : in STD_LOGIC;
    rst_ip2bus_rdack_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    hard_macro_rst_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0\ : STD_LOGIC;
  signal Intr2Bus_RdAck_i_2_n_0 : STD_LOGIC;
  signal Intr2Bus_WrAck_i_2_n_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_13 : STD_LOGIC;
  signal ce_expnd_i_14 : STD_LOGIC;
  signal ce_expnd_i_15 : STD_LOGIC;
  signal ce_expnd_i_16 : STD_LOGIC;
  signal ce_expnd_i_17 : STD_LOGIC;
  signal ce_expnd_i_18 : STD_LOGIC;
  signal ce_expnd_i_19 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_20 : STD_LOGIC;
  signal ce_expnd_i_21 : STD_LOGIC;
  signal ce_expnd_i_22 : STD_LOGIC;
  signal ce_expnd_i_23 : STD_LOGIC;
  signal ce_expnd_i_24 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in_1 : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_d1_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_wrack_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of Intr2Bus_RdAck_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of Intr2Bus_WrAck_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of drdy_rd_ack_i_d1_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of drdy_wr_ack_i_d1_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of dummy_local_reg_rdack_d1_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of dummy_local_reg_rdack_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of dummy_local_reg_wrack_d1_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of dummy_local_reg_wrack_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of local_reg_rdack_d1_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of local_reg_rdack_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of local_reg_wrack_d1_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of reset_trig_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of rst_ip2bus_rdack_d1_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of rst_ip2bus_rdack_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of status_reg_rdack_d1_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of status_reg_rdack_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sw_rst_cond_d1_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \temp_rd_wait_cycle_reg[15]_i_2\ : label is "soft_lutpair12";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0\ <= \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ipif_glbl_irpt_enable_reg_reg,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      O => ce_expnd_i_24
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_24,
      Q => p_24_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      O => ce_expnd_i_14
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_14,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      O => ce_expnd_i_13
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_13,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_12
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_12,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_11
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_11,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_10
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_10,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_9,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      O => ce_expnd_i_8
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_8,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      O => ce_expnd_i_7
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_7,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_6
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_6,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      O => ce_expnd_i_5
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_5,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\,
      O => ce_expnd_i_23
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_23,
      Q => p_23_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_4
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_4,
      Q => p_4_in_1,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      O => ce_expnd_i_1
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(4),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(5),
      I2 => Q,
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(8),
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(6),
      I5 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(7),
      O => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => p_1_in_0,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => ip2bus_rdack,
      I2 => ip2bus_wrack,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0),
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(8),
      Q => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      O => ce_expnd_i_22
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_22,
      Q => p_22_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      O => ce_expnd_i_21
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I2 => Q,
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(5),
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(4),
      I5 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      O => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_21,
      Q => p_21_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      O => ce_expnd_i_20
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_20,
      Q => p_20_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\,
      O => ce_expnd_i_19
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(4),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(5),
      I2 => Q,
      I3 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_19,
      Q => p_19_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      O => ce_expnd_i_18
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_18,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\,
      O => ce_expnd_i_17
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I3 => Q,
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(5),
      I5 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(4),
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(7),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(6),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(8),
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_17,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      O => ce_expnd_i_16
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_16,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(2),
      O => ce_expnd_i_15
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_15,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBBBF"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_8_in,
      I2 => s_axi_wstrb(0),
      I3 => ipif_glbl_irpt_enable_reg_reg,
      I4 => \^bus_rnw_reg_reg_0\,
      O => irpt_wrack_d1_reg
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0\,
      O => dummy_bus2ip_rdce_intr
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => dummy_intr_reg_rdack_d1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0\,
      O => dummy_intr_reg_rdack0
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0\,
      O => dummy_bus2ip_wrce_intr
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0\,
      I1 => p_11_in,
      I2 => p_15_in,
      I3 => p_10_in,
      I4 => \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4_n_0\,
      O => \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_3_in,
      I1 => p_12_in,
      I2 => p_4_in_1,
      I3 => p_14_in,
      O => \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_3_n_0\
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_1_in_0,
      I1 => p_16_in,
      I2 => p_7_in,
      I3 => p_13_in,
      I4 => p_5_in,
      I5 => p_2_in,
      O => \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_4_n_0\
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => dummy_intr_reg_wrack_d1,
      I2 => \INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_i_2_n_0\,
      O => dummy_intr_reg_wrack0
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => p_8_in,
      I1 => p_9_in,
      I2 => ipif_glbl_irpt_enable_reg,
      I3 => Intr2Bus_RdAck_i_2_n_0,
      I4 => p_6_in,
      O => D(18)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFFF222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(17),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0\,
      I2 => p_1_in,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0\(0),
      O => D(17)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFFFFF"
    )
        port map (
      I0 => p_8_in,
      I1 => p_6_in,
      I2 => s_axi_wstrb(0),
      I3 => ipif_glbl_irpt_enable_reg_reg,
      I4 => \^bus_rnw_reg_reg_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => p_8_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => ipif_glbl_irpt_enable_reg_reg,
      I3 => s_axi_wstrb(0),
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => p_23_in,
      I1 => p_22_in,
      I2 => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF22F222F222F2"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(16),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0\,
      I2 => jtaglocked_i,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      I5 => p_1_in1_in,
      O => D(16)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF22F222F222F2"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(15),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(15),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      I5 => p_1_in4_in,
      O => D(15)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(14),
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0\,
      I3 => p_1_in7_in,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => D(14)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0320000000200000"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(14),
      I1 => p_23_in,
      I2 => p_22_in,
      I3 => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(14),
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[17]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(13),
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0\,
      I3 => p_1_in10_in,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => D(13)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0320000000200000"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(13),
      I1 => p_23_in,
      I2 => p_22_in,
      I3 => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(13),
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[18]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(12),
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_2_n_0\,
      I3 => p_1_in13_in,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => D(12)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0320000000200000"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(12),
      I1 => p_23_in,
      I2 => p_22_in,
      I3 => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(12),
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[19]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(11),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(11),
      O => D(11)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(11),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(11),
      I4 => p_1_in16_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400000"
    )
        port map (
      I0 => p_8_in,
      I1 => p_6_in,
      I2 => s_axi_wstrb(0),
      I3 => ipif_glbl_irpt_enable_reg_reg,
      I4 => \^bus_rnw_reg_reg_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_23_in,
      I1 => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      I2 => p_22_in,
      I3 => \^bus_rnw_reg_reg_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_22_in,
      I1 => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      I2 => p_23_in,
      I3 => \^bus_rnw_reg_reg_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(10),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(10),
      O => D(10)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(10),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(10),
      I4 => p_1_in19_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[21]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(9),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(9),
      O => D(9)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(9),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(9),
      I4 => p_1_in22_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[22]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(8),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(8),
      O => D(8)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(8),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(8),
      I4 => p_1_in25_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[23]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(7),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(7),
      O => D(7)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(7),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(7),
      I4 => p_1_in28_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[24]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(6),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(6),
      O => D(6)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(6),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(6),
      I4 => p_1_in31_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[25]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(5),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(5),
      O => D(5)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(5),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(5),
      I4 => p_1_in34_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[26]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(4),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(4),
      O => D(4)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(4),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(4),
      I4 => p_1_in37_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[27]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(3),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(3),
      O => D(3)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(3),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(3),
      I4 => p_1_in40_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[28]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(2),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(2),
      O => D(2)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(2),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(2),
      I4 => p_1_in43_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[29]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(1),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(1),
      O => D(1)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(1),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(1),
      I4 => p_1_in46_in,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[30]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(0),
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_4_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(0),
      O => D(0)
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(0),
      I1 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_4_n_0\,
      I2 => \INTR_CTRLR_GEN_I.ip2bus_data_int[20]_i_5_n_0\,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(0),
      I4 => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\,
      I5 => \INTR_CTRLR_GEN_I.ip2bus_data_int[14]_i_3_n_0\,
      O => \INTR_CTRLR_GEN_I.ip2bus_data_int[31]_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_wrack_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_24_in,
      I2 => reset_trig_reg,
      O => Bus_RNW_reg_reg_1
    );
Intr2Bus_RdAck_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => irpt_rdack_d1,
      I1 => Intr2Bus_RdAck_i_2_n_0,
      I2 => p_9_in,
      I3 => p_6_in,
      I4 => p_8_in,
      O => Intr2Bus_RdAck0
    );
Intr2Bus_RdAck_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => ipif_glbl_irpt_enable_reg_reg,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Intr2Bus_RdAck_i_2_n_0
    );
Intr2Bus_WrAck_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => Intr2Bus_WrAck_i_2_n_0,
      I2 => p_8_in,
      I3 => p_9_in,
      I4 => p_6_in,
      O => interrupt_wrce_strb
    );
Intr2Bus_WrAck_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => ipif_glbl_irpt_enable_reg_reg,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Intr2Bus_WrAck_i_2_n_0
    );
den_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      I1 => jtaglocked_i,
      O => p_4_in
    );
drdy_rd_ack_i_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      O => bus2ip_rdce(0)
    );
drdy_wr_ack_i_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[24].ce_out_i_reg[24]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce(0)
    );
dummy_local_reg_rdack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_19_in,
      I2 => p_17_in,
      I3 => p_18_in,
      O => dummy_local_reg_rdack_d10
    );
dummy_local_reg_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => dummy_local_reg_rdack_d1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_19_in,
      I3 => p_17_in,
      I4 => p_18_in,
      O => dummy_local_reg_rdack0
    );
dummy_local_reg_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => p_19_in,
      I1 => p_17_in,
      I2 => p_18_in,
      I3 => \^bus_rnw_reg_reg_0\,
      O => dummy_local_reg_wrack_d10
    );
dummy_local_reg_wrack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111110"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => dummy_local_reg_wrack_d1,
      I2 => p_19_in,
      I3 => p_17_in,
      I4 => p_18_in,
      O => dummy_local_reg_wrack0
    );
hard_macro_rst_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_20_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_21_in,
      I4 => hard_macro_rst_reg,
      O => s_axi_wdata_0_sn_1
    );
\ip_irpt_enable_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => p_6_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => ipif_glbl_irpt_enable_reg_reg,
      I3 => s_axi_wstrb(0),
      O => E(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFF08080800"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => p_9_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => ipif_glbl_irpt_enable_reg_reg,
      I4 => s_axi_wstrb(0),
      I5 => ipif_glbl_irpt_enable_reg,
      O => \s_axi_wdata[31]\
    );
irpt_rdack_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A800"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ipif_glbl_irpt_enable_reg_reg,
      I2 => s_axi_wstrb(0),
      I3 => p_9_in,
      I4 => p_6_in,
      I5 => p_8_in,
      O => irpt_rdack
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545454545400"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ipif_glbl_irpt_enable_reg_reg,
      I2 => s_axi_wstrb(0),
      I3 => p_8_in,
      I4 => p_9_in,
      I5 => p_6_in,
      O => irpt_wrack
    );
local_reg_rdack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_22_in,
      I2 => p_20_in,
      I3 => p_21_in,
      O => local_rdce_or_reduce
    );
local_reg_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => local_reg_rdack_d1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_22_in,
      I3 => p_20_in,
      I4 => p_21_in,
      O => local_reg_rdack0
    );
local_reg_wrack_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => p_22_in,
      I1 => p_23_in,
      I2 => p_20_in,
      I3 => p_21_in,
      I4 => \^bus_rnw_reg_reg_0\,
      O => convst_rst_wrce_or_reduce
    );
local_reg_wrack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => local_reg_wrack_d1,
      I2 => p_22_in,
      I3 => p_23_in,
      I4 => p_20_in,
      I5 => p_21_in,
      O => local_reg_wrack0
    );
reset_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => reset_trig_reg,
      I1 => p_24_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => sw_rst_cond_d1,
      O => reset_trig0
    );
rst_ip2bus_rdack_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_24_in,
      O => bus2ip_rdce(2)
    );
rst_ip2bus_rdack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_24_in,
      I2 => rst_ip2bus_rdack_d1,
      O => rst_ip2bus_rdack0
    );
status_reg_rdack_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_23_in,
      O => bus2ip_rdce(1)
    );
status_reg_rdack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_23_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => status_reg_rdack_d1,
      O => status_reg_rdack0
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_24_in,
      I2 => reset_trig_reg,
      O => sw_rst_cond
    );
\temp_rd_wait_cycle_reg[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_21_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_20_in,
      O => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in46_in : out STD_LOGIC;
    p_1_in43_in : out STD_LOGIC;
    p_1_in40_in : out STD_LOGIC;
    p_1_in37_in : out STD_LOGIC;
    p_1_in34_in : out STD_LOGIC;
    p_1_in31_in : out STD_LOGIC;
    p_1_in28_in : out STD_LOGIC;
    p_1_in25_in : out STD_LOGIC;
    p_1_in22_in : out STD_LOGIC;
    p_1_in19_in : out STD_LOGIC;
    p_1_in16_in : out STD_LOGIC;
    p_1_in13_in : out STD_LOGIC;
    p_1_in10_in : out STD_LOGIC;
    p_1_in7_in : out STD_LOGIC;
    p_1_in4_in : out STD_LOGIC;
    p_1_in1_in : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    intr_ip2bus_wrack : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    intr_ip2bus_rdack : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 );
    reset2ip_reset : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    eos_out : in STD_LOGIC;
    eoc_out : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    jtagmodified_i : in STD_LOGIC;
    interrupt_status_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    Intr2Bus_RdAck0 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_interrupt_control;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_interrupt_control is
  signal \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal ip2intc_irpt_INST_0_i_10_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_2_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_3_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_4_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_5_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_6_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_7_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_8_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_9_n_0 : STD_LOGIC;
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal irpt_dly1 : STD_LOGIC;
  signal irpt_dly2 : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \^p_1_in10_in\ : STD_LOGIC;
  signal \^p_1_in13_in\ : STD_LOGIC;
  signal \^p_1_in16_in\ : STD_LOGIC;
  signal \^p_1_in19_in\ : STD_LOGIC;
  signal \^p_1_in1_in\ : STD_LOGIC;
  signal \^p_1_in22_in\ : STD_LOGIC;
  signal \^p_1_in25_in\ : STD_LOGIC;
  signal \^p_1_in28_in\ : STD_LOGIC;
  signal \^p_1_in31_in\ : STD_LOGIC;
  signal \^p_1_in34_in\ : STD_LOGIC;
  signal \^p_1_in37_in\ : STD_LOGIC;
  signal \^p_1_in40_in\ : STD_LOGIC;
  signal \^p_1_in43_in\ : STD_LOGIC;
  signal \^p_1_in46_in\ : STD_LOGIC;
  signal \^p_1_in4_in\ : STD_LOGIC;
  signal \^p_1_in7_in\ : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  Q(17 downto 0) <= \^q\(17 downto 0);
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_1_in <= \^p_1_in\;
  p_1_in10_in <= \^p_1_in10_in\;
  p_1_in13_in <= \^p_1_in13_in\;
  p_1_in16_in <= \^p_1_in16_in\;
  p_1_in19_in <= \^p_1_in19_in\;
  p_1_in1_in <= \^p_1_in1_in\;
  p_1_in22_in <= \^p_1_in22_in\;
  p_1_in25_in <= \^p_1_in25_in\;
  p_1_in28_in <= \^p_1_in28_in\;
  p_1_in31_in <= \^p_1_in31_in\;
  p_1_in34_in <= \^p_1_in34_in\;
  p_1_in37_in <= \^p_1_in37_in\;
  p_1_in40_in <= \^p_1_in40_in\;
  p_1_in43_in <= \^p_1_in43_in\;
  p_1_in46_in <= \^p_1_in46_in\;
  p_1_in4_in <= \^p_1_in4_in\;
  p_1_in7_in <= \^p_1_in7_in\;
\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(0),
      Q => irpt_dly1,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_dly1,
      Q => irpt_dly2,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(4),
      Q => \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(5),
      Q => \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(6),
      Q => \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(7),
      Q => \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(8),
      Q => \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(9),
      Q => \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(10),
      Q => \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(11),
      Q => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(1),
      Q => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(2),
      Q => \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(3),
      Q => \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => eos_out,
      Q => \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => eoc_out,
      Q => \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => jtagmodified_i,
      Q => \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => interrupt_status_i(1),
      Q => \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => interrupt_status_i(0),
      Q => \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      S => reset2ip_reset
    );
\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      Q => \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      S => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I1 => s_axi_wdata(0),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => irpt_dly1,
      I4 => irpt_dly2,
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in19_in\,
      I1 => s_axi_wdata(10),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[10].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[10].GEN_REG_STATUS.ip_irpt_status_reg[10]_i_1_n_0\,
      Q => \^p_1_in19_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in16_in\,
      I1 => s_axi_wdata(11),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[11].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[11].GEN_REG_STATUS.ip_irpt_status_reg[11]_i_1_n_0\,
      Q => \^p_1_in16_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in13_in\,
      I1 => s_axi_wdata(12),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[12].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[12].GEN_REG_STATUS.ip_irpt_status_reg[12]_i_1_n_0\,
      Q => \^p_1_in13_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in10_in\,
      I1 => s_axi_wdata(13),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[13].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[13].GEN_REG_STATUS.ip_irpt_status_reg[13]_i_1_n_0\,
      Q => \^p_1_in10_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in7_in\,
      I1 => s_axi_wdata(14),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[14].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[14].GEN_REG_STATUS.ip_irpt_status_reg[14]_i_1_n_0\,
      Q => \^p_1_in7_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in4_in\,
      I1 => s_axi_wdata(15),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[15].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[15].GEN_REG_STATUS.ip_irpt_status_reg[15]_i_1_n_0\,
      Q => \^p_1_in4_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in1_in\,
      I1 => s_axi_wdata(16),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[16].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[16].GEN_REG_STATUS.ip_irpt_status_reg[16]_i_1_n_0\,
      Q => \^p_1_in1_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => s_axi_wdata(17),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg[17]_i_1_n_0\,
      Q => \^p_1_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in46_in\,
      I1 => s_axi_wdata(1),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\,
      Q => \^p_1_in46_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in43_in\,
      I1 => s_axi_wdata(2),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[2].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\,
      Q => \^p_1_in43_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in40_in\,
      I1 => s_axi_wdata(3),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[3].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\,
      Q => \^p_1_in40_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in37_in\,
      I1 => s_axi_wdata(4),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[4].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\,
      Q => \^p_1_in37_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in34_in\,
      I1 => s_axi_wdata(5),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[5].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1_n_0\,
      Q => \^p_1_in34_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in31_in\,
      I1 => s_axi_wdata(6),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[6].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\,
      Q => \^p_1_in31_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in28_in\,
      I1 => s_axi_wdata(7),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[7].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1_n_0\,
      Q => \^p_1_in28_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in25_in\,
      I1 => s_axi_wdata(8),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1_n_0\,
      Q => \^p_1_in25_in\,
      R => reset2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6A6FFA6"
    )
        port map (
      I0 => \^p_1_in22_in\,
      I1 => s_axi_wdata(9),
      I2 => \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\,
      I3 => \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_reg_n_0\,
      I4 => \DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly2_reg_n_0\,
      O => \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[9].GEN_REG_STATUS.ip_irpt_status_reg[9]_i_1_n_0\,
      Q => \^p_1_in22_in\,
      R => reset2ip_reset
    );
Intr2Bus_RdAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Intr2Bus_RdAck0,
      Q => intr_ip2bus_rdack,
      R => reset2ip_reset
    );
Intr2Bus_WrAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => interrupt_wrce_strb,
      Q => intr_ip2bus_wrack,
      R => reset2ip_reset
    );
ip2intc_irpt_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8A8A8"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg\,
      I1 => ip2intc_irpt_INST_0_i_1_n_0,
      I2 => ip2intc_irpt_INST_0_i_2_n_0,
      I3 => \^p_1_in\,
      I4 => \^q\(17),
      I5 => ip2intc_irpt_INST_0_i_3_n_0,
      O => ip2intc_irpt
    );
ip2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ip2intc_irpt_INST_0_i_4_n_0,
      I1 => ip2intc_irpt_INST_0_i_5_n_0,
      I2 => ip2intc_irpt_INST_0_i_6_n_0,
      I3 => ip2intc_irpt_INST_0_i_7_n_0,
      I4 => ip2intc_irpt_INST_0_i_8_n_0,
      I5 => ip2intc_irpt_INST_0_i_9_n_0,
      O => ip2intc_irpt_INST_0_i_1_n_0
    );
ip2intc_irpt_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^p_1_in13_in\,
      I1 => \^q\(12),
      I2 => \^p_1_in19_in\,
      I3 => \^q\(10),
      I4 => \^q\(13),
      I5 => \^p_1_in10_in\,
      O => ip2intc_irpt_INST_0_i_10_n_0
    );
ip2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => ip2intc_irpt_INST_0_i_10_n_0,
      I1 => \^p_1_in4_in\,
      I2 => \^q\(15),
      I3 => \^p_1_in7_in\,
      I4 => \^q\(14),
      O => ip2intc_irpt_INST_0_i_2_n_0
    );
ip2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I1 => \^q\(0),
      I2 => \^ipif_glbl_irpt_enable_reg\,
      O => ip2intc_irpt_INST_0_i_3_n_0
    );
ip2intc_irpt_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^p_1_in1_in\,
      I2 => \^q\(9),
      I3 => \^p_1_in22_in\,
      O => ip2intc_irpt_INST_0_i_4_n_0
    );
ip2intc_irpt_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^p_1_in28_in\,
      I2 => \^q\(8),
      I3 => \^p_1_in25_in\,
      O => ip2intc_irpt_INST_0_i_5_n_0
    );
ip2intc_irpt_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^p_1_in31_in\,
      I2 => \^q\(5),
      I3 => \^p_1_in34_in\,
      O => ip2intc_irpt_INST_0_i_6_n_0
    );
ip2intc_irpt_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^p_1_in37_in\,
      I2 => \^q\(3),
      I3 => \^p_1_in40_in\,
      O => ip2intc_irpt_INST_0_i_7_n_0
    );
ip2intc_irpt_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^p_1_in43_in\,
      I2 => \^q\(1),
      I3 => \^p_1_in46_in\,
      O => ip2intc_irpt_INST_0_i_8_n_0
    );
ip2intc_irpt_INST_0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_in16_in\,
      I1 => \^q\(11),
      O => ip2intc_irpt_INST_0_i_9_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => \^q\(10),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => \^q\(11),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(12),
      Q => \^q\(12),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(13),
      Q => \^q\(13),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(14),
      Q => \^q\(14),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(15),
      Q => \^q\(15),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(16),
      Q => \^q\(16),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(17),
      Q => \^q\(17),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => \^q\(8),
      R => reset2ip_reset
    );
\ip_irpt_enable_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => \^q\(9),
      R => reset2ip_reset
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ipif_glbl_irpt_enable_reg_reg_0,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => reset2ip_reset
    );
irpt_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_rdack,
      Q => irpt_rdack_d1,
      R => reset2ip_reset
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => reset2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    wrack : out STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS_0\ : out STD_LOGIC;
    reset2ip_reset : out STD_LOGIC;
    bus2ip_reset_active_high : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_soft_reset;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_soft_reset is
  signal FF_WRACK_i_1_n_0 : STD_LOGIC;
  signal \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \^reset_flops[15].rst_flops_0\ : STD_LOGIC;
  signal \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal flop_q_chain : STD_LOGIC_VECTOR ( 1 to 15 );
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of FF_WRACK : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of FF_WRACK : label is "1'b0";
  attribute box_type : string;
  attribute box_type of FF_WRACK : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FF_WRACK_i_1 : label is "soft_lutpair73";
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[10].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[10].RST_FLOPS_i_1\ : label is "soft_lutpair78";
  attribute IS_CE_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[11].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[11].RST_FLOPS_i_1\ : label is "soft_lutpair79";
  attribute IS_CE_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[12].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[12].RST_FLOPS_i_1\ : label is "soft_lutpair79";
  attribute IS_CE_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[13].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[13].RST_FLOPS_i_1\ : label is "soft_lutpair80";
  attribute IS_CE_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[14].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[14].RST_FLOPS_i_1\ : label is "soft_lutpair80";
  attribute IS_CE_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[15].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair74";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair74";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[3].RST_FLOPS_i_1\ : label is "soft_lutpair75";
  attribute IS_CE_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[4].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[4].RST_FLOPS_i_1\ : label is "soft_lutpair75";
  attribute IS_CE_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[5].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[5].RST_FLOPS_i_1\ : label is "soft_lutpair76";
  attribute IS_CE_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[6].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[6].RST_FLOPS_i_1\ : label is "soft_lutpair76";
  attribute IS_CE_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[7].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[7].RST_FLOPS_i_1\ : label is "soft_lutpair77";
  attribute IS_CE_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[8].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[8].RST_FLOPS_i_1\ : label is "soft_lutpair77";
  attribute IS_CE_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[9].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[9].RST_FLOPS_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \temp_rd_wait_cycle_reg[15]_i_1\ : label is "soft_lutpair73";
begin
  \RESET_FLOPS[15].RST_FLOPS_0\ <= \^reset_flops[15].rst_flops_0\;
FF_WRACK: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => FF_WRACK_i_1_n_0,
      Q => wrack,
      R => bus2ip_reset_active_high
    );
FF_WRACK_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^reset_flops[15].rst_flops_0\,
      I1 => flop_q_chain(15),
      O => FF_WRACK_i_1_n_0
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => S,
      Q => flop_q_chain(1),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[10].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(11),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[10].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(10),
      O => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[11].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(12),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[11].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(11),
      O => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[12].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(13),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[12].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(12),
      O => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[13].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(14),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[13].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(13),
      O => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[14].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(15),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[14].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(14),
      O => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[15].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\,
      Q => \^reset_flops[15].rst_flops_0\,
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[15].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(15),
      O => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(2),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(1),
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(3),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(2),
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(4),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(3),
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[4].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(5),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[4].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(4),
      O => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[5].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(6),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[5].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(5),
      O => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[6].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(7),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[6].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(6),
      O => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[7].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(8),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[7].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(7),
      O => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[8].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(9),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[8].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(8),
      O => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[9].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain(10),
      R => bus2ip_reset_active_high
    );
\RESET_FLOPS[9].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain(9),
      O => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig0,
      Q => S,
      R => bus2ip_reset_active_high
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sw_rst_cond,
      Q => sw_rst_cond_d1,
      R => bus2ip_reset_active_high
    );
\temp_rd_wait_cycle_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bus2ip_reset_active_high,
      I1 => \^reset_flops[15].rst_flops_0\,
      O => reset2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temperature_update is
  port (
    den_A : out STD_LOGIC;
    bbusy_A : out STD_LOGIC;
    den_d1_reg : out STD_LOGIC;
    den_reg : out STD_LOGIC;
    busy_o_reg_0 : out STD_LOGIC;
    inst_sysmon : out STD_LOGIC;
    busy_o_reg_1 : out STD_LOGIC;
    inst_sysmon_0 : out STD_LOGIC;
    busy_o_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    inst_sysmon_1 : out STD_LOGIC;
    den_o_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    den_d1 : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    den_reg_reg : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    den_reg_reg_0 : in STD_LOGIC;
    den_reg_reg_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drdy_C : in STD_LOGIC;
    den_C_reg_reg : in STD_LOGIC;
    den_C_reg_reg_0 : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_i : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temperature_update;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temperature_update is
  signal \FSM_onehot_state[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \^bbusy_a\ : STD_LOGIC;
  signal busy_o_i_1_n_0 : STD_LOGIC;
  signal \^busy_o_reg_1\ : STD_LOGIC;
  signal \^den_a\ : STD_LOGIC;
  signal den_o_i_1_n_0 : STD_LOGIC;
  signal \^den_o_reg_0\ : STD_LOGIC;
  signal \^inst_sysmon_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \timer_cntr[11]_i_2_n_0\ : STD_LOGIC;
  signal \timer_cntr[12]_i_2_n_0\ : STD_LOGIC;
  signal \timer_cntr[12]_i_3_n_0\ : STD_LOGIC;
  signal \timer_cntr[15]_i_2_n_0\ : STD_LOGIC;
  signal \timer_cntr[15]_i_3_n_0\ : STD_LOGIC;
  signal \timer_cntr[15]_i_4_n_0\ : STD_LOGIC;
  signal \timer_cntr[6]_i_2_n_0\ : STD_LOGIC;
  signal \timer_cntr[7]_i_2_n_0\ : STD_LOGIC;
  signal timer_cntr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__0\ : label is "soft_lutpair62";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "wait_update_enable:0001,rd_en_ctrl_reg_temp:0010,rd_ctrl_reg_temp:0100,wait_timer_update:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "wait_update_enable:0001,rd_en_ctrl_reg_temp:0010,rd_ctrl_reg_temp:0100,wait_timer_update:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "wait_update_enable:0001,rd_en_ctrl_reg_temp:0010,rd_ctrl_reg_temp:0100,wait_timer_update:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "wait_update_enable:0001,rd_en_ctrl_reg_temp:0010,rd_ctrl_reg_temp:0100,wait_timer_update:1000";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_5\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_6\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of busy_o_i_1 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \daddr_C_reg[7]_i_8\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of overlap_B_i_2 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \timer_cntr[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \timer_cntr[11]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \timer_cntr[12]_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \timer_cntr[15]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \timer_cntr[15]_i_3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \timer_cntr[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \timer_cntr[6]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \timer_cntr[9]_i_1\ : label is "soft_lutpair61";
begin
  \FSM_onehot_state_reg[2]_0\(0) <= \^fsm_onehot_state_reg[2]_0\(0);
  bbusy_A <= \^bbusy_a\;
  busy_o_reg_1 <= \^busy_o_reg_1\;
  den_A <= \^den_a\;
  den_o_reg_0 <= \^den_o_reg_0\;
  inst_sysmon_0 <= \^inst_sysmon_0\;
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFEFEFEFEFE"
    )
        port map (
      I0 => E(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state[3]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state[3]_i_3__0_n_0\,
      O => \FSM_onehot_state[3]_i_1__0_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => timer_cntr_reg(3),
      I1 => timer_cntr_reg(0),
      I2 => timer_cntr_reg(1),
      I3 => timer_cntr_reg(2),
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \timer_cntr[12]_i_2_n_0\,
      I1 => timer_cntr_reg(13),
      I2 => timer_cntr_reg(12),
      I3 => timer_cntr_reg(15),
      I4 => timer_cntr_reg(14),
      I5 => \FSM_onehot_state[3]_i_4__0_n_0\,
      O => \FSM_onehot_state[3]_i_3__0_n_0\
    );
\FSM_onehot_state[3]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_cntr_reg(7),
      I1 => timer_cntr_reg(6),
      I2 => timer_cntr_reg(5),
      I3 => timer_cntr_reg(4),
      O => \FSM_onehot_state[3]_i_4__0_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1__0_n_0\,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      PRE => AR(0),
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1__0_n_0\,
      CLR => AR(0),
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1__0_n_0\,
      CLR => AR(0),
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \^fsm_onehot_state_reg[2]_0\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[3]_i_1__0_n_0\,
      CLR => AR(0),
      D => \^fsm_onehot_state_reg[2]_0\(0),
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00FF003A3A"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => \^bbusy_a\,
      I2 => \FSM_sequential_state_reg[1]\,
      I3 => drdy_C,
      I4 => den_reg_reg_1(1),
      I5 => den_reg_reg_1(0),
      O => busy_o_reg_2(0)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^inst_sysmon_0\,
      I1 => \^den_a\,
      I2 => \FSM_sequential_state_reg[1]_0\,
      I3 => \FSM_sequential_state_reg[1]_1\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^den_a\,
      I1 => \FSM_sequential_state_reg[1]_0\,
      O => \^den_o_reg_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => den_d1,
      I3 => \^bbusy_a\,
      O => \^inst_sysmon_0\
    );
busy_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[2]_0\(0),
      I1 => drdy_i,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \^bbusy_a\,
      O => busy_o_i_1_n_0
    );
busy_o_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => busy_o_i_1_n_0,
      Q => \^bbusy_a\
    );
\daddr_C_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F10FF100010FF1"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => \^bbusy_a\,
      I2 => den_reg_reg_1(1),
      I3 => den_reg_reg_1(0),
      I4 => drdy_C,
      I5 => \^den_o_reg_0\,
      O => inst_sysmon_1
    );
\daddr_C_reg[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^bbusy_a\,
      I1 => \FSM_sequential_state_reg[1]_1\,
      O => \^busy_o_reg_1\
    );
den_C_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7D5A280"
    )
        port map (
      I0 => drdy_C,
      I1 => \^busy_o_reg_1\,
      I2 => \^inst_sysmon_0\,
      I3 => den_C_reg_reg,
      I4 => \^den_a\,
      I5 => den_C_reg_reg_0,
      O => inst_sysmon
    );
den_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \^fsm_onehot_state_reg[2]_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \^den_a\,
      O => den_o_i_1_n_0
    );
den_o_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => den_o_i_1_n_0,
      Q => \^den_a\
    );
den_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FFF0F0A0FC"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => \^bbusy_a\,
      I2 => \^den_a\,
      I3 => den_reg_reg_0,
      I4 => den_reg_reg_1(1),
      I5 => den_reg_reg_1(0),
      O => den_reg
    );
dwe_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F040004000400040"
    )
        port map (
      I0 => den_d1,
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => den_reg_reg,
      I3 => \FSM_sequential_state_reg[1]\,
      I4 => \^den_a\,
      I5 => \^bbusy_a\,
      O => den_d1_reg
    );
overlap_B_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF1FF"
    )
        port map (
      I0 => \^bbusy_a\,
      I1 => \^den_a\,
      I2 => \FSM_sequential_state_reg[1]\,
      I3 => \FSM_sequential_state_reg[0]\,
      I4 => den_d1,
      O => busy_o_reg_0
    );
\temp_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => temp_out(0)
    );
\temp_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => temp_out(1)
    );
\temp_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => temp_out(2)
    );
\temp_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => temp_out(3)
    );
\temp_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => temp_out(4)
    );
\temp_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => temp_out(5)
    );
\temp_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => temp_out(6)
    );
\temp_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => temp_out(7)
    );
\temp_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => temp_out(8)
    );
\temp_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => temp_out(9)
    );
\timer_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Q(0),
      I1 => \timer_cntr[15]_i_2_n_0\,
      I2 => timer_cntr_reg(0),
      O => p_0_in(0)
    );
\timer_cntr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D00DD0D0D0D0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(10),
      I2 => timer_cntr_reg(10),
      I3 => timer_cntr_reg(8),
      I4 => timer_cntr_reg(9),
      I5 => \timer_cntr[12]_i_3_n_0\,
      O => p_0_in(10)
    );
\timer_cntr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D0D00DD0D0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(11),
      I2 => timer_cntr_reg(11),
      I3 => timer_cntr_reg(10),
      I4 => \timer_cntr[12]_i_3_n_0\,
      I5 => \timer_cntr[11]_i_2_n_0\,
      O => p_0_in(11)
    );
\timer_cntr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => timer_cntr_reg(8),
      I1 => timer_cntr_reg(9),
      O => \timer_cntr[11]_i_2_n_0\
    );
\timer_cntr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D00DD0D0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(12),
      I2 => timer_cntr_reg(12),
      I3 => \timer_cntr[12]_i_2_n_0\,
      I4 => \timer_cntr[12]_i_3_n_0\,
      O => p_0_in(12)
    );
\timer_cntr[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_cntr_reg(11),
      I1 => timer_cntr_reg(10),
      I2 => timer_cntr_reg(9),
      I3 => timer_cntr_reg(8),
      O => \timer_cntr[12]_i_2_n_0\
    );
\timer_cntr[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \timer_cntr[6]_i_2_n_0\,
      I1 => timer_cntr_reg(4),
      I2 => timer_cntr_reg(5),
      I3 => timer_cntr_reg(6),
      I4 => timer_cntr_reg(7),
      O => \timer_cntr[12]_i_3_n_0\
    );
\timer_cntr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DD0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(13),
      I2 => timer_cntr_reg(13),
      I3 => \timer_cntr[15]_i_3_n_0\,
      O => p_0_in(13)
    );
\timer_cntr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D00DD0D0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(14),
      I2 => timer_cntr_reg(14),
      I3 => timer_cntr_reg(13),
      I4 => \timer_cntr[15]_i_3_n_0\,
      O => p_0_in(14)
    );
\timer_cntr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D0D0D00DD0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(15),
      I2 => timer_cntr_reg(15),
      I3 => \timer_cntr[15]_i_3_n_0\,
      I4 => timer_cntr_reg(13),
      I5 => timer_cntr_reg(14),
      O => p_0_in(15)
    );
\timer_cntr[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \timer_cntr[6]_i_2_n_0\,
      I1 => \FSM_onehot_state[3]_i_4__0_n_0\,
      I2 => \timer_cntr[15]_i_4_n_0\,
      I3 => \timer_cntr[12]_i_2_n_0\,
      O => \timer_cntr[15]_i_2_n_0\
    );
\timer_cntr[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \timer_cntr[12]_i_2_n_0\,
      I1 => \timer_cntr[6]_i_2_n_0\,
      I2 => \FSM_onehot_state[3]_i_4__0_n_0\,
      I3 => timer_cntr_reg(12),
      O => \timer_cntr[15]_i_3_n_0\
    );
\timer_cntr[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => timer_cntr_reg(13),
      I1 => timer_cntr_reg(12),
      I2 => timer_cntr_reg(15),
      I3 => timer_cntr_reg(14),
      O => \timer_cntr[15]_i_4_n_0\
    );
\timer_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => timer_cntr_reg(1),
      I1 => timer_cntr_reg(0),
      I2 => \timer_cntr[15]_i_2_n_0\,
      I3 => Q(1),
      O => p_0_in(1)
    );
\timer_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB0000B"
    )
        port map (
      I0 => Q(2),
      I1 => \timer_cntr[15]_i_2_n_0\,
      I2 => timer_cntr_reg(1),
      I3 => timer_cntr_reg(0),
      I4 => timer_cntr_reg(2),
      O => p_0_in(2)
    );
\timer_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE010000FE01"
    )
        port map (
      I0 => timer_cntr_reg(2),
      I1 => timer_cntr_reg(1),
      I2 => timer_cntr_reg(0),
      I3 => timer_cntr_reg(3),
      I4 => \timer_cntr[15]_i_2_n_0\,
      I5 => Q(3),
      O => p_0_in(3)
    );
\timer_cntr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DD0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(4),
      I2 => timer_cntr_reg(4),
      I3 => \timer_cntr[6]_i_2_n_0\,
      O => p_0_in(4)
    );
\timer_cntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D00DD0D0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(5),
      I2 => timer_cntr_reg(5),
      I3 => timer_cntr_reg(4),
      I4 => \timer_cntr[6]_i_2_n_0\,
      O => p_0_in(5)
    );
\timer_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D00DD0D0D0D0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(6),
      I2 => timer_cntr_reg(6),
      I3 => timer_cntr_reg(4),
      I4 => timer_cntr_reg(5),
      I5 => \timer_cntr[6]_i_2_n_0\,
      O => p_0_in(6)
    );
\timer_cntr[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => timer_cntr_reg(0),
      I1 => timer_cntr_reg(1),
      I2 => timer_cntr_reg(2),
      I3 => timer_cntr_reg(3),
      O => \timer_cntr[6]_i_2_n_0\
    );
\timer_cntr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D00DD0D0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(7),
      I2 => timer_cntr_reg(7),
      I3 => timer_cntr_reg(6),
      I4 => \timer_cntr[7]_i_2_n_0\,
      O => p_0_in(7)
    );
\timer_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => timer_cntr_reg(3),
      I1 => timer_cntr_reg(2),
      I2 => timer_cntr_reg(1),
      I3 => timer_cntr_reg(0),
      I4 => timer_cntr_reg(5),
      I5 => timer_cntr_reg(4),
      O => \timer_cntr[7]_i_2_n_0\
    );
\timer_cntr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => \timer_cntr[12]_i_3_n_0\,
      I1 => timer_cntr_reg(8),
      I2 => \timer_cntr[15]_i_2_n_0\,
      I3 => Q(8),
      O => p_0_in(8)
    );
\timer_cntr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D00DD0D0"
    )
        port map (
      I0 => \timer_cntr[15]_i_2_n_0\,
      I1 => Q(9),
      I2 => timer_cntr_reg(9),
      I3 => timer_cntr_reg(8),
      I4 => \timer_cntr[12]_i_3_n_0\,
      O => p_0_in(9)
    );
\timer_cntr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(0),
      Q => timer_cntr_reg(0)
    );
\timer_cntr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(10),
      Q => timer_cntr_reg(10)
    );
\timer_cntr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(11),
      Q => timer_cntr_reg(11)
    );
\timer_cntr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(12),
      Q => timer_cntr_reg(12)
    );
\timer_cntr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(13),
      Q => timer_cntr_reg(13)
    );
\timer_cntr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(14),
      Q => timer_cntr_reg(14)
    );
\timer_cntr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(15),
      Q => timer_cntr_reg(15)
    );
\timer_cntr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => timer_cntr_reg(1)
    );
\timer_cntr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(2),
      Q => timer_cntr_reg(2)
    );
\timer_cntr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(3),
      Q => timer_cntr_reg(3)
    );
\timer_cntr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(4),
      Q => timer_cntr_reg(4)
    );
\timer_cntr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(5),
      Q => timer_cntr_reg(5)
    );
\timer_cntr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(6),
      Q => timer_cntr_reg(6)
    );
\timer_cntr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(7),
      Q => timer_cntr_reg(7)
    );
\timer_cntr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(8),
      Q => timer_cntr_reg(8)
    );
\timer_cntr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(9),
      Q => timer_cntr_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_slave_attachment is
  port (
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 18 downto 0 );
    convst_rst_wrce_or_reduce : out STD_LOGIC;
    local_reg_wrack0 : out STD_LOGIC;
    local_rdce_or_reduce : out STD_LOGIC;
    local_reg_rdack0 : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    status_reg_rdack0 : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_4_in : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    Intr2Bus_RdAck0 : out STD_LOGIC;
    irpt_wrack_d1_reg : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    dummy_bus2ip_rdce_intr : out STD_LOGIC;
    dummy_intr_reg_rdack0 : out STD_LOGIC;
    dummy_bus2ip_wrce_intr : out STD_LOGIC;
    dummy_intr_reg_wrack0 : out STD_LOGIC;
    dummy_local_reg_rdack_d10 : out STD_LOGIC;
    dummy_local_reg_rdack0 : out STD_LOGIC;
    dummy_local_reg_wrack_d10 : out STD_LOGIC;
    dummy_local_reg_wrack0 : out STD_LOGIC;
    rst_ip2bus_rdack0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb_2_sp_1 : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    bus2ip_reset_active_high : in STD_LOGIC;
    ip2bus_error : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\ : in STD_LOGIC;
    p_1_in46_in : in STD_LOGIC;
    p_1_in43_in : in STD_LOGIC;
    p_1_in40_in : in STD_LOGIC;
    p_1_in37_in : in STD_LOGIC;
    p_1_in34_in : in STD_LOGIC;
    p_1_in31_in : in STD_LOGIC;
    p_1_in28_in : in STD_LOGIC;
    p_1_in25_in : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    p_1_in19_in : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_1_in7_in : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    jtaglocked_i : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    local_reg_wrack_d1 : in STD_LOGIC;
    local_reg_rdack_d1 : in STD_LOGIC;
    status_reg_rdack_d1 : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    dummy_intr_reg_rdack_d1 : in STD_LOGIC;
    dummy_intr_reg_wrack_d1 : in STD_LOGIC;
    dummy_local_reg_rdack_d1 : in STD_LOGIC;
    dummy_local_reg_wrack_d1 : in STD_LOGIC;
    rst_ip2bus_rdack_d1 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    hard_macro_rst_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 10 to 10 );
  signal \bus2ip_addr_i[10]_i_1_n_0\ : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 10 downto 2 );
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wstrb_2_sn_1 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal sw_rst_cond_d1_i_2_n_0 : STD_LOGIC;
  signal timeout : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[10]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[9]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair30";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wstrb_2_sp_1 <= s_axi_wstrb_2_sn_1;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070FFFF00700070"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => s_axi_arvalid,
      I4 => \FSM_onehot_state[3]_i_2__0_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => timeout,
      I3 => ip2bus_rdack,
      I4 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF008000800080"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => s_axi_arvalid,
      I4 => \FSM_onehot_state[3]_i_3_n_0\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8FFFF88F888F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state[3]_i_2__0_n_0\,
      I2 => s_axi_bresp_i,
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \FSM_onehot_state[3]_i_4_n_0\,
      I5 => s_axi_rresp_i,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => \FSM_onehot_state[3]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timeout,
      I1 => ip2bus_wrack,
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timeout,
      I1 => ip2bus_rdack,
      O => \FSM_onehot_state[3]_i_4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => bus2ip_reset_active_high
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => bus2ip_reset_active_high
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => bus2ip_reset_active_high
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => bus2ip_reset_active_high
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\,
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5]\,
      O => plusOp(5)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => timeout,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5]\,
      O => plusOp(6)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\,
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[6]_i_3_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[0]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[1]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[2]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[3]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[4]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(5),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg_n_0_[5]\,
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(6),
      Q => timeout,
      R => clear
    );
\INTR_CTRLR_GEN_I.ip2bus_error_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => s_axi_wstrb(3),
      I2 => s_axi_wstrb(0),
      I3 => s_axi_wstrb(1),
      I4 => bus2ip_rnw_i_reg_n_0,
      O => s_axi_wstrb_2_sn_1
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_0,
      D(18 downto 0) => D(18 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0) => timeout,
      \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_0\ => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\,
      \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(8) => bus2ip_addr(10),
      \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]_1\(7 downto 0) => \^q\(7 downto 0),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0) => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(17 downto 0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(17 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0\(0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0\(0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(15 downto 0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(15 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(14 downto 0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(14 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(11 downto 0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(11 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\ => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\,
      Intr2Bus_RdAck0 => Intr2Bus_RdAck0,
      Q => start2,
      bus2ip_rdce(2 downto 0) => bus2ip_rdce(2 downto 0),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      convst_rst_wrce_or_reduce => convst_rst_wrce_or_reduce,
      dummy_bus2ip_rdce_intr => dummy_bus2ip_rdce_intr,
      dummy_bus2ip_wrce_intr => dummy_bus2ip_wrce_intr,
      dummy_intr_reg_rdack0 => dummy_intr_reg_rdack0,
      dummy_intr_reg_rdack_d1 => dummy_intr_reg_rdack_d1,
      dummy_intr_reg_wrack0 => dummy_intr_reg_wrack0,
      dummy_intr_reg_wrack_d1 => dummy_intr_reg_wrack_d1,
      dummy_local_reg_rdack0 => dummy_local_reg_rdack0,
      dummy_local_reg_rdack_d1 => dummy_local_reg_rdack_d1,
      dummy_local_reg_rdack_d10 => dummy_local_reg_rdack_d10,
      dummy_local_reg_wrack0 => dummy_local_reg_wrack0,
      dummy_local_reg_wrack_d1 => dummy_local_reg_wrack_d1,
      dummy_local_reg_wrack_d10 => dummy_local_reg_wrack_d10,
      hard_macro_rst_reg => hard_macro_rst_reg,
      interrupt_wrce_strb => interrupt_wrce_strb,
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_wrack => ip2bus_wrack,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg => bus2ip_rnw_i_reg_n_0,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => irpt_wrack_d1_reg,
      jtaglocked_i => jtaglocked_i,
      local_rdce_or_reduce => local_rdce_or_reduce,
      local_reg_rdack0 => local_reg_rdack0,
      local_reg_rdack_d1 => local_reg_rdack_d1,
      local_reg_wrack0 => local_reg_wrack0,
      local_reg_wrack_d1 => local_reg_wrack_d1,
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in22_in => p_1_in22_in,
      p_1_in25_in => p_1_in25_in,
      p_1_in28_in => p_1_in28_in,
      p_1_in31_in => p_1_in31_in,
      p_1_in34_in => p_1_in34_in,
      p_1_in37_in => p_1_in37_in,
      p_1_in40_in => p_1_in40_in,
      p_1_in43_in => p_1_in43_in,
      p_1_in46_in => p_1_in46_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_4_in => p_4_in,
      reset_trig0 => reset_trig0,
      reset_trig_reg => sw_rst_cond_d1_i_2_n_0,
      rst_ip2bus_rdack0 => rst_ip2bus_rdack0,
      rst_ip2bus_rdack_d1 => rst_ip2bus_rdack_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(1) => s_axi_wdata(4),
      s_axi_wdata(0) => s_axi_wdata(0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wstrb(0) => s_axi_wstrb(3),
      status_reg_rdack0 => status_reg_rdack0,
      status_reg_rdack_d1 => status_reg_rdack_d1,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
\bus2ip_addr_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => state(0),
      I4 => state(1),
      O => \bus2ip_addr_i[10]_i_1_n_0\
    );
\bus2ip_addr_i[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(8),
      O => p_1_in_0(10)
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(0),
      O => p_1_in_0(2)
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(1),
      O => p_1_in_0(3)
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(2),
      O => p_1_in_0(4)
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(3),
      O => p_1_in_0(5)
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(4),
      O => p_1_in_0(6)
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(5),
      O => p_1_in_0(7)
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(6),
      O => p_1_in_0(8)
    );
\bus2ip_addr_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(7),
      O => p_1_in_0(9)
    );
\bus2ip_addr_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => p_1_in_0(10),
      Q => bus2ip_addr(10),
      R => bus2ip_reset_active_high
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => p_1_in_0(2),
      Q => \^q\(0),
      R => bus2ip_reset_active_high
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => p_1_in_0(3),
      Q => \^q\(1),
      R => bus2ip_reset_active_high
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => p_1_in_0(4),
      Q => \^q\(2),
      R => bus2ip_reset_active_high
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => p_1_in_0(5),
      Q => \^q\(3),
      R => bus2ip_reset_active_high
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => p_1_in_0(6),
      Q => \^q\(4),
      R => bus2ip_reset_active_high
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => p_1_in_0(7),
      Q => \^q\(5),
      R => bus2ip_reset_active_high
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => p_1_in_0(8),
      Q => \^q\(6),
      R => bus2ip_reset_active_high
    );
\bus2ip_addr_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => p_1_in_0(9),
      Q => \^q\(7),
      R => bus2ip_reset_active_high
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[10]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => bus2ip_rnw_i_reg_n_0,
      R => bus2ip_reset_active_high
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => timeout,
      O => s_axi_arready
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip2bus_error,
      I1 => s_axi_bresp_i,
      I2 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => bus2ip_reset_active_high
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FD550000FC00"
    )
        port map (
      I0 => s_axi_bready,
      I1 => timeout,
      I2 => ip2bus_wrack,
      I3 => state(1),
      I4 => state(0),
      I5 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(0),
      Q => s_axi_rdata(0),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(10),
      Q => s_axi_rdata(10),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(11),
      Q => s_axi_rdata(11),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(12),
      Q => s_axi_rdata(12),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(13),
      Q => s_axi_rdata(13),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(14),
      Q => s_axi_rdata(14),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(15),
      Q => s_axi_rdata(15),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(16),
      Q => s_axi_rdata(16),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(17),
      Q => s_axi_rdata(17),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(1),
      Q => s_axi_rdata(1),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(2),
      Q => s_axi_rdata(2),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(18),
      Q => s_axi_rdata(18),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(3),
      Q => s_axi_rdata(3),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(4),
      Q => s_axi_rdata(4),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(5),
      Q => s_axi_rdata(5),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(6),
      Q => s_axi_rdata(6),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(7),
      Q => s_axi_rdata(7),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(8),
      Q => s_axi_rdata(8),
      R => bus2ip_reset_active_high
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(9),
      Q => s_axi_rdata(9),
      R => bus2ip_reset_active_high
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => ip2bus_error,
      Q => s_axi_rresp(0),
      R => bus2ip_reset_active_high
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FD550000FC00"
    )
        port map (
      I0 => s_axi_rready,
      I1 => timeout,
      I2 => ip2bus_rdack,
      I3 => state(0),
      I4 => state(1),
      I5 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => bus2ip_reset_active_high
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ip2bus_wrack,
      I1 => timeout,
      O => s_axi_awready
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => state(1),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => bus2ip_reset_active_high
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDA85555FDA8"
    )
        port map (
      I0 => state(1),
      I1 => ip2bus_wrack,
      I2 => timeout,
      I3 => s_axi_arvalid,
      I4 => state(0),
      I5 => \FSM_onehot_state[3]_i_2__0_n_0\,
      O => p_0_out(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB0003BBBBCCCF"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2__0_n_0\,
      I1 => state(0),
      I2 => s_axi_arvalid,
      I3 => \state[1]_i_2_n_0\,
      I4 => state(1),
      I5 => \FSM_onehot_state[3]_i_4_n_0\,
      O => p_0_out(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(0),
      Q => state(0),
      R => bus2ip_reset_active_high
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(1),
      Q => state(1),
      R => bus2ip_reset_active_high
    );
sw_rst_cond_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF1FFFFFF"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => bus2ip_rnw_i_reg_n_0,
      I2 => s_axi_wdata(2),
      I3 => s_axi_wdata(3),
      I4 => s_axi_wdata(1),
      I5 => s_axi_wdata(0),
      O => sw_rst_cond_d1_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_xadc_core_drp is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    jtagmodified_i : out STD_LOGIC;
    inst_sysmon_0 : out STD_LOGIC_VECTOR ( 12 downto 0 );
    local_reg_wrack_d1 : out STD_LOGIC;
    local_reg_rdack_d1 : out STD_LOGIC;
    status_reg_rdack_d1 : out STD_LOGIC;
    hard_macro_rst_reg : out STD_LOGIC;
    ip2bus_error_int1 : out STD_LOGIC;
    ip2bus_wrack_int1 : out STD_LOGIC;
    ip2bus_rdack_int1 : out STD_LOGIC;
    interrupt_status_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \do_reg_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \alarm_reg_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \status_reg_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    reset2ip_reset : in STD_LOGIC;
    convst_rst_wrce_or_reduce : in STD_LOGIC;
    local_reg_wrack0 : in STD_LOGIC;
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 0 to 0 );
    local_rdce_or_reduce : in STD_LOGIC;
    local_reg_rdack0 : in STD_LOGIC;
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 1 downto 0 );
    status_reg_rdack0 : in STD_LOGIC;
    p_4_in : in STD_LOGIC;
    hard_macro_rst_reg_reg_0 : in STD_LOGIC;
    dwe_C_reg_reg : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    bus2ip_reset_active_high : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_error_reg\ : in STD_LOGIC;
    \INTR_CTRLR_GEN_I.ip2bus_error_reg_0\ : in STD_LOGIC;
    dummy_intr_reg_wrack : in STD_LOGIC;
    dummy_local_reg_wrack : in STD_LOGIC;
    wrack : in STD_LOGIC;
    intr_ip2bus_wrack : in STD_LOGIC;
    rst_ip2bus_rdack : in STD_LOGIC;
    dummy_intr_reg_rdack : in STD_LOGIC;
    dummy_local_reg_rdack : in STD_LOGIC;
    intr_ip2bus_rdack : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_xadc_core_drp;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_xadc_core_drp is
  signal \^d\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.ip2bus_wrack_i_2_n_0\ : STD_LOGIC;
  signal Inst_drp_arbiter_n_1 : STD_LOGIC;
  signal Inst_drp_arbiter_n_10 : STD_LOGIC;
  signal Inst_drp_arbiter_n_11 : STD_LOGIC;
  signal Inst_drp_arbiter_n_12 : STD_LOGIC;
  signal Inst_drp_arbiter_n_13 : STD_LOGIC;
  signal Inst_drp_arbiter_n_14 : STD_LOGIC;
  signal Inst_drp_arbiter_n_5 : STD_LOGIC;
  signal Inst_drp_arbiter_n_6 : STD_LOGIC;
  signal Inst_drp_arbiter_n_7 : STD_LOGIC;
  signal alarm_0_d1 : STD_LOGIC;
  signal bbusy_A : STD_LOGIC;
  signal daddr_C : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal daddr_C_master_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of daddr_C_master_reg : signal is std.standard.true;
  signal daddr_C_master_reg2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of daddr_C_master_reg2 : signal is std.standard.true;
  signal daddr_C_slave0_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of daddr_C_slave0_reg : signal is std.standard.true;
  signal daddr_C_slave0_reg2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of daddr_C_slave0_reg2 : signal is std.standard.true;
  signal daddr_C_slave1_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of daddr_C_slave1_reg : signal is std.standard.true;
  signal daddr_C_slave1_reg2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DONT_TOUCH of daddr_C_slave1_reg2 : signal is std.standard.true;
  signal den_A : STD_LOGIC;
  signal den_C : STD_LOGIC;
  signal den_d1 : STD_LOGIC;
  signal den_reg : STD_LOGIC;
  signal di_C : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal di_C_master_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DONT_TOUCH of di_C_master_reg : signal is std.standard.true;
  signal di_C_master_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DONT_TOUCH of di_C_master_reg2 : signal is std.standard.true;
  signal di_C_slave0_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DONT_TOUCH of di_C_slave0_reg : signal is std.standard.true;
  signal di_C_slave0_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DONT_TOUCH of di_C_slave0_reg2 : signal is std.standard.true;
  signal di_C_slave1_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DONT_TOUCH of di_C_slave1_reg : signal is std.standard.true;
  signal di_C_slave1_reg2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DONT_TOUCH of di_C_slave1_reg2 : signal is std.standard.true;
  signal do_A_reg : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal do_B_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal do_C : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \do_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal drdy_C : STD_LOGIC;
  signal drdy_i : STD_LOGIC;
  signal drdy_rd_ack_i : STD_LOGIC;
  signal drdy_rd_ack_i_d1 : STD_LOGIC;
  signal drdy_rd_ack_i_d2 : STD_LOGIC;
  signal drdy_wr_ack_i : STD_LOGIC;
  signal drdy_wr_ack_i_d1 : STD_LOGIC;
  signal drdy_wr_ack_i_d2 : STD_LOGIC;
  signal dwe_C : STD_LOGIC;
  signal dwe_C_master_reg : STD_LOGIC;
  attribute DONT_TOUCH of dwe_C_master_reg : signal is std.standard.true;
  signal dwe_C_master_reg2 : STD_LOGIC;
  attribute DONT_TOUCH of dwe_C_master_reg2 : signal is std.standard.true;
  signal dwe_C_slave0_reg : STD_LOGIC;
  attribute DONT_TOUCH of dwe_C_slave0_reg : signal is std.standard.true;
  signal dwe_C_slave0_reg2 : STD_LOGIC;
  attribute DONT_TOUCH of dwe_C_slave0_reg2 : signal is std.standard.true;
  signal dwe_C_slave1_reg : STD_LOGIC;
  attribute DONT_TOUCH of dwe_C_slave1_reg : signal is std.standard.true;
  signal dwe_C_slave1_reg2 : STD_LOGIC;
  attribute DONT_TOUCH of dwe_C_slave1_reg2 : signal is std.standard.true;
  signal eoc_d1 : STD_LOGIC;
  signal eoc_d1_i_1_n_0 : STD_LOGIC;
  signal \^eoc_out\ : STD_LOGIC;
  signal eos_d1 : STD_LOGIC;
  signal eos_d1_i_1_n_0 : STD_LOGIC;
  signal \^eos_out\ : STD_LOGIC;
  signal \^hard_macro_rst_reg\ : STD_LOGIC;
  signal \^inst_sysmon_0\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal inst_sysmon_n_27 : STD_LOGIC;
  signal inst_sysmon_n_28 : STD_LOGIC;
  signal inst_sysmon_n_29 : STD_LOGIC;
  signal inst_sysmon_n_30 : STD_LOGIC;
  signal jtagbusy_i : STD_LOGIC;
  signal jtagmodified_d1 : STD_LOGIC;
  signal jtagmodified_d1_i_1_n_0 : STD_LOGIC;
  signal \^jtagmodified_i\ : STD_LOGIC;
  signal local_reg_rdack : STD_LOGIC;
  signal local_reg_wrack : STD_LOGIC;
  signal ot_d1 : STD_LOGIC;
  signal p_5_out : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal reset : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal status_reg_rdack : STD_LOGIC;
  signal temperature_update_inst_n_10 : STD_LOGIC;
  signal temperature_update_inst_n_11 : STD_LOGIC;
  signal temperature_update_inst_n_2 : STD_LOGIC;
  signal temperature_update_inst_n_4 : STD_LOGIC;
  signal temperature_update_inst_n_5 : STD_LOGIC;
  signal temperature_update_inst_n_6 : STD_LOGIC;
  signal temperature_update_inst_n_7 : STD_LOGIC;
  signal temperature_update_inst_n_8 : STD_LOGIC;
  signal temperature_update_inst_n_9 : STD_LOGIC;
  signal wait_cycle : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_sysmon_I2C_SCLK_TS_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sysmon_I2C_SDA_TS_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sysmon_SMBALERT_TS_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sysmon_ADC_DATA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_sysmon_MUXADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_error_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_rdack_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN_I.ip2bus_wrack_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of eoc_d1_i_1 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of eos_d1_i_1 : label is "soft_lutpair72";
  attribute box_type : string;
  attribute box_type of inst_sysmon : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of jtagmodified_d1_i_1 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \status_reg[10]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \status_reg[7]_i_1\ : label is "soft_lutpair72";
begin
  D(8 downto 0) <= \^d\(8 downto 0);
  eoc_out <= \^eoc_out\;
  eos_out <= \^eos_out\;
  hard_macro_rst_reg <= \^hard_macro_rst_reg\;
  inst_sysmon_0(12 downto 0) <= \^inst_sysmon_0\(12 downto 0);
  jtagmodified_i <= \^jtagmodified_i\;
\DO_IRPT_INPUT[8].GEN_POS_EDGE_DETECT.irpt_dly1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ot_d1,
      I1 => \^inst_sysmon_0\(0),
      O => interrupt_status_i(1)
    );
\DO_IRPT_INPUT[9].GEN_POS_EDGE_DETECT.irpt_dly1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => alarm_0_d1,
      I1 => \^inst_sysmon_0\(1),
      O => interrupt_status_i(0)
    );
\INTR_CTRLR_GEN_I.ip2bus_error_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5554"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_error_reg\,
      I1 => drdy_wr_ack_i,
      I2 => local_reg_wrack,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0\,
      I4 => \INTR_CTRLR_GEN_I.ip2bus_error_reg_0\,
      O => ip2bus_error_int1
    );
\INTR_CTRLR_GEN_I.ip2bus_rdack_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0\,
      I1 => rst_ip2bus_rdack,
      I2 => dummy_intr_reg_rdack,
      I3 => dummy_local_reg_rdack,
      I4 => intr_ip2bus_rdack,
      O => ip2bus_rdack_int1
    );
\INTR_CTRLR_GEN_I.ip2bus_rdack_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => status_reg_rdack,
      I1 => drdy_rd_ack_i,
      I2 => local_reg_rdack,
      O => \INTR_CTRLR_GEN_I.ip2bus_rdack_i_2_n_0\
    );
\INTR_CTRLR_GEN_I.ip2bus_wrack_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \INTR_CTRLR_GEN_I.ip2bus_wrack_i_2_n_0\,
      I1 => dummy_intr_reg_wrack,
      I2 => dummy_local_reg_wrack,
      I3 => \INTR_CTRLR_GEN_I.ip2bus_error_reg_0\,
      I4 => wrack,
      I5 => intr_ip2bus_wrack,
      O => ip2bus_wrack_int1
    );
\INTR_CTRLR_GEN_I.ip2bus_wrack_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => local_reg_wrack,
      I1 => drdy_wr_ack_i,
      O => \INTR_CTRLR_GEN_I.ip2bus_wrack_i_2_n_0\
    );
Inst_drp_arbiter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_drp_arbiter
     port map (
      AR(0) => reset,
      Bus_RNW_reg => Bus_RNW_reg,
      DO(15 downto 0) => do_C(15 downto 0),
      E(0) => Inst_drp_arbiter_n_7,
      \FSM_sequential_state_reg[0]_0\ => temperature_update_inst_n_7,
      \FSM_sequential_state_reg[1]_0\(1 downto 0) => \state__0\(1 downto 0),
      \FSM_sequential_state_reg[1]_1\ => Inst_drp_arbiter_n_13,
      \FSM_sequential_state_reg[1]_2\ => Inst_drp_arbiter_n_14,
      \FSM_sequential_state_reg[1]_3\ => \FSM_sequential_state_reg[1]\,
      \FSM_sequential_state_reg[1]_4\ => temperature_update_inst_n_10,
      \FSM_sequential_state_reg[1]_5\(0) => temperature_update_inst_n_8,
      Q(0) => temperature_update_inst_n_11,
      bbusy_A => bbusy_A,
      bus2ip_reset_active_high => bus2ip_reset_active_high,
      \daddr_C_reg_reg[7]_0\(7 downto 0) => daddr_C(7 downto 0),
      \daddr_C_reg_reg[7]_1\ => temperature_update_inst_n_6,
      \daddr_reg_reg[7]_0\ => \^d\(7),
      \daddr_reg_reg[7]_1\(7 downto 0) => Q(7 downto 0),
      den_A => den_A,
      den_C => den_C,
      den_C_reg_reg_0 => temperature_update_inst_n_5,
      den_d1 => den_d1,
      den_d1_reg => Inst_drp_arbiter_n_12,
      den_reg => den_reg,
      den_reg_reg_0 => Inst_drp_arbiter_n_1,
      den_reg_reg_1 => temperature_update_inst_n_2,
      \di_C_reg_reg[15]_0\(15 downto 0) => di_C(15 downto 0),
      \do_A_reg_reg[15]_0\(9 downto 0) => do_A_reg(15 downto 6),
      \do_B_reg_reg[15]_0\(15 downto 0) => do_B_reg(15 downto 0),
      drdy_C => drdy_C,
      drdy_i => drdy_i,
      drdy_rd_ack_i_d1 => drdy_rd_ack_i_d1,
      drdy_rd_ack_i_d1_reg => Inst_drp_arbiter_n_11,
      drdy_rd_ack_i_d2 => drdy_rd_ack_i_d2,
      drdy_wr_ack_i_d1 => drdy_wr_ack_i_d1,
      drdy_wr_ack_i_d1_reg => Inst_drp_arbiter_n_10,
      drdy_wr_ack_i_d2 => drdy_wr_ack_i_d2,
      dwe_C => dwe_C,
      dwe_C_reg_reg_0 => dwe_C_reg_reg,
      dwe_C_reg_reg_1 => temperature_update_inst_n_9,
      hard_macro_rst_reg => \^hard_macro_rst_reg\,
      overlap_A_reg_0 => Inst_drp_arbiter_n_5,
      overlap_B_reg_0 => Inst_drp_arbiter_n_6,
      overlap_B_reg_1 => temperature_update_inst_n_4,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(15 downto 0) => s_axi_wdata(15 downto 0)
    );
alarm_0_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(1),
      Q => alarm_0_d1,
      R => '0'
    );
\alarm_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(0),
      Q => \alarm_reg_reg[14]_0\(0),
      R => reset2ip_reset
    );
\alarm_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(10),
      Q => \alarm_reg_reg[14]_0\(10),
      R => reset2ip_reset
    );
\alarm_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(11),
      Q => \alarm_reg_reg[14]_0\(11),
      R => reset2ip_reset
    );
\alarm_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(12),
      Q => \alarm_reg_reg[14]_0\(12),
      R => reset2ip_reset
    );
\alarm_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => inst_sysmon_n_30,
      Q => \alarm_reg_reg[14]_0\(13),
      R => reset2ip_reset
    );
\alarm_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => inst_sysmon_n_29,
      Q => \alarm_reg_reg[14]_0\(14),
      R => reset2ip_reset
    );
\alarm_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(1),
      Q => \alarm_reg_reg[14]_0\(1),
      R => reset2ip_reset
    );
\alarm_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(2),
      Q => \alarm_reg_reg[14]_0\(2),
      R => reset2ip_reset
    );
\alarm_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(3),
      Q => \alarm_reg_reg[14]_0\(3),
      R => reset2ip_reset
    );
\alarm_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(4),
      Q => \alarm_reg_reg[14]_0\(4),
      R => reset2ip_reset
    );
\alarm_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(5),
      Q => \alarm_reg_reg[14]_0\(5),
      R => reset2ip_reset
    );
\alarm_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(6),
      Q => \alarm_reg_reg[14]_0\(6),
      R => reset2ip_reset
    );
\alarm_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(7),
      Q => \alarm_reg_reg[14]_0\(7),
      R => reset2ip_reset
    );
\alarm_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(8),
      Q => \alarm_reg_reg[14]_0\(8),
      R => reset2ip_reset
    );
\alarm_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(9),
      Q => \alarm_reg_reg[14]_0\(9),
      R => reset2ip_reset
    );
den_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_4_in,
      Q => den_d1,
      R => '0'
    );
\do_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^d\(7),
      I1 => bus2ip_reset_active_high,
      I2 => \FSM_sequential_state_reg[1]\,
      O => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(0),
      Q => \do_reg_reg[15]_0\(0),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(10),
      Q => \do_reg_reg[15]_0\(10),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(11),
      Q => \do_reg_reg[15]_0\(11),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(12),
      Q => \do_reg_reg[15]_0\(12),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(13),
      Q => \do_reg_reg[15]_0\(13),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(14),
      Q => \do_reg_reg[15]_0\(14),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(15),
      Q => \do_reg_reg[15]_0\(15),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(1),
      Q => \do_reg_reg[15]_0\(1),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(2),
      Q => \do_reg_reg[15]_0\(2),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(3),
      Q => \do_reg_reg[15]_0\(3),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(4),
      Q => \do_reg_reg[15]_0\(4),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(5),
      Q => \do_reg_reg[15]_0\(5),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(6),
      Q => \do_reg_reg[15]_0\(6),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(7),
      Q => \do_reg_reg[15]_0\(7),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(8),
      Q => \do_reg_reg[15]_0\(8),
      R => \do_reg[15]_i_1_n_0\
    );
\do_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => do_B_reg(9),
      Q => \do_reg_reg[15]_0\(9),
      R => \do_reg[15]_i_1_n_0\
    );
drdy_rd_ack_i_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^d\(7),
      D => bus2ip_rdce(0),
      Q => drdy_rd_ack_i_d1,
      R => reset2ip_reset
    );
drdy_rd_ack_i_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^d\(7),
      D => drdy_rd_ack_i_d1,
      Q => drdy_rd_ack_i_d2,
      R => reset2ip_reset
    );
drdy_rd_ack_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Inst_drp_arbiter_n_11,
      Q => drdy_rd_ack_i,
      R => reset2ip_reset
    );
drdy_wr_ack_i_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^d\(7),
      D => bus2ip_wrce(0),
      Q => drdy_wr_ack_i_d1,
      R => reset2ip_reset
    );
drdy_wr_ack_i_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^d\(7),
      D => drdy_wr_ack_i_d1,
      Q => drdy_wr_ack_i_d2,
      R => reset2ip_reset
    );
drdy_wr_ack_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Inst_drp_arbiter_n_10,
      Q => drdy_wr_ack_i,
      R => reset2ip_reset
    );
eoc_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => status_reg_rdack,
      I1 => \^eoc_out\,
      I2 => eoc_d1,
      O => eoc_d1_i_1_n_0
    );
eoc_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => eoc_d1_i_1_n_0,
      Q => eoc_d1,
      R => reset2ip_reset
    );
eos_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => status_reg_rdack,
      I1 => \^eos_out\,
      I2 => eos_d1,
      O => eos_d1_i_1_n_0
    );
eos_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => eos_d1_i_1_n_0,
      Q => eos_d1,
      R => reset2ip_reset
    );
hard_macro_rst_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => hard_macro_rst_reg_reg_0,
      Q => \^hard_macro_rst_reg\,
      R => reset2ip_reset
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg(7)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg(6)
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(13)
    );
i_100: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg2(7)
    );
i_101: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg2(6)
    );
i_102: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg2(5)
    );
i_103: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg2(4)
    );
i_104: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg2(3)
    );
i_105: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg2(2)
    );
i_106: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg2(1)
    );
i_107: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg2(0)
    );
i_108: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(15)
    );
i_109: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(14)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(12)
    );
i_110: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(13)
    );
i_111: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(12)
    );
i_112: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(11)
    );
i_113: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(10)
    );
i_114: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(9)
    );
i_115: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(8)
    );
i_116: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(7)
    );
i_117: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(6)
    );
i_118: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(5)
    );
i_119: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(4)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(11)
    );
i_120: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(3)
    );
i_121: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(2)
    );
i_122: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(1)
    );
i_123: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg2(0)
    );
i_124: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dwe_C_slave0_reg2
    );
i_125: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg2(7)
    );
i_126: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg2(6)
    );
i_127: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg2(5)
    );
i_128: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg2(4)
    );
i_129: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg2(3)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(10)
    );
i_130: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg2(2)
    );
i_131: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg2(1)
    );
i_132: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg2(0)
    );
i_133: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(15)
    );
i_134: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(14)
    );
i_135: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(13)
    );
i_136: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(12)
    );
i_137: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(11)
    );
i_138: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(10)
    );
i_139: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(9)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(9)
    );
i_140: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(8)
    );
i_141: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(7)
    );
i_142: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(6)
    );
i_143: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(5)
    );
i_144: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(4)
    );
i_145: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(3)
    );
i_146: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(2)
    );
i_147: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(1)
    );
i_148: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg2(0)
    );
i_149: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dwe_C_slave1_reg2
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(8)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(7)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(6)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(5)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(4)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg(5)
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(3)
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(2)
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(1)
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(0)
    );
i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dwe_C_master_reg
    );
i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg(7)
    );
i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg(6)
    );
i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg(5)
    );
i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg(4)
    );
i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg(3)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg(4)
    );
i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg(2)
    );
i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg(1)
    );
i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave0_reg(0)
    );
i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(15)
    );
i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(14)
    );
i_35: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(13)
    );
i_36: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(12)
    );
i_37: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(11)
    );
i_38: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(10)
    );
i_39: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(9)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg(3)
    );
i_40: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(8)
    );
i_41: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(7)
    );
i_42: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(6)
    );
i_43: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(5)
    );
i_44: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(4)
    );
i_45: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(3)
    );
i_46: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(2)
    );
i_47: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(1)
    );
i_48: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave0_reg(0)
    );
i_49: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dwe_C_slave0_reg
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg(2)
    );
i_50: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg(7)
    );
i_51: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg(6)
    );
i_52: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg(5)
    );
i_53: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg(4)
    );
i_54: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg(3)
    );
i_55: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg(2)
    );
i_56: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg(1)
    );
i_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_slave1_reg(0)
    );
i_58: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(15)
    );
i_59: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(14)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg(1)
    );
i_60: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(13)
    );
i_61: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(12)
    );
i_62: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(11)
    );
i_63: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(10)
    );
i_64: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(9)
    );
i_65: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(8)
    );
i_66: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(7)
    );
i_67: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(6)
    );
i_68: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(5)
    );
i_69: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(4)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg(0)
    );
i_70: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(3)
    );
i_71: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(2)
    );
i_72: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(1)
    );
i_73: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_slave1_reg(0)
    );
i_74: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dwe_C_slave1_reg
    );
i_75: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg2(7)
    );
i_76: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg2(6)
    );
i_77: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg2(5)
    );
i_78: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg2(4)
    );
i_79: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg2(3)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(15)
    );
i_80: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg2(2)
    );
i_81: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg2(1)
    );
i_82: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => daddr_C_master_reg2(0)
    );
i_83: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(15)
    );
i_84: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(14)
    );
i_85: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(13)
    );
i_86: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(12)
    );
i_87: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(11)
    );
i_88: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(10)
    );
i_89: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(9)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg(14)
    );
i_90: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(8)
    );
i_91: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(7)
    );
i_92: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(6)
    );
i_93: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(5)
    );
i_94: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(4)
    );
i_95: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(3)
    );
i_96: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(2)
    );
i_97: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(1)
    );
i_98: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => di_C_master_reg2(0)
    );
i_99: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => dwe_C_master_reg2
    );
inst_sysmon: unisim.vcomponents.SYSMONE4
    generic map(
      COMMON_N_SOURCE => X"FFFF",
      INIT_40 => X"0000",
      INIT_41 => X"2F9F",
      INIT_42 => X"1400",
      INIT_43 => X"200F",
      INIT_44 => X"0000",
      INIT_45 => X"EEDC",
      INIT_46 => X"0000",
      INIT_47 => X"0000",
      INIT_48 => X"0100",
      INIT_49 => X"0000",
      INIT_4A => X"0000",
      INIT_4B => X"0000",
      INIT_4C => X"0000",
      INIT_4D => X"0000",
      INIT_4E => X"0000",
      INIT_4F => X"0000",
      INIT_50 => X"B794",
      INIT_51 => X"4E81",
      INIT_52 => X"A147",
      INIT_53 => X"CBA3",
      INIT_54 => X"AB02",
      INIT_55 => X"4963",
      INIT_56 => X"9555",
      INIT_57 => X"B00A",
      INIT_58 => X"4E81",
      INIT_59 => X"4963",
      INIT_5A => X"4963",
      INIT_5B => X"9A74",
      INIT_5C => X"4963",
      INIT_5D => X"451E",
      INIT_5E => X"451E",
      INIT_5F => X"91EB",
      INIT_60 => X"4D39",
      INIT_61 => X"4DA7",
      INIT_62 => X"9A74",
      INIT_63 => X"9A74",
      INIT_64 => X"0000",
      INIT_65 => X"0000",
      INIT_66 => X"0000",
      INIT_67 => X"0000",
      INIT_68 => X"4C5E",
      INIT_69 => X"4BF2",
      INIT_6A => X"98BF",
      INIT_6B => X"98BF",
      INIT_6C => X"0000",
      INIT_6D => X"0000",
      INIT_6E => X"0000",
      INIT_6F => X"0000",
      INIT_70 => X"0000",
      INIT_71 => X"0000",
      INIT_72 => X"0000",
      INIT_73 => X"0000",
      INIT_74 => X"0000",
      INIT_75 => X"0000",
      INIT_76 => X"0000",
      INIT_77 => X"0000",
      INIT_78 => X"0000",
      INIT_79 => X"0000",
      INIT_7A => X"0000",
      INIT_7B => X"0000",
      INIT_7C => X"0000",
      INIT_7D => X"0000",
      INIT_7E => X"0000",
      INIT_7F => X"0000",
      IS_CONVSTCLK_INVERTED => '0',
      IS_DCLK_INVERTED => '0',
      SIM_DEVICE => "ZYNQ_ULTRASCALE",
      SIM_MONITOR_FILE => "design.dat",
      SYSMON_VUSER0_BANK => 0,
      SYSMON_VUSER0_MONITOR => "NONE",
      SYSMON_VUSER1_BANK => 0,
      SYSMON_VUSER1_MONITOR => "NONE",
      SYSMON_VUSER2_BANK => 0,
      SYSMON_VUSER2_MONITOR => "NONE",
      SYSMON_VUSER3_BANK => 0,
      SYSMON_VUSER3_MONITOR => "NONE"
    )
        port map (
      ADC_DATA(15 downto 0) => NLW_inst_sysmon_ADC_DATA_UNCONNECTED(15 downto 0),
      ALM(15) => inst_sysmon_n_27,
      ALM(14) => inst_sysmon_n_28,
      ALM(13) => inst_sysmon_n_29,
      ALM(12) => inst_sysmon_n_30,
      ALM(11 downto 0) => \^inst_sysmon_0\(12 downto 1),
      BUSY => \^d\(6),
      CHANNEL(5 downto 0) => \^d\(5 downto 0),
      CONVST => '0',
      CONVSTCLK => '0',
      DADDR(7 downto 0) => daddr_C(7 downto 0),
      DCLK => s_axi_aclk,
      DEN => den_C,
      DI(15 downto 0) => di_C(15 downto 0),
      DO(15 downto 0) => do_C(15 downto 0),
      DRDY => drdy_C,
      DWE => dwe_C,
      EOC => \^eoc_out\,
      EOS => \^eos_out\,
      I2C_SCLK => '0',
      I2C_SCLK_TS => NLW_inst_sysmon_I2C_SCLK_TS_UNCONNECTED,
      I2C_SDA => '0',
      I2C_SDA_TS => NLW_inst_sysmon_I2C_SDA_TS_UNCONNECTED,
      JTAGBUSY => jtagbusy_i,
      JTAGLOCKED => \^d\(7),
      JTAGMODIFIED => \^jtagmodified_i\,
      MUXADDR(4 downto 0) => NLW_inst_sysmon_MUXADDR_UNCONNECTED(4 downto 0),
      OT => \^inst_sysmon_0\(0),
      RESET => reset,
      SMBALERT_TS => NLW_inst_sysmon_SMBALERT_TS_UNCONNECTED,
      VAUXN(15 downto 0) => B"0000000000000000",
      VAUXP(15 downto 0) => B"0000000000000000",
      VN => '0',
      VP => '0'
    );
jtagmodified_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => drdy_rd_ack_i,
      I1 => \^jtagmodified_i\,
      I2 => jtagmodified_d1,
      I3 => bus2ip_reset_active_high,
      I4 => \FSM_sequential_state_reg[1]\,
      O => jtagmodified_d1_i_1_n_0
    );
jtagmodified_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => jtagmodified_d1_i_1_n_0,
      Q => jtagmodified_d1,
      R => '0'
    );
local_reg_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => local_rdce_or_reduce,
      Q => local_reg_rdack_d1,
      R => reset2ip_reset
    );
local_reg_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => local_reg_rdack0,
      Q => local_reg_rdack,
      R => reset2ip_reset
    );
local_reg_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => convst_rst_wrce_or_reduce,
      Q => local_reg_wrack_d1,
      R => reset2ip_reset
    );
local_reg_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => local_reg_wrack0,
      Q => local_reg_wrack,
      R => reset2ip_reset
    );
ot_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^inst_sysmon_0\(0),
      Q => ot_d1,
      R => '0'
    );
\status_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => jtagmodified_d1,
      I1 => \^jtagmodified_i\,
      O => \^d\(8)
    );
\status_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^eoc_out\,
      I1 => eoc_d1,
      O => p_5_out(6)
    );
\status_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^eos_out\,
      I1 => eos_d1,
      O => p_5_out(7)
    );
status_reg_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rdce(1),
      Q => status_reg_rdack_d1,
      R => reset2ip_reset
    );
status_reg_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => status_reg_rdack0,
      Q => status_reg_rdack,
      R => reset2ip_reset
    );
\status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => \status_reg_reg[11]_0\(0),
      R => reset2ip_reset
    );
\status_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(8),
      Q => \status_reg_reg[11]_0\(10),
      R => reset2ip_reset
    );
\status_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => jtagbusy_i,
      Q => \status_reg_reg[11]_0\(11),
      R => reset2ip_reset
    );
\status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(1),
      Q => \status_reg_reg[11]_0\(1),
      R => reset2ip_reset
    );
\status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(2),
      Q => \status_reg_reg[11]_0\(2),
      R => reset2ip_reset
    );
\status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(3),
      Q => \status_reg_reg[11]_0\(3),
      R => reset2ip_reset
    );
\status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(4),
      Q => \status_reg_reg[11]_0\(4),
      R => reset2ip_reset
    );
\status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(5),
      Q => \status_reg_reg[11]_0\(5),
      R => reset2ip_reset
    );
\status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_5_out(6),
      Q => \status_reg_reg[11]_0\(6),
      R => reset2ip_reset
    );
\status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_5_out(7),
      Q => \status_reg_reg[11]_0\(7),
      R => reset2ip_reset
    );
\status_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(6),
      Q => \status_reg_reg[11]_0\(8),
      R => reset2ip_reset
    );
\status_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(7),
      Q => \status_reg_reg[11]_0\(9),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => wait_cycle(0),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(12),
      Q => wait_cycle(10),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(13),
      Q => wait_cycle(11),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(14),
      Q => wait_cycle(12),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(15),
      Q => wait_cycle(13),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(16),
      Q => wait_cycle(14),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(17),
      Q => wait_cycle(15),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => wait_cycle(1),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => wait_cycle(2),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => wait_cycle(3),
      S => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => wait_cycle(4),
      R => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => wait_cycle(5),
      S => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => wait_cycle(6),
      S => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => wait_cycle(7),
      S => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => wait_cycle(8),
      S => reset2ip_reset
    );
\temp_rd_wait_cycle_reg_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => wait_cycle(9),
      S => reset2ip_reset
    );
temperature_update_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_temperature_update
     port map (
      AR(0) => reset,
      D(9 downto 0) => do_A_reg(15 downto 6),
      E(0) => Inst_drp_arbiter_n_7,
      \FSM_onehot_state_reg[2]_0\(0) => temperature_update_inst_n_11,
      \FSM_sequential_state_reg[0]\ => dwe_C_reg_reg,
      \FSM_sequential_state_reg[1]\ => \^d\(7),
      \FSM_sequential_state_reg[1]_0\ => Inst_drp_arbiter_n_5,
      \FSM_sequential_state_reg[1]_1\ => Inst_drp_arbiter_n_6,
      Q(15 downto 0) => wait_cycle(15 downto 0),
      bbusy_A => bbusy_A,
      busy_o_reg_0 => temperature_update_inst_n_4,
      busy_o_reg_1 => temperature_update_inst_n_6,
      busy_o_reg_2(0) => temperature_update_inst_n_8,
      den_A => den_A,
      den_C_reg_reg => Inst_drp_arbiter_n_1,
      den_C_reg_reg_0 => Inst_drp_arbiter_n_13,
      den_d1 => den_d1,
      den_d1_reg => temperature_update_inst_n_2,
      den_o_reg_0 => temperature_update_inst_n_10,
      den_reg => den_reg,
      den_reg_reg => Inst_drp_arbiter_n_14,
      den_reg_reg_0 => Inst_drp_arbiter_n_12,
      den_reg_reg_1(1 downto 0) => \state__0\(1 downto 0),
      drdy_C => drdy_C,
      drdy_i => drdy_i,
      inst_sysmon => temperature_update_inst_n_5,
      inst_sysmon_0 => temperature_update_inst_n_7,
      inst_sysmon_1 => temperature_update_inst_n_9,
      s_axi_aclk => s_axi_aclk,
      temp_out(9 downto 0) => temp_out(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_lite_ipif is
  port (
    \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 18 downto 0 );
    convst_rst_wrce_or_reduce : out STD_LOGIC;
    local_reg_wrack0 : out STD_LOGIC;
    local_rdce_or_reduce : out STD_LOGIC;
    local_reg_rdack0 : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 0 to 0 );
    status_reg_rdack0 : out STD_LOGIC;
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_4_in : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    Intr2Bus_RdAck0 : out STD_LOGIC;
    irpt_wrack_d1_reg : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    dummy_bus2ip_rdce_intr : out STD_LOGIC;
    dummy_intr_reg_rdack0 : out STD_LOGIC;
    dummy_bus2ip_wrce_intr : out STD_LOGIC;
    dummy_intr_reg_wrack0 : out STD_LOGIC;
    dummy_local_reg_rdack_d10 : out STD_LOGIC;
    dummy_local_reg_rdack0 : out STD_LOGIC;
    dummy_local_reg_wrack_d10 : out STD_LOGIC;
    dummy_local_reg_wrack0 : out STD_LOGIC;
    rst_ip2bus_rdack0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb_2_sp_1 : out STD_LOGIC;
    s_axi_wdata_0_sp_1 : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    bus2ip_reset_active_high : in STD_LOGIC;
    ip2bus_error : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\ : in STD_LOGIC;
    p_1_in46_in : in STD_LOGIC;
    p_1_in43_in : in STD_LOGIC;
    p_1_in40_in : in STD_LOGIC;
    p_1_in37_in : in STD_LOGIC;
    p_1_in34_in : in STD_LOGIC;
    p_1_in31_in : in STD_LOGIC;
    p_1_in28_in : in STD_LOGIC;
    p_1_in25_in : in STD_LOGIC;
    p_1_in22_in : in STD_LOGIC;
    p_1_in19_in : in STD_LOGIC;
    p_1_in16_in : in STD_LOGIC;
    p_1_in13_in : in STD_LOGIC;
    p_1_in10_in : in STD_LOGIC;
    p_1_in7_in : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    jtaglocked_i : in STD_LOGIC;
    p_1_in1_in : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    local_reg_wrack_d1 : in STD_LOGIC;
    local_reg_rdack_d1 : in STD_LOGIC;
    status_reg_rdack_d1 : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    dummy_intr_reg_rdack_d1 : in STD_LOGIC;
    dummy_intr_reg_wrack_d1 : in STD_LOGIC;
    dummy_local_reg_rdack_d1 : in STD_LOGIC;
    dummy_local_reg_wrack_d1 : in STD_LOGIC;
    rst_ip2bus_rdack_d1 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    hard_macro_rst_reg : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_lite_ipif is
  signal s_axi_wdata_0_sn_1 : STD_LOGIC;
  signal s_axi_wstrb_2_sn_1 : STD_LOGIC;
begin
  s_axi_wdata_0_sp_1 <= s_axi_wdata_0_sn_1;
  s_axi_wstrb_2_sp_1 <= s_axi_wstrb_2_sn_1;
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      D(18 downto 0) => D(18 downto 0),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\ => \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(0) => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(17 downto 0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(17 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0\(0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0\(0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(15 downto 0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(15 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(14 downto 0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(14 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(11 downto 0) => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(11 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\ => \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\,
      Intr2Bus_RdAck0 => Intr2Bus_RdAck0,
      Q(7 downto 0) => Q(7 downto 0),
      bus2ip_rdce(2 downto 0) => bus2ip_rdce(2 downto 0),
      bus2ip_reset_active_high => bus2ip_reset_active_high,
      bus2ip_wrce(0) => bus2ip_wrce(0),
      convst_rst_wrce_or_reduce => convst_rst_wrce_or_reduce,
      dummy_bus2ip_rdce_intr => dummy_bus2ip_rdce_intr,
      dummy_bus2ip_wrce_intr => dummy_bus2ip_wrce_intr,
      dummy_intr_reg_rdack0 => dummy_intr_reg_rdack0,
      dummy_intr_reg_rdack_d1 => dummy_intr_reg_rdack_d1,
      dummy_intr_reg_wrack0 => dummy_intr_reg_wrack0,
      dummy_intr_reg_wrack_d1 => dummy_intr_reg_wrack_d1,
      dummy_local_reg_rdack0 => dummy_local_reg_rdack0,
      dummy_local_reg_rdack_d1 => dummy_local_reg_rdack_d1,
      dummy_local_reg_rdack_d10 => dummy_local_reg_rdack_d10,
      dummy_local_reg_wrack0 => dummy_local_reg_wrack0,
      dummy_local_reg_wrack_d1 => dummy_local_reg_wrack_d1,
      dummy_local_reg_wrack_d10 => dummy_local_reg_wrack_d10,
      hard_macro_rst_reg => hard_macro_rst_reg,
      interrupt_wrce_strb => interrupt_wrce_strb,
      ip2bus_error => ip2bus_error,
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_wrack => ip2bus_wrack,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => irpt_wrack_d1_reg,
      jtaglocked_i => jtaglocked_i,
      local_rdce_or_reduce => local_rdce_or_reduce,
      local_reg_rdack0 => local_reg_rdack0,
      local_reg_rdack_d1 => local_reg_rdack_d1,
      local_reg_wrack0 => local_reg_wrack0,
      local_reg_wrack_d1 => local_reg_wrack_d1,
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in22_in => p_1_in22_in,
      p_1_in25_in => p_1_in25_in,
      p_1_in28_in => p_1_in28_in,
      p_1_in31_in => p_1_in31_in,
      p_1_in34_in => p_1_in34_in,
      p_1_in37_in => p_1_in37_in,
      p_1_in40_in => p_1_in40_in,
      p_1_in43_in => p_1_in43_in,
      p_1_in46_in => p_1_in46_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_4_in => p_4_in,
      reset_trig0 => reset_trig0,
      rst_ip2bus_rdack0 => rst_ip2bus_rdack0,
      rst_ip2bus_rdack_d1 => rst_ip2bus_rdack_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(18 downto 0) => s_axi_rdata(18 downto 0),
      \s_axi_rdata_i_reg[31]_0\(18 downto 0) => \s_axi_rdata_i_reg[31]\(18 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      s_axi_wdata_0_sp_1 => s_axi_wdata_0_sn_1,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wstrb_2_sp_1 => s_axi_wstrb_2_sn_1,
      s_axi_wvalid => s_axi_wvalid,
      status_reg_rdack0 => status_reg_rdack0,
      status_reg_rdack_d1 => status_reg_rdack_d1,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    vp : in STD_LOGIC;
    vn : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    temp_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    alarm_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc : entity is "virtex7";
  attribute C_INCLUDE_INTR : integer;
  attribute C_INCLUDE_INTR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc : entity is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc : entity is "hardware_system_management_wiz_0_0_axi_xadc";
  attribute C_SIM_MONITOR_FILE : string;
  attribute C_SIM_MONITOR_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc : entity is "design.txt";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc : entity is 13;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc : entity is 32;
  attribute hdl : string;
  attribute hdl of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc : entity is "VHDL";
  attribute ip_group : string;
  attribute ip_group of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc : entity is "LOGICORE";
  attribute iptype : string;
  attribute iptype of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc : entity is "PERIPHERAL";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_0 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_44 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_49 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_63 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_64 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_65 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_12 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_13 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_14 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_15 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_17 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_18 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_19 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_20 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_21 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_22 : STD_LOGIC;
  signal AXI_SYSMON_CORE_I_n_23 : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_26\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_31\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_36\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_41\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal Intr2Bus_RdAck0 : STD_LOGIC;
  signal SOFT_RESET_I_n_2 : STD_LOGIC;
  signal \^alarm_out\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal alarm_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal bus2ip_rdce : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal bus2ip_reset_active_high : STD_LOGIC;
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 0 to 0 );
  signal convst_rst_wrce_or_reduce : STD_LOGIC;
  signal do_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dummy_bus2ip_rdce_intr : STD_LOGIC;
  signal dummy_bus2ip_wrce_intr : STD_LOGIC;
  signal dummy_intr_reg_rdack : STD_LOGIC;
  signal dummy_intr_reg_rdack0 : STD_LOGIC;
  signal dummy_intr_reg_rdack_d1 : STD_LOGIC;
  signal dummy_intr_reg_wrack : STD_LOGIC;
  signal dummy_intr_reg_wrack0 : STD_LOGIC;
  signal dummy_intr_reg_wrack_d1 : STD_LOGIC;
  signal dummy_local_reg_rdack : STD_LOGIC;
  signal dummy_local_reg_rdack0 : STD_LOGIC;
  signal dummy_local_reg_rdack_d1 : STD_LOGIC;
  signal dummy_local_reg_rdack_d10 : STD_LOGIC;
  signal dummy_local_reg_wrack : STD_LOGIC;
  signal dummy_local_reg_wrack0 : STD_LOGIC;
  signal dummy_local_reg_wrack_d1 : STD_LOGIC;
  signal dummy_local_reg_wrack_d10 : STD_LOGIC;
  signal \^eoc_out\ : STD_LOGIC;
  signal \^eos_out\ : STD_LOGIC;
  signal hard_macro_rst_reg : STD_LOGIC;
  signal interrupt_status_i : STD_LOGIC_VECTOR ( 8 to 9 );
  signal interrupt_wrce_strb : STD_LOGIC;
  signal intr_ip2bus_data : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intr_ip2bus_rdack : STD_LOGIC;
  signal intr_ip2bus_wrack : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ip2bus_data_int1 : STD_LOGIC_VECTOR ( 14 to 31 );
  signal ip2bus_error : STD_LOGIC;
  signal ip2bus_error_int1 : STD_LOGIC;
  signal ip2bus_rdack : STD_LOGIC;
  signal ip2bus_rdack_int1 : STD_LOGIC;
  signal ip2bus_wrack : STD_LOGIC;
  signal ip2bus_wrack_int1 : STD_LOGIC;
  signal ipif_glbl_irpt_enable_reg : STD_LOGIC;
  signal irpt_rdack : STD_LOGIC;
  signal irpt_rdack_d1 : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal irpt_wrack_d11 : STD_LOGIC;
  signal jtag_modified_info : STD_LOGIC;
  signal jtaglocked_i : STD_LOGIC;
  signal jtagmodified_i : STD_LOGIC;
  signal local_rdce_or_reduce : STD_LOGIC;
  signal local_reg_rdack0 : STD_LOGIC;
  signal local_reg_rdack_d1 : STD_LOGIC;
  signal local_reg_wrack0 : STD_LOGIC;
  signal local_reg_wrack_d1 : STD_LOGIC;
  signal ot_i : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in20_in : STD_LOGIC;
  signal p_0_in23_in : STD_LOGIC;
  signal p_0_in29_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in32_in : STD_LOGIC;
  signal p_0_in35_in : STD_LOGIC;
  signal p_0_in38_in : STD_LOGIC;
  signal p_0_in44_in : STD_LOGIC;
  signal p_0_in47_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in10_in : STD_LOGIC;
  signal p_1_in13_in : STD_LOGIC;
  signal p_1_in16_in : STD_LOGIC;
  signal p_1_in19_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in22_in : STD_LOGIC;
  signal p_1_in25_in : STD_LOGIC;
  signal p_1_in28_in : STD_LOGIC;
  signal p_1_in31_in : STD_LOGIC;
  signal p_1_in34_in : STD_LOGIC;
  signal p_1_in37_in : STD_LOGIC;
  signal p_1_in40_in : STD_LOGIC;
  signal p_1_in43_in : STD_LOGIC;
  signal p_1_in46_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_1_in7_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal reset2ip_reset : STD_LOGIC;
  signal reset_trig0 : STD_LOGIC;
  signal rst_ip2bus_rdack : STD_LOGIC;
  signal rst_ip2bus_rdack0 : STD_LOGIC;
  signal rst_ip2bus_rdack_d1 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal status_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal status_reg_rdack0 : STD_LOGIC;
  signal status_reg_rdack_d1 : STD_LOGIC;
  signal sw_rst_cond : STD_LOGIC;
  signal sw_rst_cond_d1 : STD_LOGIC;
  signal temp_rd_wait_cycle_reg : STD_LOGIC;
  signal wrack : STD_LOGIC;
  attribute sigis : string;
  attribute sigis of ip2intc_irpt : signal is "INTR_LEVEL_HIGH";
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute sigis of s_axi_aresetn : signal is "Rst";
begin
  alarm_out(15) <= \<const0>\;
  alarm_out(14) <= \<const0>\;
  alarm_out(13) <= \<const0>\;
  alarm_out(12) <= \<const0>\;
  alarm_out(11) <= \<const0>\;
  alarm_out(10) <= \<const0>\;
  alarm_out(9) <= \<const0>\;
  alarm_out(8) <= \<const0>\;
  alarm_out(7) <= \^alarm_out\(7);
  alarm_out(6) <= \<const0>\;
  alarm_out(5) <= \<const0>\;
  alarm_out(4) <= \<const0>\;
  alarm_out(3) <= \<const0>\;
  alarm_out(2) <= \<const0>\;
  alarm_out(1) <= \<const0>\;
  alarm_out(0) <= \<const0>\;
  eoc_out <= \^eoc_out\;
  eos_out <= \^eos_out\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17 downto 0) <= \^s_axi_rdata\(17 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
AXI_LITE_IPIF_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_44,
      D(18) => intr_ip2bus_data(0),
      D(17) => ip2bus_data_int1(14),
      D(16) => ip2bus_data_int1(15),
      D(15) => ip2bus_data_int1(16),
      D(14) => ip2bus_data_int1(17),
      D(13) => ip2bus_data_int1(18),
      D(12) => ip2bus_data_int1(19),
      D(11) => ip2bus_data_int1(20),
      D(10) => ip2bus_data_int1(21),
      D(9) => ip2bus_data_int1(22),
      D(8) => ip2bus_data_int1(23),
      D(7) => ip2bus_data_int1(24),
      D(6) => ip2bus_data_int1(25),
      D(5) => ip2bus_data_int1(26),
      D(4) => ip2bus_data_int1(27),
      D(3) => ip2bus_data_int1(28),
      D(2) => ip2bus_data_int1(29),
      D(1) => ip2bus_data_int1(30),
      D(0) => ip2bus_data_int1(31),
      E(0) => irpt_wrack_d11,
      \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\ => AXI_LITE_IPIF_I_n_0,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\(0) => temp_rd_wait_cycle_reg,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(17) => p_0_in47_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(16) => p_0_in44_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(15) => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_26\,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(14) => p_0_in38_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(13) => p_0_in35_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(12) => p_0_in32_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(11) => p_0_in29_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(10) => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_31\,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(9) => p_0_in23_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(8) => p_0_in20_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(7) => p_0_in17_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(6) => p_0_in14_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(5) => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_36\,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(4) => p_0_in8_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(3) => p_0_in5_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(2) => p_0_in2_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(1) => p_0_in0_in,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\(0) => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_41\,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]_0\(0) => jtag_modified_info,
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\(15 downto 0) => do_reg(15 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\(14 downto 0) => alarm_reg(14 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\(11 downto 0) => status_reg(11 downto 0),
      \INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\ => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1\,
      Intr2Bus_RdAck0 => Intr2Bus_RdAck0,
      Q(7 downto 0) => bus2ip_addr(9 downto 2),
      bus2ip_rdce(2 downto 1) => bus2ip_rdce(24 downto 23),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      bus2ip_reset_active_high => bus2ip_reset_active_high,
      bus2ip_wrce(0) => bus2ip_wrce(0),
      convst_rst_wrce_or_reduce => convst_rst_wrce_or_reduce,
      dummy_bus2ip_rdce_intr => dummy_bus2ip_rdce_intr,
      dummy_bus2ip_wrce_intr => dummy_bus2ip_wrce_intr,
      dummy_intr_reg_rdack0 => dummy_intr_reg_rdack0,
      dummy_intr_reg_rdack_d1 => dummy_intr_reg_rdack_d1,
      dummy_intr_reg_wrack0 => dummy_intr_reg_wrack0,
      dummy_intr_reg_wrack_d1 => dummy_intr_reg_wrack_d1,
      dummy_local_reg_rdack0 => dummy_local_reg_rdack0,
      dummy_local_reg_rdack_d1 => dummy_local_reg_rdack_d1,
      dummy_local_reg_rdack_d10 => dummy_local_reg_rdack_d10,
      dummy_local_reg_wrack0 => dummy_local_reg_wrack0,
      dummy_local_reg_wrack_d1 => dummy_local_reg_wrack_d1,
      dummy_local_reg_wrack_d10 => dummy_local_reg_wrack_d10,
      hard_macro_rst_reg => hard_macro_rst_reg,
      interrupt_wrce_strb => interrupt_wrce_strb,
      ip2bus_error => ip2bus_error,
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_wrack => ip2bus_wrack,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => AXI_LITE_IPIF_I_n_49,
      jtaglocked_i => jtaglocked_i,
      local_rdce_or_reduce => local_rdce_or_reduce,
      local_reg_rdack0 => local_reg_rdack0,
      local_reg_rdack_d1 => local_reg_rdack_d1,
      local_reg_wrack0 => local_reg_wrack0,
      local_reg_wrack_d1 => local_reg_wrack_d1,
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in22_in => p_1_in22_in,
      p_1_in25_in => p_1_in25_in,
      p_1_in28_in => p_1_in28_in,
      p_1_in31_in => p_1_in31_in,
      p_1_in34_in => p_1_in34_in,
      p_1_in37_in => p_1_in37_in,
      p_1_in40_in => p_1_in40_in,
      p_1_in43_in => p_1_in43_in,
      p_1_in46_in => p_1_in46_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      p_4_in => p_4_in,
      reset_trig0 => reset_trig0,
      rst_ip2bus_rdack0 => rst_ip2bus_rdack0,
      rst_ip2bus_rdack_d1 => rst_ip2bus_rdack_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(10 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(10 downto 2),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(18) => \^s_axi_rdata\(31),
      s_axi_rdata(17 downto 0) => \^s_axi_rdata\(17 downto 0),
      \s_axi_rdata_i_reg[31]\(18) => ip2bus_data(31),
      \s_axi_rdata_i_reg[31]\(17 downto 0) => ip2bus_data(17 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(4) => s_axi_wdata(31),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      \s_axi_wdata[31]\ => AXI_LITE_IPIF_I_n_65,
      s_axi_wdata_0_sp_1 => AXI_LITE_IPIF_I_n_64,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wstrb_2_sp_1 => AXI_LITE_IPIF_I_n_63,
      s_axi_wvalid => s_axi_wvalid,
      status_reg_rdack0 => status_reg_rdack0,
      status_reg_rdack_d1 => status_reg_rdack_d1,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
AXI_SYSMON_CORE_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_xadc_core_drp
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(8) => jtag_modified_info,
      D(7) => jtaglocked_i,
      D(6) => busy_out,
      D(5 downto 0) => channel_out(5 downto 0),
      E(0) => temp_rd_wait_cycle_reg,
      \FSM_sequential_state_reg[1]\ => SOFT_RESET_I_n_2,
      \INTR_CTRLR_GEN_I.ip2bus_error_reg\ => AXI_LITE_IPIF_I_n_63,
      \INTR_CTRLR_GEN_I.ip2bus_error_reg_0\ => AXI_LITE_IPIF_I_n_44,
      Q(7 downto 0) => bus2ip_addr(9 downto 2),
      \alarm_reg_reg[14]_0\(14 downto 0) => alarm_reg(14 downto 0),
      bus2ip_rdce(1) => bus2ip_rdce(23),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      bus2ip_reset_active_high => bus2ip_reset_active_high,
      bus2ip_wrce(0) => bus2ip_wrce(0),
      convst_rst_wrce_or_reduce => convst_rst_wrce_or_reduce,
      \do_reg_reg[15]_0\(15 downto 0) => do_reg(15 downto 0),
      dummy_intr_reg_rdack => dummy_intr_reg_rdack,
      dummy_intr_reg_wrack => dummy_intr_reg_wrack,
      dummy_local_reg_rdack => dummy_local_reg_rdack,
      dummy_local_reg_wrack => dummy_local_reg_wrack,
      dwe_C_reg_reg => AXI_LITE_IPIF_I_n_0,
      eoc_out => \^eoc_out\,
      eos_out => \^eos_out\,
      hard_macro_rst_reg => hard_macro_rst_reg,
      hard_macro_rst_reg_reg_0 => AXI_LITE_IPIF_I_n_64,
      inst_sysmon_0(12) => AXI_SYSMON_CORE_I_n_12,
      inst_sysmon_0(11) => AXI_SYSMON_CORE_I_n_13,
      inst_sysmon_0(10) => AXI_SYSMON_CORE_I_n_14,
      inst_sysmon_0(9) => AXI_SYSMON_CORE_I_n_15,
      inst_sysmon_0(8) => \^alarm_out\(7),
      inst_sysmon_0(7) => AXI_SYSMON_CORE_I_n_17,
      inst_sysmon_0(6) => AXI_SYSMON_CORE_I_n_18,
      inst_sysmon_0(5) => AXI_SYSMON_CORE_I_n_19,
      inst_sysmon_0(4) => AXI_SYSMON_CORE_I_n_20,
      inst_sysmon_0(3) => AXI_SYSMON_CORE_I_n_21,
      inst_sysmon_0(2) => AXI_SYSMON_CORE_I_n_22,
      inst_sysmon_0(1) => AXI_SYSMON_CORE_I_n_23,
      inst_sysmon_0(0) => ot_i,
      interrupt_status_i(1) => interrupt_status_i(8),
      interrupt_status_i(0) => interrupt_status_i(9),
      intr_ip2bus_rdack => intr_ip2bus_rdack,
      intr_ip2bus_wrack => intr_ip2bus_wrack,
      ip2bus_error_int1 => ip2bus_error_int1,
      ip2bus_rdack_int1 => ip2bus_rdack_int1,
      ip2bus_wrack_int1 => ip2bus_wrack_int1,
      jtagmodified_i => jtagmodified_i,
      local_rdce_or_reduce => local_rdce_or_reduce,
      local_reg_rdack0 => local_reg_rdack0,
      local_reg_rdack_d1 => local_reg_rdack_d1,
      local_reg_wrack0 => local_reg_wrack0,
      local_reg_wrack_d1 => local_reg_wrack_d1,
      p_4_in => p_4_in,
      reset2ip_reset => reset2ip_reset,
      rst_ip2bus_rdack => rst_ip2bus_rdack,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(17 downto 0) => s_axi_wdata(17 downto 0),
      status_reg_rdack0 => status_reg_rdack0,
      status_reg_rdack_d1 => status_reg_rdack_d1,
      \status_reg_reg[11]_0\(11 downto 0) => status_reg(11 downto 0),
      temp_out(9 downto 0) => temp_out(9 downto 0),
      wrack => wrack
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_interrupt_control
     port map (
      D(0) => jtaglocked_i,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(11) => AXI_SYSMON_CORE_I_n_12,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(10) => AXI_SYSMON_CORE_I_n_13,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(9) => AXI_SYSMON_CORE_I_n_14,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(8) => AXI_SYSMON_CORE_I_n_15,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(7) => AXI_SYSMON_CORE_I_n_17,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(6) => AXI_SYSMON_CORE_I_n_18,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(5) => AXI_SYSMON_CORE_I_n_19,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(4) => AXI_SYSMON_CORE_I_n_20,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(3) => AXI_SYSMON_CORE_I_n_21,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(2) => AXI_SYSMON_CORE_I_n_22,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(1) => AXI_SYSMON_CORE_I_n_23,
      \DO_IRPT_INPUT[17].GEN_POS_EDGE_DETECT.irpt_dly1_reg_0\(0) => ot_i,
      E(0) => irpt_wrack_d11,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_1\,
      \GEN_IP_IRPT_STATUS_REG[17].GEN_REG_STATUS.ip_irpt_status_reg_reg[17]_0\ => AXI_LITE_IPIF_I_n_49,
      Intr2Bus_RdAck0 => Intr2Bus_RdAck0,
      Q(17) => p_0_in47_in,
      Q(16) => p_0_in44_in,
      Q(15) => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_26\,
      Q(14) => p_0_in38_in,
      Q(13) => p_0_in35_in,
      Q(12) => p_0_in32_in,
      Q(11) => p_0_in29_in,
      Q(10) => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_31\,
      Q(9) => p_0_in23_in,
      Q(8) => p_0_in20_in,
      Q(7) => p_0_in17_in,
      Q(6) => p_0_in14_in,
      Q(5) => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_36\,
      Q(4) => p_0_in8_in,
      Q(3) => p_0_in5_in,
      Q(2) => p_0_in2_in,
      Q(1) => p_0_in0_in,
      Q(0) => \INTR_CTRLR_GEN_I.INTERRUPT_CONTROL_I_n_41\,
      eoc_out => \^eoc_out\,
      eos_out => \^eos_out\,
      interrupt_status_i(1) => interrupt_status_i(8),
      interrupt_status_i(0) => interrupt_status_i(9),
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr_ip2bus_rdack => intr_ip2bus_rdack,
      intr_ip2bus_wrack => intr_ip2bus_wrack,
      ip2intc_irpt => ip2intc_irpt,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg_0 => AXI_LITE_IPIF_I_n_65,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      jtagmodified_i => jtagmodified_i,
      p_1_in => p_1_in,
      p_1_in10_in => p_1_in10_in,
      p_1_in13_in => p_1_in13_in,
      p_1_in16_in => p_1_in16_in,
      p_1_in19_in => p_1_in19_in,
      p_1_in1_in => p_1_in1_in,
      p_1_in22_in => p_1_in22_in,
      p_1_in25_in => p_1_in25_in,
      p_1_in28_in => p_1_in28_in,
      p_1_in31_in => p_1_in31_in,
      p_1_in34_in => p_1_in34_in,
      p_1_in37_in => p_1_in37_in,
      p_1_in40_in => p_1_in40_in,
      p_1_in43_in => p_1_in43_in,
      p_1_in46_in => p_1_in46_in,
      p_1_in4_in => p_1_in4_in,
      p_1_in7_in => p_1_in7_in,
      reset2ip_reset => reset2ip_reset,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(17 downto 0) => s_axi_wdata(17 downto 0)
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_bus2ip_rdce_intr,
      Q => dummy_intr_reg_rdack_d1,
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_rdack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_intr_reg_rdack0,
      Q => dummy_intr_reg_rdack,
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_bus2ip_wrce_intr,
      Q => dummy_intr_reg_wrack_d1,
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.dummy_intr_reg_wrack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_intr_reg_wrack0,
      Q => dummy_intr_reg_wrack,
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_ip2bus_data(0),
      Q => ip2bus_data(31),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(14),
      Q => ip2bus_data(17),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(15),
      Q => ip2bus_data(16),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(16),
      Q => ip2bus_data(15),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(17),
      Q => ip2bus_data(14),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(18),
      Q => ip2bus_data(13),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(19),
      Q => ip2bus_data(12),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(20),
      Q => ip2bus_data(11),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(21),
      Q => ip2bus_data(10),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(22),
      Q => ip2bus_data(9),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(23),
      Q => ip2bus_data(8),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(24),
      Q => ip2bus_data(7),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(25),
      Q => ip2bus_data(6),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(26),
      Q => ip2bus_data(5),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(27),
      Q => ip2bus_data(4),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(28),
      Q => ip2bus_data(3),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(29),
      Q => ip2bus_data(2),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(30),
      Q => ip2bus_data(1),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_data_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_int1(31),
      Q => ip2bus_data(0),
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_error_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_error_int1,
      Q => ip2bus_error,
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_rdack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_int1,
      Q => ip2bus_rdack,
      R => reset2ip_reset
    );
\INTR_CTRLR_GEN_I.ip2bus_wrack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_int1,
      Q => ip2bus_wrack,
      R => reset2ip_reset
    );
SOFT_RESET_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_soft_reset
     port map (
      \RESET_FLOPS[15].RST_FLOPS_0\ => SOFT_RESET_I_n_2,
      bus2ip_reset_active_high => bus2ip_reset_active_high,
      reset2ip_reset => reset2ip_reset,
      reset_trig0 => reset_trig0,
      s_axi_aclk => s_axi_aclk,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      wrack => wrack
    );
bus2ip_reset_active_high_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => p_0_in
    );
bus2ip_reset_active_high_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in,
      Q => bus2ip_reset_active_high,
      R => '0'
    );
dummy_local_reg_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_local_reg_rdack_d10,
      Q => dummy_local_reg_rdack_d1,
      R => reset2ip_reset
    );
dummy_local_reg_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_local_reg_rdack0,
      Q => dummy_local_reg_rdack,
      R => reset2ip_reset
    );
dummy_local_reg_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_local_reg_wrack_d10,
      Q => dummy_local_reg_wrack_d1,
      R => reset2ip_reset
    );
dummy_local_reg_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => dummy_local_reg_wrack0,
      Q => dummy_local_reg_wrack,
      R => reset2ip_reset
    );
rst_ip2bus_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rdce(24),
      Q => rst_ip2bus_rdack_d1,
      R => reset2ip_reset
    );
rst_ip2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_ip2bus_rdack0,
      Q => rst_ip2bus_rdack,
      R => reset2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    busy_out : out STD_LOGIC;
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    temp_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    alarm_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_alarm_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 30 downto 18 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtex7";
  attribute C_INCLUDE_INTR : integer;
  attribute C_INCLUDE_INTR of inst : label is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of inst : label is "hardware_system_management_wiz_0_0_axi_xadc";
  attribute C_SIM_MONITOR_FILE : string;
  attribute C_SIM_MONITOR_FILE of inst : label is "design.txt";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 13;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute hdl : string;
  attribute hdl of inst : label is "VHDL";
  attribute ip_group : string;
  attribute ip_group of inst : label is "LOGICORE";
  attribute iptype : string;
  attribute iptype of inst : label is "PERIPHERAL";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17 downto 0) <= \^s_axi_rdata\(17 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hardware_system_management_wiz_0_0_axi_xadc
     port map (
      alarm_out(15 downto 8) => NLW_inst_alarm_out_UNCONNECTED(15 downto 8),
      alarm_out(7) => alarm_out,
      alarm_out(6 downto 0) => NLW_inst_alarm_out_UNCONNECTED(6 downto 0),
      busy_out => busy_out,
      channel_out(5 downto 0) => channel_out(5 downto 0),
      eoc_out => eoc_out,
      eos_out => eos_out,
      ip2intc_irpt => ip2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 11) => B"00",
      s_axi_araddr(10 downto 2) => s_axi_araddr(10 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 11) => B"00",
      s_axi_awaddr(10 downto 2) => s_axi_awaddr(10 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1) => \^s_axi_bresp\(1),
      s_axi_bresp(0) => NLW_inst_s_axi_bresp_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31) => \^s_axi_rdata\(31),
      s_axi_rdata(30 downto 18) => NLW_inst_s_axi_rdata_UNCONNECTED(30 downto 18),
      s_axi_rdata(17 downto 0) => \^s_axi_rdata\(17 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1) => \^s_axi_rresp\(1),
      s_axi_rresp(0) => NLW_inst_s_axi_rresp_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31) => s_axi_wdata(31),
      s_axi_wdata(30 downto 18) => B"0000000000000",
      s_axi_wdata(17 downto 0) => s_axi_wdata(17 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      temp_out(9 downto 0) => temp_out(9 downto 0),
      vn => '0',
      vp => '0'
    );
end STRUCTURE;
