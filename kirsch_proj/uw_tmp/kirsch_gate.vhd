
-- 
-- Definition of  kirsch
-- 
--      Tue Mar 26 14:08:30 2019
--      
--      Precision RTL Synthesis, 64-bit 2015.2.16
-- 

--
-- Please compile Mgc_home/pkgs/psr/modgen/modgen_sim.vhd file into
-- "modgen_sim" library, during the simulation run for this netlist
--
library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_9u_9u_9u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9u_9u_9u_0_0 ;

architecture BEHAVIORAL of add_9u_9u_9u_0_0 is 
   component sim_add
      generic (size : integer := 9) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix31 : sim_add
      generic map (size => 9) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_12u_12u_12u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (11 DOWNTO 0) ;
      b : IN std_logic_vector (11 DOWNTO 0) ;
      d : OUT std_logic_vector (11 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_12u_12u_12u_0_0 ;

architecture BEHAVIORAL of add_12u_12u_12u_0_0 is 
   component sim_add
      generic (size : integer := 12) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix38 : sim_add
      generic map (size => 12) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_4u_4u ;

architecture BEHAVIORAL of and_4u_4u is 
   component sim_and
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_and
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity select_4_4 is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      b : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_4_4 ;

architecture BEHAVIORAL of select_4_4 is 
   component sim_select
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_select
      generic map (size => 4) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity select_5_5 is 
   port (
      a : IN std_logic_vector (4 DOWNTO 0) ;
      b : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_5_5 ;

architecture BEHAVIORAL of select_5_5 is 
   component sim_select
      generic (size : integer := 5) ;
      
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         b : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix14 : sim_select
      generic map (size => 5) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_8u_8u ;

architecture BEHAVIORAL of gt_8u_8u is 
   component sim_gt
      generic (size : integer := 8;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_gt
      generic map (size => 8,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity select_3_3 is 
   port (
      a : IN std_logic_vector (2 DOWNTO 0) ;
      b : IN std_logic_vector (2 DOWNTO 0) ;
      d : OUT std_logic) ;
end select_3_3 ;

architecture BEHAVIORAL of select_3_3 is 
   component sim_select
      generic (size : integer := 3) ;
      
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix10 : sim_select
      generic map (size => 3) 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_4u_4u is 
   port (
      a : IN std_logic_vector (3 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_4u_4u ;

architecture BEHAVIORAL of or_4u_4u is 
   component sim_or
      generic (size : integer := 4) ;
      
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix9 : sim_or
      generic map (size => 4) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity and_8u_8u is 
   port (
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic) ;
end and_8u_8u ;

architecture BEHAVIORAL of and_8u_8u is 
   component sim_and
      generic (size : integer := 8) ;
      
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix13 : sim_and
      generic map (size => 8) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity gt_9u_9u is 
   port (
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic) ;
end gt_9u_9u ;

architecture BEHAVIORAL of gt_9u_9u is 
   component sim_gt
      generic (size : integer := 9;
         is_signed : string := "false") ;
      
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix23 : sim_gt
      generic map (size => 9,
         is_signed => "false") 
       port map ( a=>a, b=>b, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity inc_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end inc_8u_8u_0_0 ;

architecture BEHAVIORAL of inc_8u_8u_0_0 is 
   component sim_inc
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix21 : sim_inc
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity add_8u_8u_8u_0_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_8u_8u_8u_0_0 ;

architecture BEHAVIORAL of add_8u_8u_8u_0_0 is 
   component sim_add
      generic (size : integer := 8) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix29 : sim_add
      generic map (size => 8) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity sub_11u_11u_11u_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (10 DOWNTO 0) ;
      b : IN std_logic_vector (10 DOWNTO 0) ;
      d : OUT std_logic_vector (10 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_11u_11u_11u_0 ;

architecture BEHAVIORAL of sub_11u_11u_11u_0 is 
   component sim_sub
      generic (size : integer := 11) ;
      
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
begin
   ix37 : sim_sub
      generic map (size => 11) 
       port map ( cin=>cin, a=>a, b=>b, d=>d, cout=>cout);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   port (
      clk : IN std_logic ;
      we : IN std_logic ;
      address : IN std_logic_vector (7 DOWNTO 0) ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
end clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F ;

architecture BEHAVIORAL of clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F is 
   component sim_ram
      generic (size : integer := 8;
         sizead : integer := 8;
         numwords : integer := 256;
         use_clk : string := "true";
         use_clk2 : string := "false";
         use_data2 : string := "false";
         use_addr2 : string := "true";
         use_addr3 : string := "false";
         use_addr4 : string := "false";
         use_we : string := "true";
         use_we2 : string := "false";
         use_q2 : string := "false";
         use_raminit : string := "false") ;
      
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0) ;
         clk2 : IN std_logic ;
         data2 : IN std_logic_vector (7 DOWNTO 0) ;
         addr3 : IN std_logic_vector (7 DOWNTO 0) ;
         addr4 : IN std_logic_vector (7 DOWNTO 0) ;
         we2 : IN std_logic ;
         q2 : OUT std_logic_vector (7 DOWNTO 0) ;
         q3 : OUT std_logic_vector (7 DOWNTO 0) ;
         q4 : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;type DANGLING_type is array (0 downto 0,511 downto 0) of 
   std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   ix0 : sim_ram
      generic map (size => 8,
         sizead => 8,
         numwords => 256,
         use_clk => "true",
         use_clk2 => "false",
         use_data2 => "false",
         use_addr2 => "true",
         use_addr3 => "false",
         use_addr4 => "false",
         use_we => "true",
         use_we2 => "false",
         use_q2 => "false",
         use_raminit => "false") 
       port map ( clk=>clk, we=>we, address=>address, data=>data, q=>q, 
      addr2=>addr2, clk2=>DANGLING(0,0), data2(7)=>DANGLING(0,1), data2(6)=>
      DANGLING(0,2), data2(5)=>DANGLING(0,3), data2(4)=>DANGLING(0,4), 
      data2(3)=>DANGLING(0,5), data2(2)=>DANGLING(0,6), data2(1)=>
      DANGLING(0,7), data2(0)=>DANGLING(0,8), addr3(7)=>DANGLING(0,9), 
      addr3(6)=>DANGLING(0,10), addr3(5)=>DANGLING(0,11), addr3(4)=>
      DANGLING(0,12), addr3(3)=>DANGLING(0,13), addr3(2)=>DANGLING(0,14), 
      addr3(1)=>DANGLING(0,15), addr3(0)=>DANGLING(0,16), addr4(7)=>
      DANGLING(0,17), addr4(6)=>DANGLING(0,18), addr4(5)=>DANGLING(0,19), 
      addr4(4)=>DANGLING(0,20), addr4(3)=>DANGLING(0,21), addr4(2)=>
      DANGLING(0,22), addr4(1)=>DANGLING(0,23), addr4(0)=>DANGLING(0,24), 
      we2=>DANGLING(0,25), q2(7)=>DANGLING(0,26), q2(6)=>DANGLING(0,27), 
      q2(5)=>DANGLING(0,28), q2(4)=>DANGLING(0,29), q2(3)=>DANGLING(0,30), 
      q2(2)=>DANGLING(0,31), q2(1)=>DANGLING(0,32), q2(0)=>DANGLING(0,33), 
      q3(7)=>DANGLING(0,34), q3(6)=>DANGLING(0,35), q3(5)=>DANGLING(0,36), 
      q3(4)=>DANGLING(0,37), q3(3)=>DANGLING(0,38), q3(2)=>DANGLING(0,39), 
      q3(1)=>DANGLING(0,40), q3(0)=>DANGLING(0,41), q4(7)=>DANGLING(0,42), 
      q4(6)=>DANGLING(0,43), q4(5)=>DANGLING(0,44), q4(4)=>DANGLING(0,45), 
      q4(3)=>DANGLING(0,46), q4(2)=>DANGLING(0,47), q4(1)=>DANGLING(0,48), 
      q4(0)=>DANGLING(0,49));
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_7u_7u is 
   port (
      a : IN std_logic_vector (6 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_7u_7u ;

architecture BEHAVIORAL of or_7u_7u is 
   component sim_or
      generic (size : integer := 7) ;
      
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix12 : sim_or
      generic map (size => 7) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
library modgen_sim; 
use  modgen_sim.all; 

entity or_6u_6u is 
   port (
      a : IN std_logic_vector (5 DOWNTO 0) ;
      d : OUT std_logic) ;
end or_6u_6u ;

architecture BEHAVIORAL of or_6u_6u is 
   component sim_or
      generic (size : integer := 6) ;
      
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
begin
   ix11 : sim_or
      generic map (size => 6) 
       port map ( a=>a, d=>d);
end BEHAVIORAL ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx40, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   nx40 <= cnt_en OR sclear ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,nx40,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,nx40,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,nx40,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,nx40,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,nx40,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,nx40,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,nx40,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,nx40,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_clk_en_0_8_cx1_kirsch is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_clk_en_0_8_cx1_kirsch ;

architecture INTERFACE of counter_up_sclear_clock_clk_en_0_8_cx1_kirsch is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, PWR, nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, 
      sclear_and_0_dup_103, sclear_and_1_dup_104, sclear_and_2_dup_105, 
      sclear_and_3_dup_106, sclear_and_4_dup_107, sclear_and_5_dup_108, 
      sclear_and_6_dup_109, sclear_and_7_dup_110, inc_d_0, inc_d_1, inc_d_2, 
      inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, NOT_sclear: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   q(7) <= nx35 ;
   q(6) <= nx34 ;
   q(5) <= nx33 ;
   q(4) <= nx32 ;
   q(3) <= nx31 ;
   q(2) <= nx30 ;
   q(1) <= nx29 ;
   q(0) <= nx28 ;
   GND <= '0' ;
   PWR <= '1' ;
   DFFPCE (sclear_and_7_dup_110,GND,GND,clk_en,clock,nx35) ;
   DFFPCE (sclear_and_6_dup_109,GND,GND,clk_en,clock,nx34) ;
   DFFPCE (sclear_and_5_dup_108,GND,GND,clk_en,clock,nx33) ;
   DFFPCE (sclear_and_4_dup_107,GND,GND,clk_en,clock,nx32) ;
   DFFPCE (sclear_and_3_dup_106,GND,GND,clk_en,clock,nx31) ;
   DFFPCE (sclear_and_2_dup_105,GND,GND,clk_en,clock,nx30) ;
   DFFPCE (sclear_and_1_dup_104,GND,GND,clk_en,clock,nx29) ;
   DFFPCE (sclear_and_0_dup_103,GND,GND,clk_en,clock,nx28) ;
   inc : inc_8u_8u_0_0 port map ( cin=>PWR, a(7)=>nx35, a(6)=>nx34, a(5)=>
      nx33, a(4)=>nx32, a(3)=>nx31, a(2)=>nx30, a(1)=>nx29, a(0)=>nx28, d(7)
      =>inc_d_7, d(6)=>inc_d_6, d(5)=>inc_d_5, d(4)=>inc_d_4, d(3)=>inc_d_3, 
      d(2)=>inc_d_2, d(1)=>inc_d_1, d(0)=>inc_d_0, cout=>DANGLING(0,0));
   NOT_sclear <= NOT sclear ;
   sclear_and_0_dup_103 <= inc_d_0 AND NOT_sclear ;
   sclear_and_1_dup_104 <= inc_d_1 AND NOT_sclear ;
   sclear_and_2_dup_105 <= inc_d_2 AND NOT_sclear ;
   sclear_and_3_dup_106 <= inc_d_3 AND NOT_sclear ;
   sclear_and_4_dup_107 <= inc_d_4 AND NOT_sclear ;
   sclear_and_5_dup_108 <= inc_d_5 AND NOT_sclear ;
   sclear_and_6_dup_109 <= inc_d_6 AND NOT_sclear ;
   sclear_and_7_dup_110 <= inc_d_7 AND NOT_sclear ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_0_work_kirsch_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_0_work_kirsch_main ;

architecture INTERFACE of ram_new_0_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen) ;
   mem : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we=>
      nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>addr1(5), 
      address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>addr1(2), 
      address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>wr_data1(7), 
      data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>wr_data1(4), 
      data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>wr_data1(1), 
      data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>rd_data1(6), q(5)=>
      rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), q(2)=>rd_data1(2), 
      q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_1_work_kirsch_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_1_work_kirsch_main ;

architecture INTERFACE of ram_new_1_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen) ;
   mem_0 : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we
      =>nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>
      addr1(5), address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>
      addr1(2), address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>
      wr_data1(7), data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>
      wr_data1(4), data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>
      wr_data1(1), data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>
      rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), 
      q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity ram_new_2_work_kirsch_main is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (7 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic ;
      regrst1 : IN std_logic) ;
end ram_new_2_work_kirsch_main ;

architecture INTERFACE of ram_new_2_work_kirsch_main is 
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F
      port (
         clk : IN std_logic ;
         we : IN std_logic ;
         address : IN std_logic_vector (7 DOWNTO 0) ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         addr2 : IN std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx32, nx34, dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, 
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, 
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, 
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, 
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, 
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, 
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, 
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen, nx36, nx38: 
   std_logic ;

begin
   nx32 <= '0' ;
   nx34 <= '1' ;
   DFFPC (addr1(7),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen) ;
   DFFPC (addr1(6),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen) ;
   DFFPC (addr1(5),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen) ;
   DFFPC (addr1(4),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen) ;
   DFFPC (addr1(3),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen) ;
   DFFPC (addr1(2),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen) ;
   DFFPC (addr1(1),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen) ;
   DFFPC (addr1(0),nx32,nx32,rd_clk1,
   dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen) ;
   mem_1 : clocked_ram_8_8_256_F_T_F_F_F_F_F_F_F port map ( clk=>wr_clk1, we
      =>nx36, address(7)=>addr1(7), address(6)=>addr1(6), address(5)=>
      addr1(5), address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>
      addr1(2), address(1)=>addr1(1), address(0)=>addr1(0), data(7)=>
      wr_data1(7), data(6)=>wr_data1(6), data(5)=>wr_data1(5), data(4)=>
      wr_data1(4), data(3)=>wr_data1(3), data(2)=>wr_data1(2), data(1)=>
      wr_data1(1), data(0)=>wr_data1(0), q(7)=>rd_data1(7), q(6)=>
      rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), q(3)=>rd_data1(3), 
      q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>rd_data1(0), addr2(7)=>
      dup_0_reg_address_MGC0917_MGC093_rtlcs0_rtlcGen, addr2(6)=>
      dup_0_reg_address_MGC0916_MGC093_rtlcs3_rtlcGen, addr2(5)=>
      dup_0_reg_address_MGC0915_MGC093_rtlcs5_rtlcGen, addr2(4)=>
      dup_0_reg_address_MGC0914_MGC093_rtlcs7_rtlcGen, addr2(3)=>
      dup_0_reg_address_MGC0913_MGC093_rtlcs9_rtlcGen, addr2(2)=>
      dup_0_reg_address_MGC0912_MGC093_rtlcs11_rtlcGen, addr2(1)=>
      dup_0_reg_address_MGC0911_MGC093_rtlcs13_rtlcGen, addr2(0)=>
      dup_0_reg_address_MGC0910_MGC093_rtlcs15_rtlcGen);
   nx36 <= wr_ena1 AND ena1 ;
   nx38 <= rd_ena1 AND ena1 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity kirsch is 
   port (
      clk : IN std_logic ;
      reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      o_col : OUT std_logic_vector (7 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_12u_12u_12u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (11 DOWNTO 0) ;
         b : IN std_logic_vector (11 DOWNTO 0) ;
         d : OUT std_logic_vector (11 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_4_4
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         b : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_5_5
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         b : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_8u_8u
      port (
         a : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component gt_9u_9u
      port (
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_clock_clk_en_0_8_cx1_kirsch
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component add_8u_8u_8u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   component sub_11u_11u_11u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (10 DOWNTO 0) ;
         b : IN std_logic_vector (10 DOWNTO 0) ;
         d : OUT std_logic_vector (10 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component ram_new_0_work_kirsch_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component ram_new_1_work_kirsch_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component ram_new_2_work_kirsch_main
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (7 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic ;
         regrst1 : IN std_logic) ;
   end component ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_valid_EXMPLR172, o_mode_1_EXMPLR177: std_logic ;
   
   signal o_row_EXMPLR198: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_col_EXMPLR199: std_logic_vector (7 DOWNTO 0) ;
   
   signal a: std_logic_vector (7 DOWNTO 0) ;
   
   signal b: std_logic_vector (7 DOWNTO 0) ;
   
   signal c: std_logic_vector (7 DOWNTO 0) ;
   
   signal h: std_logic_vector (7 DOWNTO 0) ;
   
   signal i: std_logic_vector (7 DOWNTO 0) ;
   
   signal d: std_logic_vector (7 DOWNTO 0) ;
   
   signal g: std_logic_vector (7 DOWNTO 0) ;
   
   signal f: std_logic_vector (7 DOWNTO 0) ;
   
   signal e: std_logic_vector (7 DOWNTO 0) ;
   
   signal on_stage1, on_stage2, on_stage3, GND: std_logic ;
   
   signal cycles: std_logic_vector (6 DOWNTO 0) ;
   
   signal reg2: std_logic_vector (8 DOWNTO 0) ;
   
   signal add2: std_logic_vector (8 DOWNTO 0) ;
   
   signal add3: std_logic_vector (11 DOWNTO 0) ;
   
   signal reg4: std_logic_vector (11 DOWNTO 0) ;
   
   signal reg7: std_logic_vector (11 DOWNTO 0) ;
   
   signal add4_13, add4_12, add4_11, add4_10, add4_9, add4_8, add4_7, 
      sub1_12, sub1_11, sub1_10, sub1_9, sub1_8, sub1_7, rtlcP1, rtlcP2, 
      rtlcP3: std_logic ;
   
   signal row_state: std_logic_vector (1 DOWNTO 0) ;
   
   signal not_rtlc10n272, PWR, o_mode_0_0n0s3, o_mode_0_0n0s2, rtlc1n56, 
      not_cycles_0, rtlc2_P5_SS0_n106, not_cycles_2: std_logic ;
   
   signal rtlc2n0_2n1s5: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlc2_P11_SS0_n154, not_rtlcn46, rtlc2n260, rtlc2n261, 
      rtlc3_copy_n62_10, rtlc3_copy_n62_9, rtlc3_copy_n62_8, 
      rtlc3_copy_n62_7, rtlc3_copy_n62_6, rtlc3_copy_n62_5, rtlc3_copy_n62_4, 
      rtlc3_copy_n62_3, rtlc3_copy_n65, rtlc3_copy_n79_10, rtlc3_copy_n79_9, 
      rtlc3_copy_n79_8, rtlc3_copy_n79_7, rtlc3_copy_n79_6, rtlc3_copy_n79_5, 
      rtlc3_copy_n79_4, rtlc3_copy_n79_3, rtlc3_copy_n82, rtlc3_copy_n95_10, 
      rtlc3_copy_n95_9, rtlc3_copy_n95_8, rtlc3_copy_n95_7, rtlc3_copy_n95_6, 
      rtlc3_copy_n95_5, rtlc3_copy_n95_4, rtlc3_copy_n95_3, rtlc3_copy_n98, 
      rtlc3_copy_n111_10, rtlc3_copy_n111_9, rtlc3_copy_n111_8, 
      rtlc3_copy_n111_7, rtlc3_copy_n111_6, rtlc3_copy_n111_5, 
      rtlc3_copy_n111_4, rtlc3_copy_n111_3, rtlc3_copy_n114, rtlc8n22, 
      not_rtlc8n22, rtlc8_P5_SS0_n36, rtlc8_P6_SS0_n39, rtlc8_copy_n49, 
      rtlc8_copy_n71, rtlc10n106, rtlc10n128, rtlc10n250, rtlc10n272, 
      rtlc10n279, rtlc10n281: std_logic ;
   
   signal c_11n2ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal d_11n4ss1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc12_cycles_D_n3_0, rtlc13n22, rtlc13n25, rtlc13n28, 
      not_cycles_4: std_logic ;
   
   signal reg4_15n2ss1: std_logic_vector (8 DOWNTO 0) ;
   
   signal rtlc15n60, rtlc15n80: std_logic ;
   
   signal reg5_16n2ss1: std_logic_vector (11 DOWNTO 0) ;
   
   signal rtlc16n32, reg8_17n4ss1_17, reg8_17n4ss1_16, reg8_17n4ss1_15, 
      reg8_17n4ss1_14, reg8_17n4ss1_13, reg8_17n4ss1_12, reg8_17n4ss1_11, 
      reg8_17n4ss1_10, add4_17n1s1_13, add4_17n1s1_12, add4_17n1s1_11, 
      add4_17n1s1_10, add4_17n1s1_9, add4_17n1s1_8, add4_17n1s1_7, 
      sub1_17n1s1_16, sub1_17n1s1_11, sub1_17n1s1_10, sub1_17n1s1_9, 
      sub1_17n1s1_8, sub1_17n1s1_7, not_rtlc17n316, rtlc17n177, rtlc17n178, 
      rtlc17n179, rtlc17n202, rtlc17n206, rtlc17n313, rtlc17n314, 
      not_reg8_val_14, rtlc17n316, rtlcn43, rtlcn44, rtlcn46, rtlcn313, 
      rtlcn321, rtlcn324, rtlcn393, not_rtlcn481, rtlcn407, rtlcn415, 
      rtlcn427, rtlcn431, not_row_state_1, not_rtlc10n128, rtlcn454, 
      rtlcn456, rtlcn458, rtlcn460, rtlcn463, not_rtlc10n106, not_rtlcn393, 
      rtlcn481, not_cycles_1, not_cycles_5, not_cycles_6, not_rtlcn321, 
      rtlcn488, rtlcn489, not_rtlcn489, rtlcn491, rtlcn492, rtlcn7162, 
      not_rtlc16n32: std_logic ;
   
   signal o_mems_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mems_1: std_logic_vector (7 DOWNTO 0) ;
   
   signal o_mems_2: std_logic_vector (7 DOWNTO 0) ;
   
   signal reg1_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal reg1_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal max1_val: std_logic_vector (7 DOWNTO 0) ;
   
   signal reg3_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal reg3_val: std_logic_vector (8 DOWNTO 0) ;
   
   signal reg5_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal reg5_val: std_logic_vector (8 DOWNTO 0) ;
   
   signal max2_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal max2_val: std_logic_vector (8 DOWNTO 0) ;
   
   signal reg6_dir: std_logic_vector (2 DOWNTO 0) ;
   
   signal reg6_val: std_logic_vector (8 DOWNTO 0) ;
   
   signal reg8_val_14, reg8_val_13, reg8_val_12, reg8_val_11, reg8_val_10, 
      reg8_val_9, reg8_val_8, reg8_val_7: std_logic ;
   
   signal rtlc2n0_2n1s5f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal rtlc2n0_2n1s5f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal not_rtlc3_copy_n65, nx80, nx85, nx90, nx399, nx402, 
      rtlc_66_and_46_nx0, rtlc_562_or_56_nx0, rtlc_795_and_59_nx0, 
      rtlc_806_or_60_nx0, NOT_reg7_0, nx1508, nx1514, nx1520, nx1526, nx1532, 
      nx1538, nx1544, nx1550: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   o_valid <= o_valid_EXMPLR172 ;
   o_mode(1) <= o_mode_1_EXMPLR177 ;
   o_row(7) <= o_row_EXMPLR198(7) ;
   o_row(6) <= o_row_EXMPLR198(6) ;
   o_row(5) <= o_row_EXMPLR198(5) ;
   o_row(4) <= o_row_EXMPLR198(4) ;
   o_row(3) <= o_row_EXMPLR198(3) ;
   o_row(2) <= o_row_EXMPLR198(2) ;
   o_row(1) <= o_row_EXMPLR198(1) ;
   o_row(0) <= o_row_EXMPLR198(0) ;
   o_col(7) <= o_col_EXMPLR199(7) ;
   o_col(6) <= o_col_EXMPLR199(6) ;
   o_col(5) <= o_col_EXMPLR199(5) ;
   o_col(4) <= o_col_EXMPLR199(4) ;
   o_col(3) <= o_col_EXMPLR199(3) ;
   o_col(2) <= o_col_EXMPLR199(2) ;
   o_col(1) <= o_col_EXMPLR199(1) ;
   o_col(0) <= o_col_EXMPLR199(0) ;
   GND <= '0' ;
   PWR <= '1' ;
   rtlcP1 <= i_valid AND not_rtlc10n272 ;
   rtlcP2 <= i_valid AND row_state(0) ;
   rtlcP3 <= i_valid AND row_state(1) ;
   o_mode(0) <= o_mode_0_0n0s2 OR on_stage3 ;
   o_mode_0_0n0s2 <= o_mode_0_0n0s3 OR on_stage2 ;
   o_mode_0_0n0s3 <= reset OR on_stage1 ;
   o_mode_1_EXMPLR177 <= NOT reset ;
   add2_add9_0 : add_9u_9u_9u_0_0 port map ( cin=>GND, a(8)=>GND, a(7)=>
      reg1_val(7), a(6)=>reg1_val(6), a(5)=>reg1_val(5), a(4)=>reg1_val(4), 
      a(3)=>reg1_val(3), a(2)=>reg1_val(2), a(1)=>reg1_val(1), a(0)=>
      reg1_val(0), b(8)=>reg2(8), b(7)=>reg2(7), b(6)=>reg2(6), b(5)=>
      reg2(5), b(4)=>reg2(4), b(3)=>reg2(3), b(2)=>reg2(2), b(1)=>reg2(1), 
      b(0)=>reg2(0), d(8)=>add2(8), d(7)=>add2(7), d(6)=>add2(6), d(5)=>
      add2(5), d(4)=>add2(4), d(3)=>add2(3), d(2)=>add2(2), d(1)=>add2(1), 
      d(0)=>add2(0), cout=>DANGLING(0,0));
   add3_add12_1 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>GND, a(10)
      =>GND, a(9)=>GND, a(8)=>reg2(8), a(7)=>reg2(7), a(6)=>reg2(6), a(5)=>
      reg2(5), a(4)=>reg2(4), a(3)=>reg2(3), a(2)=>reg2(2), a(1)=>reg2(1), 
      a(0)=>reg2(0), b(11)=>reg4(11), b(10)=>reg4(10), b(9)=>reg4(9), b(8)=>
      reg4(8), b(7)=>reg4(7), b(6)=>reg4(6), b(5)=>reg4(5), b(4)=>reg4(4), 
      b(3)=>reg4(3), b(2)=>reg4(2), b(1)=>reg4(1), b(0)=>reg4(0), d(11)=>
      add3(11), d(10)=>add3(10), d(9)=>add3(9), d(8)=>add3(8), d(7)=>add3(7), 
      d(6)=>add3(6), d(5)=>add3(5), d(4)=>add3(4), d(3)=>add3(3), d(2)=>
      add3(2), d(1)=>add3(1), d(0)=>add3(0), cout=>DANGLING(0,1));
   rtlc1n56 <= rtlcn43 AND rtlcn44 ;
   not_cycles_0 <= NOT cycles(0) ;
   rtlc2_P5_SS0_n106 <= not_cycles_0 AND cycles(1) ;
   rtlc2_60_and_4 : and_4u_4u port map ( a(3)=>not_cycles_0, a(2)=>
      not_cycles_1, a(1)=>not_cycles_2, a(0)=>cycles(3), d=>
      rtlc2_P11_SS0_n154);
   rtlc2n0_select_2i8Bus40_7 : select_4_4 port map ( a(3)=>rtlc2_P5_SS0_n106, 
      a(2)=>cycles(0), a(1)=>rtlc2n260, a(0)=>rtlc2n261, b(3)=>b(7), b(2)=>
      a(7), b(1)=>f(7), b(0)=>d(7), d=>rtlc2n0_2n1s5f1(7));
   rtlc2n0_select_2i8Bus40_6 : select_4_4 port map ( a(3)=>rtlc2_P5_SS0_n106, 
      a(2)=>cycles(0), a(1)=>rtlc2n260, a(0)=>rtlc2n261, b(3)=>b(6), b(2)=>
      a(6), b(1)=>f(6), b(0)=>d(6), d=>rtlc2n0_2n1s5f1(6));
   rtlc2n0_select_2i8Bus40_5 : select_4_4 port map ( a(3)=>rtlc2_P5_SS0_n106, 
      a(2)=>cycles(0), a(1)=>rtlc2n260, a(0)=>rtlc2n261, b(3)=>b(5), b(2)=>
      a(5), b(1)=>f(5), b(0)=>d(5), d=>rtlc2n0_2n1s5f1(5));
   rtlc2n0_select_2i8Bus40_4 : select_4_4 port map ( a(3)=>rtlc2_P5_SS0_n106, 
      a(2)=>cycles(0), a(1)=>rtlc2n260, a(0)=>rtlc2n261, b(3)=>b(4), b(2)=>
      a(4), b(1)=>f(4), b(0)=>d(4), d=>rtlc2n0_2n1s5f1(4));
   rtlc2n0_select_2i8Bus40_3 : select_4_4 port map ( a(3)=>rtlc2_P5_SS0_n106, 
      a(2)=>cycles(0), a(1)=>rtlc2n260, a(0)=>rtlc2n261, b(3)=>b(3), b(2)=>
      a(3), b(1)=>f(3), b(0)=>d(3), d=>rtlc2n0_2n1s5f1(3));
   rtlc2n0_select_2i8Bus40_2 : select_4_4 port map ( a(3)=>rtlc2_P5_SS0_n106, 
      a(2)=>cycles(0), a(1)=>rtlc2n260, a(0)=>rtlc2n261, b(3)=>b(2), b(2)=>
      a(2), b(1)=>f(2), b(0)=>d(2), d=>rtlc2n0_2n1s5f1(2));
   rtlc2n0_select_2i8Bus40_1 : select_4_4 port map ( a(3)=>rtlc2_P5_SS0_n106, 
      a(2)=>cycles(0), a(1)=>rtlc2n260, a(0)=>rtlc2n261, b(3)=>b(1), b(2)=>
      a(1), b(1)=>f(1), b(0)=>d(1), d=>rtlc2n0_2n1s5f1(1));
   rtlc2n0_select_2i8Bus40_0 : select_4_4 port map ( a(3)=>rtlc2_P5_SS0_n106, 
      a(2)=>cycles(0), a(1)=>rtlc2n260, a(0)=>rtlc2n261, b(3)=>b(0), b(2)=>
      a(0), b(1)=>f(0), b(0)=>d(0), d=>rtlc2n0_2n1s5f1(0));
   rtlc2n0_select_2i16Bus41_7 : select_4_4 port map ( a(3)=>rtlc2n260, a(2)
      =>rtlc2n261, a(1)=>cycles(0), a(0)=>rtlc2_P5_SS0_n106, b(3)=>g(7), 
      b(2)=>e(7), b(1)=>h(7), b(0)=>c(7), d=>rtlc2n0_2n1s5f2(7));
   rtlc2n0_select_2i16Bus41_6 : select_4_4 port map ( a(3)=>rtlc2n260, a(2)
      =>rtlc2n261, a(1)=>cycles(0), a(0)=>rtlc2_P5_SS0_n106, b(3)=>g(6), 
      b(2)=>e(6), b(1)=>h(6), b(0)=>c(6), d=>rtlc2n0_2n1s5f2(6));
   rtlc2n0_select_2i16Bus41_5 : select_4_4 port map ( a(3)=>rtlc2n260, a(2)
      =>rtlc2n261, a(1)=>cycles(0), a(0)=>rtlc2_P5_SS0_n106, b(3)=>g(5), 
      b(2)=>e(5), b(1)=>h(5), b(0)=>c(5), d=>rtlc2n0_2n1s5f2(5));
   rtlc2n0_select_2i16Bus41_4 : select_4_4 port map ( a(3)=>rtlc2n260, a(2)
      =>rtlc2n261, a(1)=>cycles(0), a(0)=>rtlc2_P5_SS0_n106, b(3)=>g(4), 
      b(2)=>e(4), b(1)=>h(4), b(0)=>c(4), d=>rtlc2n0_2n1s5f2(4));
   rtlc2n0_select_2i16Bus41_3 : select_4_4 port map ( a(3)=>rtlc2n260, a(2)
      =>rtlc2n261, a(1)=>cycles(0), a(0)=>rtlc2_P5_SS0_n106, b(3)=>g(3), 
      b(2)=>e(3), b(1)=>h(3), b(0)=>c(3), d=>rtlc2n0_2n1s5f2(3));
   rtlc2n0_select_2i16Bus41_2 : select_4_4 port map ( a(3)=>rtlc2n260, a(2)
      =>rtlc2n261, a(1)=>cycles(0), a(0)=>rtlc2_P5_SS0_n106, b(3)=>g(2), 
      b(2)=>e(2), b(1)=>h(2), b(0)=>c(2), d=>rtlc2n0_2n1s5f2(2));
   rtlc2n0_select_2i16Bus41_1 : select_4_4 port map ( a(3)=>rtlc2n260, a(2)
      =>rtlc2n261, a(1)=>cycles(0), a(0)=>rtlc2_P5_SS0_n106, b(3)=>g(1), 
      b(2)=>e(1), b(1)=>h(1), b(0)=>c(1), d=>rtlc2n0_2n1s5f2(1));
   rtlc2n0_select_2i16Bus41_0 : select_4_4 port map ( a(3)=>rtlc2n260, a(2)
      =>rtlc2n261, a(1)=>cycles(0), a(0)=>rtlc2_P5_SS0_n106, b(3)=>g(0), 
      b(2)=>e(0), b(1)=>h(0), b(0)=>c(0), d=>rtlc2n0_2n1s5f2(0));
   max1_val_select_0Bus30_0 : select_5_5 port map ( a(4)=>cycles(0), a(3)=>
      rtlc2_P5_SS0_n106, a(2)=>rtlc2n261, a(1)=>rtlc2_P11_SS0_n154, a(0)=>
      not_rtlcn46, b(4)=>rtlc3_copy_n62_3, b(3)=>rtlc3_copy_n79_3, b(2)=>
      rtlc3_copy_n95_3, b(1)=>rtlc3_copy_n111_3, b(0)=>GND, d=>max1_val(0));
   max1_val_select_0Bus30_1 : select_5_5 port map ( a(4)=>cycles(0), a(3)=>
      rtlc2_P5_SS0_n106, a(2)=>rtlc2n261, a(1)=>rtlc2_P11_SS0_n154, a(0)=>
      not_rtlcn46, b(4)=>rtlc3_copy_n62_4, b(3)=>rtlc3_copy_n79_4, b(2)=>
      rtlc3_copy_n95_4, b(1)=>rtlc3_copy_n111_4, b(0)=>GND, d=>max1_val(1));
   max1_val_select_0Bus30_2 : select_5_5 port map ( a(4)=>cycles(0), a(3)=>
      rtlc2_P5_SS0_n106, a(2)=>rtlc2n261, a(1)=>rtlc2_P11_SS0_n154, a(0)=>
      not_rtlcn46, b(4)=>rtlc3_copy_n62_5, b(3)=>rtlc3_copy_n79_5, b(2)=>
      rtlc3_copy_n95_5, b(1)=>rtlc3_copy_n111_5, b(0)=>GND, d=>max1_val(2));
   max1_val_select_0Bus30_3 : select_5_5 port map ( a(4)=>cycles(0), a(3)=>
      rtlc2_P5_SS0_n106, a(2)=>rtlc2n261, a(1)=>rtlc2_P11_SS0_n154, a(0)=>
      not_rtlcn46, b(4)=>rtlc3_copy_n62_6, b(3)=>rtlc3_copy_n79_6, b(2)=>
      rtlc3_copy_n95_6, b(1)=>rtlc3_copy_n111_6, b(0)=>GND, d=>max1_val(3));
   max1_val_select_0Bus30_4 : select_5_5 port map ( a(4)=>cycles(0), a(3)=>
      rtlc2_P5_SS0_n106, a(2)=>rtlc2n261, a(1)=>rtlc2_P11_SS0_n154, a(0)=>
      not_rtlcn46, b(4)=>rtlc3_copy_n62_7, b(3)=>rtlc3_copy_n79_7, b(2)=>
      rtlc3_copy_n95_7, b(1)=>rtlc3_copy_n111_7, b(0)=>GND, d=>max1_val(4));
   max1_val_select_0Bus30_5 : select_5_5 port map ( a(4)=>cycles(0), a(3)=>
      rtlc2_P5_SS0_n106, a(2)=>rtlc2n261, a(1)=>rtlc2_P11_SS0_n154, a(0)=>
      not_rtlcn46, b(4)=>rtlc3_copy_n62_8, b(3)=>rtlc3_copy_n79_8, b(2)=>
      rtlc3_copy_n95_8, b(1)=>rtlc3_copy_n111_8, b(0)=>GND, d=>max1_val(5));
   max1_val_select_0Bus30_6 : select_5_5 port map ( a(4)=>cycles(0), a(3)=>
      rtlc2_P5_SS0_n106, a(2)=>rtlc2n261, a(1)=>rtlc2_P11_SS0_n154, a(0)=>
      not_rtlcn46, b(4)=>rtlc3_copy_n62_9, b(3)=>rtlc3_copy_n79_9, b(2)=>
      rtlc3_copy_n95_9, b(1)=>rtlc3_copy_n111_9, b(0)=>GND, d=>max1_val(6));
   max1_val_select_0Bus30_7 : select_5_5 port map ( a(4)=>cycles(0), a(3)=>
      rtlc2_P5_SS0_n106, a(2)=>rtlc2n261, a(1)=>rtlc2_P11_SS0_n154, a(0)=>
      not_rtlcn46, b(4)=>rtlc3_copy_n62_10, b(3)=>rtlc3_copy_n79_10, b(2)=>
      rtlc3_copy_n95_10, b(1)=>rtlc3_copy_n111_10, b(0)=>GND, d=>max1_val(7)
   );
   rtlc3_copy_n76_gt_30 : gt_8u_8u port map ( a(7)=>g(7), a(6)=>g(6), a(5)=>
      g(5), a(4)=>g(4), a(3)=>g(3), a(2)=>g(2), a(1)=>g(1), a(0)=>g(0), b(7)
      =>b(7), b(6)=>b(6), b(5)=>b(5), b(4)=>b(4), b(3)=>b(3), b(2)=>b(2), 
      b(1)=>b(1), b(0)=>b(0), d=>not_rtlc3_copy_n65);
   rtlc3_copy_n65 <= NOT not_rtlc3_copy_n65 ;
   rtlc3_copy_n92_gt_31 : gt_8u_8u port map ( a(7)=>a(7), a(6)=>a(6), a(5)=>
      a(5), a(4)=>a(4), a(3)=>a(3), a(2)=>a(2), a(1)=>a(1), a(0)=>a(0), b(7)
      =>d(7), b(6)=>d(6), b(5)=>d(5), b(4)=>d(4), b(3)=>d(3), b(2)=>d(2), 
      b(1)=>d(1), b(0)=>d(0), d=>nx80);
   rtlc3_copy_n82 <= NOT nx80 ;
   rtlc3_copy_n108_gt_32 : gt_8u_8u port map ( a(7)=>c(7), a(6)=>c(6), a(5)
      =>c(5), a(4)=>c(4), a(3)=>c(3), a(2)=>c(2), a(1)=>c(1), a(0)=>c(0), 
      b(7)=>f(7), b(6)=>f(6), b(5)=>f(5), b(4)=>f(4), b(3)=>f(3), b(2)=>f(2), 
      b(1)=>f(1), b(0)=>f(0), d=>nx85);
   rtlc3_copy_n98 <= NOT nx85 ;
   rtlc3_copy_n124_gt_33 : gt_8u_8u port map ( a(7)=>e(7), a(6)=>e(6), a(5)
      =>e(5), a(4)=>e(4), a(3)=>e(3), a(2)=>e(2), a(1)=>e(1), a(0)=>e(0), 
      b(7)=>h(7), b(6)=>h(6), b(5)=>h(5), b(4)=>h(4), b(3)=>h(3), b(2)=>h(2), 
      b(1)=>h(1), b(0)=>h(0), d=>nx90);
   rtlc3_copy_n114 <= NOT nx90 ;
   max2_dir_select_8Bus35_0 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_dir(0), b(1)=>
      reg6_dir(0), b(0)=>GND, d=>max2_dir(0));
   max2_dir_select_8Bus35_1 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_dir(1), b(1)=>
      reg6_dir(1), b(0)=>GND, d=>max2_dir(1));
   max2_dir_select_8Bus35_2 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_dir(2), b(1)=>
      reg6_dir(2), b(0)=>GND, d=>max2_dir(2));
   max2_val_select_11Bus36_0 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_val(0), b(1)=>
      reg6_val(0), b(0)=>GND, d=>max2_val(0));
   max2_val_select_11Bus36_1 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_val(1), b(1)=>
      reg6_val(1), b(0)=>GND, d=>max2_val(1));
   max2_val_select_11Bus36_2 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_val(2), b(1)=>
      reg6_val(2), b(0)=>GND, d=>max2_val(2));
   max2_val_select_11Bus36_3 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_val(3), b(1)=>
      reg6_val(3), b(0)=>GND, d=>max2_val(3));
   max2_val_select_11Bus36_4 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_val(4), b(1)=>
      reg6_val(4), b(0)=>GND, d=>max2_val(4));
   max2_val_select_11Bus36_5 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_val(5), b(1)=>
      reg6_val(5), b(0)=>GND, d=>max2_val(5));
   max2_val_select_11Bus36_6 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_val(6), b(1)=>
      reg6_val(6), b(0)=>GND, d=>max2_val(6));
   max2_val_select_11Bus36_7 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_val(7), b(1)=>
      reg6_val(7), b(0)=>GND, d=>max2_val(7));
   max2_val_select_11Bus36_8 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>rtlc8_P6_SS0_n39, b(2)=>reg3_val(8), b(1)=>
      reg6_val(8), b(0)=>GND, d=>max2_val(8));
   not_rtlc8n22 <= NOT rtlc8n22 ;
   rtlc8n22 <= cycles(3) OR cycles(4) ;
   rtlc8_P5_SS0_n36 <= not_rtlc8n22 AND cycles(5) ;
   rtlc8_P6_SS0_n39 <= not_rtlc8n22 AND not_cycles_5 ;
   rtlc10n272 <= row_state(0) OR row_state(1) ;
   rtlc10n250 <= reset OR rtlc10n106 ;
   rtlc12_cycles_D_n3_0 <= rtlc1n56 AND i_valid ;
   rtlc13n22 <= cycles(0) OR cycles(1) ;
   rtlc13n25 <= rtlc13n22 OR cycles(2) ;
   rtlc13n28 <= rtlc13n25 OR cycles(3) ;
   rtlc16n32 <= rtlc8n22 OR cycles(5) ;
   not_rtlc17n316 <= NOT rtlc17n316 ;
   rtlc17n179 <= rtlc17n178 AND not_cycles_5 ;
   rtlc17n178 <= rtlc17n177 AND not_cycles_6 ;
   rtlc17n177 <= not_rtlc17n316 AND o_valid_EXMPLR172 ;
   rtlc17n313 <= reg8_val_7 AND reg8_val_8 ;
   not_reg8_val_14 <= NOT reg8_val_14 ;
   rtlc17n316 <= rtlc17n314 AND not_reg8_val_14 ;
   rtlc_76_or_47 : or_4u_4u port map ( a(3)=>cycles(0), a(2)=>cycles(1), 
      a(1)=>cycles(2), a(0)=>cycles(3), d=>rtlcn46);
   not_rtlcn46 <= NOT rtlcn46 ;
   c_select_11i8Bus22_7 : select_3_3 port map ( a(2)=>row_state(1), a(1)=>
      not_rtlc10n272, a(0)=>rtlcn313, b(2)=>o_mems_0(7), b(1)=>o_mems_1(7), 
      b(0)=>o_mems_2(7), d=>c_11n2ss1(7));
   c_select_11i8Bus22_6 : select_3_3 port map ( a(2)=>row_state(1), a(1)=>
      not_rtlc10n272, a(0)=>rtlcn313, b(2)=>o_mems_0(6), b(1)=>o_mems_1(6), 
      b(0)=>o_mems_2(6), d=>c_11n2ss1(6));
   c_select_11i8Bus22_5 : select_3_3 port map ( a(2)=>row_state(1), a(1)=>
      not_rtlc10n272, a(0)=>rtlcn313, b(2)=>o_mems_0(5), b(1)=>o_mems_1(5), 
      b(0)=>o_mems_2(5), d=>c_11n2ss1(5));
   c_select_11i8Bus22_4 : select_3_3 port map ( a(2)=>row_state(1), a(1)=>
      not_rtlc10n272, a(0)=>rtlcn313, b(2)=>o_mems_0(4), b(1)=>o_mems_1(4), 
      b(0)=>o_mems_2(4), d=>c_11n2ss1(4));
   c_select_11i8Bus22_3 : select_3_3 port map ( a(2)=>row_state(1), a(1)=>
      not_rtlc10n272, a(0)=>rtlcn313, b(2)=>o_mems_0(3), b(1)=>o_mems_1(3), 
      b(0)=>o_mems_2(3), d=>c_11n2ss1(3));
   c_select_11i8Bus22_2 : select_3_3 port map ( a(2)=>row_state(1), a(1)=>
      not_rtlc10n272, a(0)=>rtlcn313, b(2)=>o_mems_0(2), b(1)=>o_mems_1(2), 
      b(0)=>o_mems_2(2), d=>c_11n2ss1(2));
   c_select_11i8Bus22_1 : select_3_3 port map ( a(2)=>row_state(1), a(1)=>
      not_rtlc10n272, a(0)=>rtlcn313, b(2)=>o_mems_0(1), b(1)=>o_mems_1(1), 
      b(0)=>o_mems_2(1), d=>c_11n2ss1(1));
   c_select_11i8Bus22_0 : select_3_3 port map ( a(2)=>row_state(1), a(1)=>
      not_rtlc10n272, a(0)=>rtlcn313, b(2)=>o_mems_0(0), b(1)=>o_mems_1(0), 
      b(0)=>o_mems_2(0), d=>c_11n2ss1(0));
   not_row_state_1 <= NOT row_state(1) ;
   rtlcn313 <= not_row_state_1 AND row_state(0) ;
   not_rtlc10n128 <= NOT rtlc10n128 ;
   rtlcn407 <= row_state(0) AND not_rtlc10n128 ;
   rtlcn454 <= cycles(0) AND not_rtlc3_copy_n65 ;
   rtlcn456 <= rtlc2n261 AND rtlc3_copy_n98 ;
   rtlcn458 <= cycles(0) AND rtlc3_copy_n65 ;
   rtlcn460 <= rtlc2_P5_SS0_n106 AND rtlc3_copy_n82 ;
   rtlcn463 <= rtlc2_P11_SS0_n154 AND rtlc3_copy_n114 ;
   rtlc_570_or_57 : or_4u_4u port map ( a(3)=>rtlcn456, a(2)=>rtlcn458, a(1)
      =>rtlcn460, a(0)=>rtlcn463, d=>rtlcn427);
   not_rtlc10n106 <= NOT rtlc10n106 ;
   rtlcn431 <= not_rtlc10n128 OR not_rtlc10n106 ;
   not_rtlcn393 <= NOT rtlcn393 ;
   not_rtlcn481 <= NOT rtlcn481 ;
   rtlc3_copy_n62_3 <= g(0) when not_rtlc3_copy_n65 = '1' else b(0) ;
   rtlc3_copy_n62_4 <= g(1) when not_rtlc3_copy_n65 = '1' else b(1) ;
   rtlc3_copy_n62_5 <= g(2) when not_rtlc3_copy_n65 = '1' else b(2) ;
   rtlc3_copy_n62_6 <= g(3) when not_rtlc3_copy_n65 = '1' else b(3) ;
   rtlc3_copy_n62_7 <= g(4) when not_rtlc3_copy_n65 = '1' else b(4) ;
   rtlc3_copy_n62_8 <= g(5) when not_rtlc3_copy_n65 = '1' else b(5) ;
   rtlc3_copy_n62_9 <= g(6) when not_rtlc3_copy_n65 = '1' else b(6) ;
   rtlc3_copy_n62_10 <= g(7) when not_rtlc3_copy_n65 = '1' else b(7) ;
   rtlc3_copy_n79_3 <= a(0) when nx80 = '1' else d(0) ;
   rtlc3_copy_n79_4 <= a(1) when nx80 = '1' else d(1) ;
   rtlc3_copy_n79_5 <= a(2) when nx80 = '1' else d(2) ;
   rtlc3_copy_n79_6 <= a(3) when nx80 = '1' else d(3) ;
   rtlc3_copy_n79_7 <= a(4) when nx80 = '1' else d(4) ;
   rtlc3_copy_n79_8 <= a(5) when nx80 = '1' else d(5) ;
   rtlc3_copy_n79_9 <= a(6) when nx80 = '1' else d(6) ;
   rtlc3_copy_n79_10 <= a(7) when nx80 = '1' else d(7) ;
   rtlc3_copy_n95_3 <= c(0) when nx85 = '1' else f(0) ;
   rtlc3_copy_n95_4 <= c(1) when nx85 = '1' else f(1) ;
   rtlc3_copy_n95_5 <= c(2) when nx85 = '1' else f(2) ;
   rtlc3_copy_n95_6 <= c(3) when nx85 = '1' else f(3) ;
   rtlc3_copy_n95_7 <= c(4) when nx85 = '1' else f(4) ;
   rtlc3_copy_n95_8 <= c(5) when nx85 = '1' else f(5) ;
   rtlc3_copy_n95_9 <= c(6) when nx85 = '1' else f(6) ;
   rtlc3_copy_n95_10 <= c(7) when nx85 = '1' else f(7) ;
   rtlc3_copy_n111_3 <= e(0) when nx90 = '1' else h(0) ;
   rtlc3_copy_n111_4 <= e(1) when nx90 = '1' else h(1) ;
   rtlc3_copy_n111_5 <= e(2) when nx90 = '1' else h(2) ;
   rtlc3_copy_n111_6 <= e(3) when nx90 = '1' else h(3) ;
   rtlc3_copy_n111_7 <= e(4) when nx90 = '1' else h(4) ;
   rtlc3_copy_n111_8 <= e(5) when nx90 = '1' else h(5) ;
   rtlc3_copy_n111_9 <= e(6) when nx90 = '1' else h(6) ;
   rtlc3_copy_n111_10 <= e(7) when nx90 = '1' else h(7) ;
   reg4_15n2ss1(0) <= reg2(0) when cycles(1) = '1' else add3(0) ;
   reg4_15n2ss1(1) <= reg2(1) when cycles(1) = '1' else add3(1) ;
   reg4_15n2ss1(2) <= reg2(2) when cycles(1) = '1' else add3(2) ;
   reg4_15n2ss1(3) <= reg2(3) when cycles(1) = '1' else add3(3) ;
   reg4_15n2ss1(4) <= reg2(4) when cycles(1) = '1' else add3(4) ;
   reg4_15n2ss1(5) <= reg2(5) when cycles(1) = '1' else add3(5) ;
   reg4_15n2ss1(6) <= reg2(6) when cycles(1) = '1' else add3(6) ;
   reg4_15n2ss1(7) <= reg2(7) when cycles(1) = '1' else add3(7) ;
   reg4_15n2ss1(8) <= reg2(8) when cycles(1) = '1' else add3(8) ;
   reg5_16n2ss1(0) <= reg3_dir(0) when cycles(2) = '1' else max2_dir(0) ;
   reg5_16n2ss1(1) <= reg3_dir(1) when cycles(2) = '1' else max2_dir(1) ;
   reg5_16n2ss1(2) <= reg3_dir(2) when cycles(2) = '1' else max2_dir(2) ;
   reg5_16n2ss1(3) <= reg3_val(0) when cycles(2) = '1' else max2_val(0) ;
   reg5_16n2ss1(4) <= reg3_val(1) when cycles(2) = '1' else max2_val(1) ;
   reg5_16n2ss1(5) <= reg3_val(2) when cycles(2) = '1' else max2_val(2) ;
   reg5_16n2ss1(6) <= reg3_val(3) when cycles(2) = '1' else max2_val(3) ;
   reg5_16n2ss1(7) <= reg3_val(4) when cycles(2) = '1' else max2_val(4) ;
   reg5_16n2ss1(8) <= reg3_val(5) when cycles(2) = '1' else max2_val(5) ;
   reg5_16n2ss1(9) <= reg3_val(6) when cycles(2) = '1' else max2_val(6) ;
   reg5_16n2ss1(10) <= reg3_val(7) when cycles(2) = '1' else max2_val(7) ;
   reg5_16n2ss1(11) <= reg3_val(8) when cycles(2) = '1' else max2_val(8) ;
   reg8_17n4ss1_10 <= add4_7 when cycles(5) = '1' else sub1_7 ;
   reg8_17n4ss1_11 <= add4_8 when cycles(5) = '1' else sub1_8 ;
   reg8_17n4ss1_12 <= add4_9 when cycles(5) = '1' else sub1_9 ;
   reg8_17n4ss1_13 <= add4_10 when cycles(5) = '1' else sub1_10 ;
   reg8_17n4ss1_14 <= add4_11 when cycles(5) = '1' else sub1_11 ;
   reg8_17n4ss1_15 <= add4_12 when cycles(5) = '1' else sub1_12 ;
   reg8_17n4ss1_16 <= add4_13 when cycles(5) = '1' else sub1_12 ;
   rtlc10n281 <= i_valid AND rtlc10n106 ;
   rtlc10n279 <= i_valid AND o_mode_1_EXMPLR177 ;
   not_cycles_4 <= NOT cycles(4) ;
   not_cycles_1 <= NOT cycles(1) ;
   rtlc15n80 <= cycles(4) AND not_cycles_1 ;
   rtlc15n60 <= not_cycles_4 OR cycles(1) ;
   not_cycles_5 <= NOT cycles(5) ;
   not_cycles_6 <= NOT cycles(6) ;
   rtlc17n202 <= cycles(5) OR cycles(6) ;
   not_rtlcn321 <= NOT rtlcn321 ;
   rtlcn488 <= not_rtlcn321 AND rtlc16n32 ;
   rtlcn324 <= cycles(2) OR rtlcn488 ;
   not_cycles_2 <= NOT cycles(2) ;
   rtlcn489 <= cycles(1) OR cycles(3) ;
   not_rtlcn489 <= NOT rtlcn489 ;
   rtlcn491 <= not_cycles_1 AND cycles(2) ;
   rtlc_810_and_61 : and_8u_8u port map ( a(7)=>o_row_EXMPLR198(7), a(6)=>
      o_row_EXMPLR198(6), a(5)=>o_row_EXMPLR198(5), a(4)=>o_row_EXMPLR198(4), 
      a(3)=>o_row_EXMPLR198(3), a(2)=>o_row_EXMPLR198(2), a(1)=>
      o_row_EXMPLR198(1), a(0)=>o_row_EXMPLR198(0), d=>rtlc10n128);
   rtlcn481 <= rtlc10n272 OR rtlc10n128 ;
   not_rtlc10n272 <= NOT rtlc10n272 ;
   reg8_17n4ss1_17 <= sub1_12 AND not_cycles_5 ;
   rtlcn492 <= reset OR i_valid ;
   rtlc_920_gt_62 : gt_9u_9u port map ( a(8)=>reg3_val(8), a(7)=>reg3_val(7), 
      a(6)=>reg3_val(6), a(5)=>reg3_val(5), a(4)=>reg3_val(4), a(3)=>
      reg3_val(3), a(2)=>reg3_val(2), a(1)=>reg3_val(1), a(0)=>reg3_val(0), 
      b(8)=>reg5_val(8), b(7)=>reg5_val(7), b(6)=>reg5_val(6), b(5)=>
      reg5_val(5), b(4)=>reg5_val(4), b(3)=>reg5_val(3), b(2)=>reg5_val(2), 
      b(1)=>reg5_val(1), b(0)=>reg5_val(0), d=>nx399);
   rtlc8_copy_n49 <= NOT nx399 ;
   rtlc_936_gt_63 : gt_9u_9u port map ( a(8)=>reg6_val(8), a(7)=>reg6_val(7), 
      a(6)=>reg6_val(6), a(5)=>reg6_val(5), a(4)=>reg6_val(4), a(3)=>
      reg6_val(3), a(2)=>reg6_val(2), a(1)=>reg6_val(1), a(0)=>reg6_val(0), 
      b(8)=>reg5_val(8), b(7)=>reg5_val(7), b(6)=>reg5_val(6), b(5)=>
      reg5_val(5), b(4)=>reg5_val(4), b(3)=>reg5_val(3), b(2)=>reg5_val(2), 
      b(1)=>reg5_val(1), b(0)=>reg5_val(0), d=>nx402);
   rtlc8_copy_n71 <= NOT nx402 ;
   modgen_counter_o_row : counter_up_cnt_en_sclear_clock_0_8_cx0_kirsch
       port map ( clock=>clk, q(7)=>o_row_EXMPLR198(7), q(6)=>
      o_row_EXMPLR198(6), q(5)=>o_row_EXMPLR198(5), q(4)=>o_row_EXMPLR198(4), 
      q(3)=>o_row_EXMPLR198(3), q(2)=>o_row_EXMPLR198(2), q(1)=>
      o_row_EXMPLR198(1), q(0)=>o_row_EXMPLR198(0), clk_en=>PWR, aclear=>GND, 
      sload=>GND, data(7)=>DANGLING(0,2), data(6)=>DANGLING(0,3), data(5)=>
      DANGLING(0,4), data(4)=>DANGLING(0,5), data(3)=>DANGLING(0,6), data(2)
      =>DANGLING(0,7), data(1)=>DANGLING(0,8), data(0)=>DANGLING(0,9), aset
      =>GND, sclear=>reset, updn=>PWR, cnt_en=>rtlc10n281);
   modgen_counter_o_col : counter_up_sclear_clock_clk_en_0_8_cx1_kirsch
       port map ( clock=>clk, q(7)=>o_col_EXMPLR199(7), q(6)=>
      o_col_EXMPLR199(6), q(5)=>o_col_EXMPLR199(5), q(4)=>o_col_EXMPLR199(4), 
      q(3)=>o_col_EXMPLR199(3), q(2)=>o_col_EXMPLR199(2), q(1)=>
      o_col_EXMPLR199(1), q(0)=>o_col_EXMPLR199(0), clk_en=>rtlcn492, aclear
      =>GND, sload=>GND, data(7)=>DANGLING(0,10), data(6)=>DANGLING(0,11), 
      data(5)=>DANGLING(0,12), data(4)=>DANGLING(0,13), data(3)=>
      DANGLING(0,14), data(2)=>DANGLING(0,15), data(1)=>DANGLING(0,16), 
      data(0)=>DANGLING(0,17), aset=>GND, sclear=>rtlc10n250, updn=>PWR, 
      cnt_en=>PWR);
   rtlc_1735_and_64 : and_8u_8u port map ( a(7)=>o_col_EXMPLR199(7), a(6)=>
      o_col_EXMPLR199(6), a(5)=>o_col_EXMPLR199(5), a(4)=>o_col_EXMPLR199(4), 
      a(3)=>o_col_EXMPLR199(3), a(2)=>o_col_EXMPLR199(2), a(1)=>
      o_col_EXMPLR199(1), a(0)=>o_col_EXMPLR199(0), d=>rtlc10n106);
   rtlc2n0_add8_2i17 : add_8u_8u_8u_0_0 port map ( cin=>GND, a(7)=>
      rtlc2n0_2n1s5f1(7), a(6)=>rtlc2n0_2n1s5f1(6), a(5)=>rtlc2n0_2n1s5f1(5), 
      a(4)=>rtlc2n0_2n1s5f1(4), a(3)=>rtlc2n0_2n1s5f1(3), a(2)=>
      rtlc2n0_2n1s5f1(2), a(1)=>rtlc2n0_2n1s5f1(1), a(0)=>rtlc2n0_2n1s5f1(0), 
      b(7)=>rtlc2n0_2n1s5f2(7), b(6)=>rtlc2n0_2n1s5f2(6), b(5)=>
      rtlc2n0_2n1s5f2(5), b(4)=>rtlc2n0_2n1s5f2(4), b(3)=>rtlc2n0_2n1s5f2(3), 
      b(2)=>rtlc2n0_2n1s5f2(2), b(1)=>rtlc2n0_2n1s5f2(1), b(0)=>
      rtlc2n0_2n1s5f2(0), d(7)=>rtlc2n0_2n1s5(7), d(6)=>rtlc2n0_2n1s5(6), 
      d(5)=>rtlc2n0_2n1s5(5), d(4)=>rtlc2n0_2n1s5(4), d(3)=>rtlc2n0_2n1s5(3), 
      d(2)=>rtlc2n0_2n1s5(2), d(1)=>rtlc2n0_2n1s5(1), d(0)=>rtlc2n0_2n1s5(0), 
      cout=>rtlc2n0_2n1s5(8));
   add4_add12_17i8 : add_12u_12u_12u_0_0 port map ( cin=>GND, a(11)=>GND, 
      a(10)=>reg7(11), a(9)=>reg7(10), a(8)=>reg7(9), a(7)=>reg7(8), a(6)=>
      reg7(7), a(5)=>reg7(6), a(4)=>reg7(5), a(3)=>reg7(4), a(2)=>reg7(3), 
      a(1)=>reg7(2), a(0)=>reg7(1), b(11)=>reg7(11), b(10)=>reg7(10), b(9)=>
      reg7(9), b(8)=>reg7(8), b(7)=>reg7(7), b(6)=>reg7(6), b(5)=>reg7(5), 
      b(4)=>reg7(4), b(3)=>reg7(3), b(2)=>reg7(2), b(1)=>reg7(1), b(0)=>
      reg7(0), d(11)=>add4_17n1s1_12, d(10)=>add4_17n1s1_11, d(9)=>
      add4_17n1s1_10, d(8)=>add4_17n1s1_9, d(7)=>add4_17n1s1_8, d(6)=>
      add4_17n1s1_7, d(5)=>DANGLING(0,18), d(4)=>DANGLING(0,19), d(3)=>
      DANGLING(0,20), d(2)=>DANGLING(0,21), d(1)=>DANGLING(0,22), d(0)=>
      DANGLING(0,23), cout=>add4_17n1s1_13);
   sub1_17n1s1_16 <= NOT rtlcn7162 ;
   not_rtlc16n32 <= NOT rtlc16n32 ;
   rtlc_3320_select_68 : select_3_3 port map ( a(2)=>rtlc8n22, a(1)=>
      rtlc8_P5_SS0_n36, a(0)=>not_rtlc16n32, b(2)=>rtlc8_copy_n49, b(1)=>
      rtlc8_copy_n71, b(0)=>GND, d=>rtlcn321);
   DFFRSE (rtlcn407,GND,reset,rtlc10n281,clk,row_state(1)) ;
   DFFRSE (not_rtlcn481,GND,reset,rtlc10n281,clk,row_state(0)) ;
   DFFPCE (rtlcn431,GND,GND,rtlc10n279,clk,on_stage1) ;
   DFFPCE (i_pixel(7),GND,GND,i_valid,clk,e(7)) ;
   DFFPCE (i_pixel(6),GND,GND,i_valid,clk,e(6)) ;
   DFFPCE (i_pixel(5),GND,GND,i_valid,clk,e(5)) ;
   DFFPCE (i_pixel(4),GND,GND,i_valid,clk,e(4)) ;
   DFFPCE (i_pixel(3),GND,GND,i_valid,clk,e(3)) ;
   DFFPCE (i_pixel(2),GND,GND,i_valid,clk,e(2)) ;
   DFFPCE (i_pixel(1),GND,GND,i_valid,clk,e(1)) ;
   DFFPCE (i_pixel(0),GND,GND,i_valid,clk,e(0)) ;
   DFFPCE (d_11n4ss1(7),GND,GND,i_valid,clk,d(7)) ;
   DFFPCE (d_11n4ss1(6),GND,GND,i_valid,clk,d(6)) ;
   DFFPCE (d_11n4ss1(5),GND,GND,i_valid,clk,d(5)) ;
   DFFPCE (d_11n4ss1(4),GND,GND,i_valid,clk,d(4)) ;
   DFFPCE (d_11n4ss1(3),GND,GND,i_valid,clk,d(3)) ;
   DFFPCE (d_11n4ss1(2),GND,GND,i_valid,clk,d(2)) ;
   DFFPCE (d_11n4ss1(1),GND,GND,i_valid,clk,d(1)) ;
   DFFPCE (d_11n4ss1(0),GND,GND,i_valid,clk,d(0)) ;
   DFFPCE (c_11n2ss1(7),GND,GND,i_valid,clk,c(7)) ;
   DFFPCE (c_11n2ss1(6),GND,GND,i_valid,clk,c(6)) ;
   DFFPCE (c_11n2ss1(5),GND,GND,i_valid,clk,c(5)) ;
   DFFPCE (c_11n2ss1(4),GND,GND,i_valid,clk,c(4)) ;
   DFFPCE (c_11n2ss1(3),GND,GND,i_valid,clk,c(3)) ;
   DFFPCE (c_11n2ss1(2),GND,GND,i_valid,clk,c(2)) ;
   DFFPCE (c_11n2ss1(1),GND,GND,i_valid,clk,c(1)) ;
   DFFPCE (c_11n2ss1(0),GND,GND,i_valid,clk,c(0)) ;
   DFFPCE (e(7),GND,GND,i_valid,clk,f(7)) ;
   DFFPCE (e(6),GND,GND,i_valid,clk,f(6)) ;
   DFFPCE (e(5),GND,GND,i_valid,clk,f(5)) ;
   DFFPCE (e(4),GND,GND,i_valid,clk,f(4)) ;
   DFFPCE (e(3),GND,GND,i_valid,clk,f(3)) ;
   DFFPCE (e(2),GND,GND,i_valid,clk,f(2)) ;
   DFFPCE (e(1),GND,GND,i_valid,clk,f(1)) ;
   DFFPCE (e(0),GND,GND,i_valid,clk,f(0)) ;
   DFFPCE (f(7),GND,GND,i_valid,clk,g(7)) ;
   DFFPCE (f(6),GND,GND,i_valid,clk,g(6)) ;
   DFFPCE (f(5),GND,GND,i_valid,clk,g(5)) ;
   DFFPCE (f(4),GND,GND,i_valid,clk,g(4)) ;
   DFFPCE (f(3),GND,GND,i_valid,clk,g(3)) ;
   DFFPCE (f(2),GND,GND,i_valid,clk,g(2)) ;
   DFFPCE (f(1),GND,GND,i_valid,clk,g(1)) ;
   DFFPCE (f(0),GND,GND,i_valid,clk,g(0)) ;
   DFFPCE (d(7),GND,GND,i_valid,clk,i(7)) ;
   DFFPCE (d(6),GND,GND,i_valid,clk,i(6)) ;
   DFFPCE (d(5),GND,GND,i_valid,clk,i(5)) ;
   DFFPCE (d(4),GND,GND,i_valid,clk,i(4)) ;
   DFFPCE (d(3),GND,GND,i_valid,clk,i(3)) ;
   DFFPCE (d(2),GND,GND,i_valid,clk,i(2)) ;
   DFFPCE (d(1),GND,GND,i_valid,clk,i(1)) ;
   DFFPCE (d(0),GND,GND,i_valid,clk,i(0)) ;
   DFFPCE (i(7),GND,GND,i_valid,clk,h(7)) ;
   DFFPCE (i(6),GND,GND,i_valid,clk,h(6)) ;
   DFFPCE (i(5),GND,GND,i_valid,clk,h(5)) ;
   DFFPCE (i(4),GND,GND,i_valid,clk,h(4)) ;
   DFFPCE (i(3),GND,GND,i_valid,clk,h(3)) ;
   DFFPCE (i(2),GND,GND,i_valid,clk,h(2)) ;
   DFFPCE (i(1),GND,GND,i_valid,clk,h(1)) ;
   DFFPCE (i(0),GND,GND,i_valid,clk,h(0)) ;
   DFFPCE (c(7),GND,GND,i_valid,clk,b(7)) ;
   DFFPCE (c(6),GND,GND,i_valid,clk,b(6)) ;
   DFFPCE (c(5),GND,GND,i_valid,clk,b(5)) ;
   DFFPCE (c(4),GND,GND,i_valid,clk,b(4)) ;
   DFFPCE (c(3),GND,GND,i_valid,clk,b(3)) ;
   DFFPCE (c(2),GND,GND,i_valid,clk,b(2)) ;
   DFFPCE (c(1),GND,GND,i_valid,clk,b(1)) ;
   DFFPCE (c(0),GND,GND,i_valid,clk,b(0)) ;
   DFFPCE (b(7),GND,GND,i_valid,clk,a(7)) ;
   DFFPCE (b(6),GND,GND,i_valid,clk,a(6)) ;
   DFFPCE (b(5),GND,GND,i_valid,clk,a(5)) ;
   DFFPCE (b(4),GND,GND,i_valid,clk,a(4)) ;
   DFFPCE (b(3),GND,GND,i_valid,clk,a(3)) ;
   DFFPCE (b(2),GND,GND,i_valid,clk,a(2)) ;
   DFFPCE (b(1),GND,GND,i_valid,clk,a(1)) ;
   DFFPCE (b(0),GND,GND,i_valid,clk,a(0)) ;
   DFFRSE (cycles(6),GND,reset,PWR,clk,o_valid_EXMPLR172) ;
   DFFRSE (cycles(5),GND,reset,PWR,clk,cycles(6)) ;
   DFFRSE (cycles(4),GND,reset,PWR,clk,cycles(5)) ;
   DFFRSE (cycles(3),GND,reset,PWR,clk,cycles(4)) ;
   DFFRSE (cycles(2),GND,reset,PWR,clk,cycles(3)) ;
   DFFRSE (cycles(1),GND,reset,PWR,clk,cycles(2)) ;
   DFFRSE (cycles(0),GND,reset,PWR,clk,cycles(1)) ;
   DFFRSE (rtlc12_cycles_D_n3_0,GND,reset,PWR,clk,cycles(0)) ;
   DFFPCE (max1_val(7),GND,GND,rtlc13n28,clk,reg1_val(7)) ;
   DFFPCE (max1_val(6),GND,GND,rtlc13n28,clk,reg1_val(6)) ;
   DFFPCE (max1_val(5),GND,GND,rtlc13n28,clk,reg1_val(5)) ;
   DFFPCE (max1_val(4),GND,GND,rtlc13n28,clk,reg1_val(4)) ;
   DFFPCE (max1_val(3),GND,GND,rtlc13n28,clk,reg1_val(3)) ;
   DFFPCE (max1_val(2),GND,GND,rtlc13n28,clk,reg1_val(2)) ;
   DFFPCE (max1_val(1),GND,GND,rtlc13n28,clk,reg1_val(1)) ;
   DFFPCE (max1_val(0),GND,GND,rtlc13n28,clk,reg1_val(0)) ;
   DFFPCE (rtlcn427,GND,GND,rtlc13n28,clk,reg1_dir(2)) ;
   DFFPCE (not_rtlcn393,GND,GND,rtlc13n28,clk,reg1_dir(1)) ;
   DFFPCE (rtlcn415,GND,GND,rtlc13n28,clk,reg1_dir(0)) ;
   DFFPCE (add2(8),GND,GND,not_cycles_4,clk,reg3_val(8)) ;
   DFFPCE (add2(7),GND,GND,not_cycles_4,clk,reg3_val(7)) ;
   DFFPCE (add2(6),GND,GND,not_cycles_4,clk,reg3_val(6)) ;
   DFFPCE (add2(5),GND,GND,not_cycles_4,clk,reg3_val(5)) ;
   DFFPCE (add2(4),GND,GND,not_cycles_4,clk,reg3_val(4)) ;
   DFFPCE (add2(3),GND,GND,not_cycles_4,clk,reg3_val(3)) ;
   DFFPCE (add2(2),GND,GND,not_cycles_4,clk,reg3_val(2)) ;
   DFFPCE (add2(1),GND,GND,not_cycles_4,clk,reg3_val(1)) ;
   DFFPCE (add2(0),GND,GND,not_cycles_4,clk,reg3_val(0)) ;
   DFFPCE (reg1_dir(2),GND,GND,not_cycles_4,clk,reg3_dir(2)) ;
   DFFPCE (reg1_dir(1),GND,GND,not_cycles_4,clk,reg3_dir(1)) ;
   DFFPCE (reg1_dir(0),GND,GND,not_cycles_4,clk,reg3_dir(0)) ;
   DFFPCE (add2(8),GND,GND,cycles(4),clk,reg6_val(8)) ;
   DFFPCE (add2(7),GND,GND,cycles(4),clk,reg6_val(7)) ;
   DFFPCE (add2(6),GND,GND,cycles(4),clk,reg6_val(6)) ;
   DFFPCE (add2(5),GND,GND,cycles(4),clk,reg6_val(5)) ;
   DFFPCE (add2(4),GND,GND,cycles(4),clk,reg6_val(4)) ;
   DFFPCE (add2(3),GND,GND,cycles(4),clk,reg6_val(3)) ;
   DFFPCE (add2(2),GND,GND,cycles(4),clk,reg6_val(2)) ;
   DFFPCE (add2(1),GND,GND,cycles(4),clk,reg6_val(1)) ;
   DFFPCE (add2(0),GND,GND,cycles(4),clk,reg6_val(0)) ;
   DFFPCE (reg1_dir(2),GND,GND,cycles(4),clk,reg6_dir(2)) ;
   DFFPCE (reg1_dir(1),GND,GND,cycles(4),clk,reg6_dir(1)) ;
   DFFPCE (reg1_dir(0),GND,GND,cycles(4),clk,reg6_dir(0)) ;
   DFFPC (on_stage1,GND,GND,clk,on_stage2) ;
   DFFPCE (add3(11),GND,GND,rtlc15n80,clk,reg7(11)) ;
   DFFPCE (add3(10),GND,GND,rtlc15n80,clk,reg7(10)) ;
   DFFPCE (add3(9),GND,GND,rtlc15n80,clk,reg7(9)) ;
   DFFPCE (add3(8),GND,GND,rtlc15n80,clk,reg7(8)) ;
   DFFPCE (add3(7),GND,GND,rtlc15n80,clk,reg7(7)) ;
   DFFPCE (add3(6),GND,GND,rtlc15n80,clk,reg7(6)) ;
   DFFPCE (add3(5),GND,GND,rtlc15n80,clk,reg7(5)) ;
   DFFPCE (add3(4),GND,GND,rtlc15n80,clk,reg7(4)) ;
   DFFPCE (add3(3),GND,GND,rtlc15n80,clk,reg7(3)) ;
   DFFPCE (add3(2),GND,GND,rtlc15n80,clk,reg7(2)) ;
   DFFPCE (add3(1),GND,GND,rtlc15n80,clk,reg7(1)) ;
   DFFPCE (add3(0),GND,GND,rtlc15n80,clk,reg7(0)) ;
   DFFRSE (add3(11),GND,cycles(1),not_cycles_4,clk,reg4(11)) ;
   DFFRSE (add3(10),GND,cycles(1),not_cycles_4,clk,reg4(10)) ;
   DFFRSE (add3(9),GND,cycles(1),not_cycles_4,clk,reg4(9)) ;
   DFFPCE (reg4_15n2ss1(8),GND,GND,rtlc15n60,clk,reg4(8)) ;
   DFFPCE (reg4_15n2ss1(7),GND,GND,rtlc15n60,clk,reg4(7)) ;
   DFFPCE (reg4_15n2ss1(6),GND,GND,rtlc15n60,clk,reg4(6)) ;
   DFFPCE (reg4_15n2ss1(5),GND,GND,rtlc15n60,clk,reg4(5)) ;
   DFFPCE (reg4_15n2ss1(4),GND,GND,rtlc15n60,clk,reg4(4)) ;
   DFFPCE (reg4_15n2ss1(3),GND,GND,rtlc15n60,clk,reg4(3)) ;
   DFFPCE (reg4_15n2ss1(2),GND,GND,rtlc15n60,clk,reg4(2)) ;
   DFFPCE (reg4_15n2ss1(1),GND,GND,rtlc15n60,clk,reg4(1)) ;
   DFFPCE (reg4_15n2ss1(0),GND,GND,rtlc15n60,clk,reg4(0)) ;
   DFFPC (on_stage2,GND,GND,clk,on_stage3) ;
   DFFRSE (reg5_dir(2),GND,rtlc17n179,rtlc17n206,clk,o_dir(2)) ;
   DFFRSE (reg5_dir(1),GND,rtlc17n179,rtlc17n206,clk,o_dir(1)) ;
   DFFRSE (reg5_dir(0),GND,rtlc17n179,rtlc17n206,clk,o_dir(0)) ;
   DFFPCE (rtlc17n316,GND,GND,rtlc17n206,clk,o_edge) ;
   DFFPCE (reg8_17n4ss1_17,GND,GND,rtlc17n202,clk,reg8_val_14) ;
   DFFPCE (reg8_17n4ss1_16,GND,GND,rtlc17n202,clk,reg8_val_13) ;
   DFFPCE (reg8_17n4ss1_15,GND,GND,rtlc17n202,clk,reg8_val_12) ;
   DFFPCE (reg8_17n4ss1_14,GND,GND,rtlc17n202,clk,reg8_val_11) ;
   DFFPCE (reg8_17n4ss1_13,GND,GND,rtlc17n202,clk,reg8_val_10) ;
   DFFPCE (reg8_17n4ss1_12,GND,GND,rtlc17n202,clk,reg8_val_9) ;
   DFFPCE (reg8_17n4ss1_11,GND,GND,rtlc17n202,clk,reg8_val_8) ;
   DFFPCE (reg8_17n4ss1_10,GND,GND,rtlc17n202,clk,reg8_val_7) ;
   DFFPC (sub1_17n1s1_16,GND,GND,clk,sub1_12) ;
   DFFPC (sub1_17n1s1_11,GND,GND,clk,sub1_11) ;
   DFFPC (sub1_17n1s1_10,GND,GND,clk,sub1_10) ;
   DFFPC (sub1_17n1s1_9,GND,GND,clk,sub1_9) ;
   DFFPC (sub1_17n1s1_8,GND,GND,clk,sub1_8) ;
   DFFPC (sub1_17n1s1_7,GND,GND,clk,sub1_7) ;
   DFFPC (add4_17n1s1_13,GND,GND,clk,add4_13) ;
   DFFPC (add4_17n1s1_12,GND,GND,clk,add4_12) ;
   DFFPC (add4_17n1s1_11,GND,GND,clk,add4_11) ;
   DFFPC (add4_17n1s1_10,GND,GND,clk,add4_10) ;
   DFFPC (add4_17n1s1_9,GND,GND,clk,add4_9) ;
   DFFPC (add4_17n1s1_8,GND,GND,clk,add4_8) ;
   DFFPC (add4_17n1s1_7,GND,GND,clk,add4_7) ;
   DFFPCE (reg5_16n2ss1(10),GND,GND,rtlcn324,clk,reg5_val(7)) ;
   DFFPCE (reg5_16n2ss1(9),GND,GND,rtlcn324,clk,reg5_val(6)) ;
   DFFPCE (reg5_16n2ss1(8),GND,GND,rtlcn324,clk,reg5_val(5)) ;
   DFFPCE (reg5_16n2ss1(7),GND,GND,rtlcn324,clk,reg5_val(4)) ;
   DFFPCE (reg5_16n2ss1(6),GND,GND,rtlcn324,clk,reg5_val(3)) ;
   DFFPCE (reg5_16n2ss1(5),GND,GND,rtlcn324,clk,reg5_val(2)) ;
   DFFPCE (reg5_16n2ss1(4),GND,GND,rtlcn324,clk,reg5_val(1)) ;
   DFFPCE (reg5_16n2ss1(3),GND,GND,rtlcn324,clk,reg5_val(0)) ;
   DFFPCE (reg5_16n2ss1(11),GND,GND,rtlcn324,clk,reg5_val(8)) ;
   DFFPCE (reg5_16n2ss1(0),GND,GND,rtlcn324,clk,reg5_dir(0)) ;
   DFFPCE (reg5_16n2ss1(1),GND,GND,rtlcn324,clk,reg5_dir(1)) ;
   DFFPCE (reg5_16n2ss1(2),GND,GND,rtlcn324,clk,reg5_dir(2)) ;
   DFFPCE (rtlc2n0_2n1s5(8),GND,GND,rtlc13n28,clk,reg2(8)) ;
   DFFPCE (rtlc2n0_2n1s5(7),GND,GND,rtlc13n28,clk,reg2(7)) ;
   DFFPCE (rtlc2n0_2n1s5(6),GND,GND,rtlc13n28,clk,reg2(6)) ;
   DFFPCE (rtlc2n0_2n1s5(5),GND,GND,rtlc13n28,clk,reg2(5)) ;
   DFFPCE (rtlc2n0_2n1s5(4),GND,GND,rtlc13n28,clk,reg2(4)) ;
   DFFPCE (rtlc2n0_2n1s5(3),GND,GND,rtlc13n28,clk,reg2(3)) ;
   DFFPCE (rtlc2n0_2n1s5(2),GND,GND,rtlc13n28,clk,reg2(2)) ;
   DFFPCE (rtlc2n0_2n1s5(1),GND,GND,rtlc13n28,clk,reg2(1)) ;
   DFFPCE (rtlc2n0_2n1s5(0),GND,GND,rtlc13n28,clk,reg2(0)) ;
   rtlc2n261 <= rtlc_66_and_46_nx0 AND cycles(2) ;
   rtlc_66_and_46_nx0 <= not_cycles_0 AND not_cycles_1 ;
   rtlc2n260 <= rtlc_66_and_46_nx0 AND not_cycles_2 ;
   rtlc_562_or_56_nx0 <= rtlc2_P11_SS0_n154 OR rtlcn454 ;
   rtlcn415 <= rtlc_562_or_56_nx0 OR rtlcn456 ;
   rtlc_795_and_59_nx0 <= not_cycles_5 AND not_cycles_6 ;
   rtlc17n206 <= rtlc_795_and_59_nx0 AND o_valid_EXMPLR172 ;
   rtlc_806_or_60_nx0 <= cycles(0) OR not_rtlcn489 ;
   rtlcn393 <= rtlc_806_or_60_nx0 OR rtlcn491 ;
   NOT_reg7_0 <= NOT reg7(0) ;
   sub1_sub12_17i9 : sub_11u_11u_11u_0 port map ( cin=>NOT_reg7_0, a(10)=>
      reg5_val(8), a(9)=>reg5_val(7), a(8)=>reg5_val(6), a(7)=>reg5_val(5), 
      a(6)=>reg5_val(4), a(5)=>reg5_val(3), a(4)=>reg5_val(2), a(3)=>
      reg5_val(1), a(2)=>reg5_val(0), a(1)=>GND, a(0)=>GND, b(10)=>reg7(11), 
      b(9)=>reg7(10), b(8)=>reg7(9), b(7)=>reg7(8), b(6)=>reg7(7), b(5)=>
      reg7(6), b(4)=>reg7(5), b(3)=>reg7(4), b(2)=>reg7(3), b(1)=>reg7(2), 
      b(0)=>reg7(1), d(10)=>sub1_17n1s1_11, d(9)=>sub1_17n1s1_10, d(8)=>
      sub1_17n1s1_9, d(7)=>sub1_17n1s1_8, d(6)=>sub1_17n1s1_7, d(5)=>
      DANGLING(0,24), d(4)=>DANGLING(0,25), d(3)=>DANGLING(0,26), d(2)=>
      DANGLING(0,27), d(1)=>DANGLING(0,28), d(0)=>DANGLING(0,29), cout=>
      rtlcn7162);
   d_11n4ss1(0) <= o_mems_0(0) when row_state(0) = '1' else nx1508 ;
   nx1508 <= o_mems_1(0) when row_state(1) = '1' else o_mems_2(0) ;
   d_11n4ss1(1) <= o_mems_0(1) when row_state(0) = '1' else nx1514 ;
   nx1514 <= o_mems_1(1) when row_state(1) = '1' else o_mems_2(1) ;
   d_11n4ss1(2) <= o_mems_0(2) when row_state(0) = '1' else nx1520 ;
   nx1520 <= o_mems_1(2) when row_state(1) = '1' else o_mems_2(2) ;
   d_11n4ss1(3) <= o_mems_0(3) when row_state(0) = '1' else nx1526 ;
   nx1526 <= o_mems_1(3) when row_state(1) = '1' else o_mems_2(3) ;
   d_11n4ss1(4) <= o_mems_0(4) when row_state(0) = '1' else nx1532 ;
   nx1532 <= o_mems_1(4) when row_state(1) = '1' else o_mems_2(4) ;
   d_11n4ss1(5) <= o_mems_0(5) when row_state(0) = '1' else nx1538 ;
   nx1538 <= o_mems_1(5) when row_state(1) = '1' else o_mems_2(5) ;
   d_11n4ss1(6) <= o_mems_0(6) when row_state(0) = '1' else nx1544 ;
   nx1544 <= o_mems_1(6) when row_state(1) = '1' else o_mems_2(6) ;
   d_11n4ss1(7) <= o_mems_0(7) when row_state(0) = '1' else nx1550 ;
   nx1550 <= o_mems_1(7) when row_state(1) = '1' else o_mems_2(7) ;
   mem : ram_new_0_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      o_mems_0(7), rd_data1(6)=>o_mems_0(6), rd_data1(5)=>o_mems_0(5), 
      rd_data1(4)=>o_mems_0(4), rd_data1(3)=>o_mems_0(3), rd_data1(2)=>
      o_mems_0(2), rd_data1(1)=>o_mems_0(1), rd_data1(0)=>o_mems_0(0), 
      addr1(7)=>o_col_EXMPLR199(7), addr1(6)=>o_col_EXMPLR199(6), addr1(5)=>
      o_col_EXMPLR199(5), addr1(4)=>o_col_EXMPLR199(4), addr1(3)=>
      o_col_EXMPLR199(3), addr1(2)=>o_col_EXMPLR199(2), addr1(1)=>
      o_col_EXMPLR199(1), addr1(0)=>o_col_EXMPLR199(0), wr_clk1=>clk, 
      rd_clk1=>clk, wr_ena1=>rtlcP1, rd_ena1=>PWR, ena1=>PWR, rst1=>GND, 
      regce1=>PWR, regrst1=>GND);
   mem_0 : ram_new_1_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      o_mems_1(7), rd_data1(6)=>o_mems_1(6), rd_data1(5)=>o_mems_1(5), 
      rd_data1(4)=>o_mems_1(4), rd_data1(3)=>o_mems_1(3), rd_data1(2)=>
      o_mems_1(2), rd_data1(1)=>o_mems_1(1), rd_data1(0)=>o_mems_1(0), 
      addr1(7)=>o_col_EXMPLR199(7), addr1(6)=>o_col_EXMPLR199(6), addr1(5)=>
      o_col_EXMPLR199(5), addr1(4)=>o_col_EXMPLR199(4), addr1(3)=>
      o_col_EXMPLR199(3), addr1(2)=>o_col_EXMPLR199(2), addr1(1)=>
      o_col_EXMPLR199(1), addr1(0)=>o_col_EXMPLR199(0), wr_clk1=>clk, 
      rd_clk1=>clk, wr_ena1=>rtlcP2, rd_ena1=>PWR, ena1=>PWR, rst1=>GND, 
      regce1=>PWR, regrst1=>GND);
   mem_1 : ram_new_2_work_kirsch_main port map ( wr_data1(7)=>i_pixel(7), 
      wr_data1(6)=>i_pixel(6), wr_data1(5)=>i_pixel(5), wr_data1(4)=>
      i_pixel(4), wr_data1(3)=>i_pixel(3), wr_data1(2)=>i_pixel(2), 
      wr_data1(1)=>i_pixel(1), wr_data1(0)=>i_pixel(0), rd_data1(7)=>
      o_mems_2(7), rd_data1(6)=>o_mems_2(6), rd_data1(5)=>o_mems_2(5), 
      rd_data1(4)=>o_mems_2(4), rd_data1(3)=>o_mems_2(3), rd_data1(2)=>
      o_mems_2(2), rd_data1(1)=>o_mems_2(1), rd_data1(0)=>o_mems_2(0), 
      addr1(7)=>o_col_EXMPLR199(7), addr1(6)=>o_col_EXMPLR199(6), addr1(5)=>
      o_col_EXMPLR199(5), addr1(4)=>o_col_EXMPLR199(4), addr1(3)=>
      o_col_EXMPLR199(3), addr1(2)=>o_col_EXMPLR199(2), addr1(1)=>
      o_col_EXMPLR199(1), addr1(0)=>o_col_EXMPLR199(0), wr_clk1=>clk, 
      rd_clk1=>clk, wr_ena1=>rtlcP3, rd_ena1=>PWR, ena1=>PWR, rst1=>GND, 
      regce1=>PWR, regrst1=>GND);
   modgen_or_9 : or_7u_7u port map ( a(6)=>o_row_EXMPLR198(2), a(5)=>
      o_row_EXMPLR198(3), a(4)=>o_row_EXMPLR198(4), a(3)=>o_row_EXMPLR198(5), 
      a(2)=>o_row_EXMPLR198(6), a(1)=>o_row_EXMPLR198(7), a(0)=>
      o_row_EXMPLR198(1), d=>rtlcn43);
   modgen_or_10 : or_7u_7u port map ( a(6)=>o_col_EXMPLR199(2), a(5)=>
      o_col_EXMPLR199(3), a(4)=>o_col_EXMPLR199(4), a(3)=>o_col_EXMPLR199(5), 
      a(2)=>o_col_EXMPLR199(6), a(1)=>o_col_EXMPLR199(7), a(0)=>
      o_col_EXMPLR199(1), d=>rtlcn44);
   modgen_or_11 : or_6u_6u port map ( a(5)=>reg8_val_9, a(4)=>reg8_val_10, 
      a(3)=>reg8_val_11, a(2)=>reg8_val_12, a(1)=>reg8_val_13, a(0)=>
      rtlc17n313, d=>rtlc17n314);
end main ;

