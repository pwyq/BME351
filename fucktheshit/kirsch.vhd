
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.util.all;
--use work.kirsch_synth_pkg.all;

package state_pkg is
  subtype state_ty is std_logic_vector(2 downto 0);
  constant S0 : state_ty := "001";
  constant S1 : state_ty := "010";
  constant S2 : state_ty := "100";
end state_pkg;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.state_pkg.all;
use work.util.all;
--use work.directions.all;
use work.kirsch_synth_pkg.all;

entity kirsch is
  port(
    clk        : in  std_logic;                      
    reset      : in  std_logic;                      
    i_valid    : in  std_logic;                 
    i_pixel    : in  unsigned(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;	                     
    o_dir      : out direction_ty;
    o_mode     : out mode_ty;
    o_row      : out unsigned(7 downto 0);
    o_col      : out unsigned(7 downto 0)
  );  
end entity;

architecture main of kirsch is
	signal o_mem0 : std_logic_vector(7 downto 0);
	signal o_mem1 : std_logic_vector(7 downto 0);
	signal o_mem2 : std_logic_vector(7 downto 0);
	signal row_state, wr_ens : state_ty;

	signal col_counter : unsigned(7 downto 0);
	signal row_counter : unsigned(7 downto 0);

	signal first_pixel : std_logic_vector(7 downto 0);
	signal second_pixel : std_logic_vector(7 downto 0);
	signal a, b, c,
		   h, i, d,
		   g, f, e : std_logic_vector(7 downto 0);

	
	-- stage 1
	signal reg1, reg2 : std_logic_vector(7 downto 0);
	-- max1, add1
	-- i1,i2,i3,i4

	-- stage 2
	-- signal reg3, reg4 : std_logic_vector(10??????? downto 0);
	-- add2, add3

	--- stage 3
	-- signal reg5
	-- max2, shift1

	-- stage 4
	-- signal reg6, reg7
	-- add4, shift2
	-- sub1
	-- comp1
	
begin  
  
  -- wr_ens(0) <= i_valid;
  -- wr_ens(1) <= i_valid;
  -- wr_ens(2) <= i_valid;
--   wr_ens(0) <= i_valid and row_state(0) when reset = '0' else '0';
--   wr_ens(1) <= i_valid and row_state(1) when reset = '0' else '0';
--   wr_ens(2) <= i_valid and row_state(2) when reset = '0' else '0';

  mem_0 : entity work.mem(main)
  port map(
      address => col_counter,
      clock => clk,
	  data => std_logic_vector(i_pixel), -- input data
	  wren => i_valid and row_state(0),
      q => o_mem0						 -- output data
  );
  mem_1 : entity work.mem(main)
  port map(
      address => col_counter,
      clock => clk,
	  data => std_logic_vector(i_pixel),
	  wren => i_valid and row_state(1),
      q  => o_mem1
  );
  mem_2 : entity work.mem(main)
  port map(
      address => col_counter,
      clock => clk,
	  data => std_logic_vector(i_pixel),
	  wren => i_valid and row_state(2),
      q => o_mem2
  );

  updateState : process begin
		wait until rising_edge(clk);
		if (reset = '1') then
			-- reset stuff
			row_state <= S0;
			col_counter <= to_unsigned(0, 8);
			row_counter <= to_unsigned(0, 8);
		elsif (i_valid = '1') then
			if (col_counter = to_unsigned(255, 8)) then
				col_counter <= to_unsigned(0, 8);
				row_counter <= row_counter + 1;

				case (row_state) is
					when S0 =>
						row_state <= S1;
					when S1 =>
						row_state <= S2;
					when S2 =>
						row_state <= S0;
					when others =>
						row_state <= row_state;
				end case;
			else
				col_counter <= col_counter + 1;
			end if;
		end if;
  end process;

--   setRowPixels : process(o_mem0, o_mem1, o_mem2, row_state) begin
-- 		case row_state is
-- 			when S0 =>
-- 				first_pixel <= o_mem1;
-- 				second_pixel <= o_mem2;
-- 				-- first_pixel <= o_mem1;
-- 				-- second_pixel <= o_mem2;
-- 			when S1 =>
-- 				first_pixel <= o_mem2;
-- 				second_pixel <= o_mem0;
-- 				-- first_pixel <= o_mem2;
-- 				-- second_pixel <= o_mem0;
-- 			when S2 =>
-- 				first_pixel <= o_mem0;
-- 				second_pixel <= o_mem1;
-- 				-- first_pixel <= o_mem0;
-- 				-- second_pixel <= o_mem1;
-- 			when others =>
-- 				first_pixel <= first_pixel;
-- 				second_pixel <= second_pixel;
-- 		end case;
--   end process;

  updateData : process begin
		wait until rising_edge(clk);
		if (i_valid = '1')then
			-- shift pixel to the left
			a <= b;
			b <= c;
			h <= i;
			i <= d;
			g <= f;
			f <= e;
			-- updating col3
			-- c <= first_pixel;
			-- d <= second_pixel;
			c <= std_logic_vector(o_mem0) when row_state(2) else std_logic_vector(o_mem1) when row_state(0) else std_logic_vector(o_mem2);
			d <= std_logic_vector(o_mem0) when row_state(1) else std_logic_vector(o_mem1) when row_state(2) else std_logic_vector(o_mem2);
			e <= std_logic_vector(i_pixel);
		end if;
	end process;
	

end architecture;
