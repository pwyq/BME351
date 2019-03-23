library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.util.all;

package state_pkg is
	subtype state_ty is std_logic_vector(2 downto 0);
	constant S0 : state_ty := "001";
	constant S1 : state_ty := "010";
	constant S2 : state_ty := "100";

	subtype o_mem_data is std_logic_vector(7 downto 0);
		type o_mem_vec is array(natural range <>) of o_mem_data;
end state_pkg;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.state_pkg.all;
use work.util.all;
use work.kirsch_synth_pkg.all;

entity kirsch is
	port(
		clk        : in  std_logic;				-- clock                      
		reset      : in  std_logic;    			-- reset signal                  
		i_valid    : in  std_logic;          	-- is input valid?       
		i_pixel    : in  unsigned(7 downto 0);	-- 8-bit input
		o_valid    : out std_logic;    			-- is output valid?             
		o_edge     : out std_logic;				-- 1-bit output for edge	                     
		o_dir      : out direction_ty;			-- 3-bit output for direction
		o_mode     : out mode_ty;				-- 2-bit output for mode; (busy|idle|reset; see kirsch_synth_pkg.vhd)
		o_row      : out unsigned(7 downto 0);	-- row number of the input image
		o_col      : out unsigned(7 downto 0)	-- col number of the input image
	);  
end entity;

architecture main of kirsch is
	-------- General Signals --------
	signal o_mems 		: o_mem_vec(2 downto 0);
	signal row_state 	: state_ty;
	signal col_counter : unsigned(7 downto 0);
	signal row_counter : unsigned(7 downto 0);
	signal a, b, c,
		   h, i, d,
		   g, f, e : std_logic_vector(7 downto 0);

	-------- Stage 1 Signals --------
	signal reg1, reg2 : std_logic_vector(7 downto 0);
	-- max1, add1
	-- i1,i2,i3,i4

	-------- Stage 2 Signals --------
	-- signal reg3, reg4 : std_logic_vector(10??????? downto 0);
	-- add2, add3

	-------- Stage 3 Signals --------
	-- signal reg5
	-- max2, shift1

	-------- Stage 4 Signals --------
	-- signal reg6, reg7
	-- add4, shift2
	-- sub1
	-- comp1
	
begin
-- --------------------------------
-- Preprocessing
-- --------------------------------
	MEMS : for i in 0 to 2 generate
		mem : entity work.mem(main)
		port map(
			address => col_counter,
			clock	=> clk,
			data	=> std_logic_vector(i_pixel),
			wren	=> i_valid and row_state(i),
			q		=> o_mems(i)
		);
	end generate MEMS;

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
				row_counter <= row_counter;		-- avoid latch
			end if;
		end if;
	end process;

-- --------------------------------
-- Convolution Table
-- --------------------------------
  updateConvTable : process begin
		wait until rising_edge(clk);
		if (i_valid = '1') then
			-- shift pixel to the left
			a <= b;
			b <= c;
			h <= i;
			i <= d;
			g <= f;
			f <= e;
			c <= std_logic_vector(o_mems(0)) when row_state(2) else std_logic_vector(o_mems(1)) when row_state(0) else std_logic_vector(o_mems(2));
			d <= std_logic_vector(o_mems(0)) when row_state(1) else std_logic_vector(o_mems(1)) when row_state(2) else std_logic_vector(o_mems(2));
			e <= std_logic_vector(i_pixel);
		end if;
	end process;

end architecture;
