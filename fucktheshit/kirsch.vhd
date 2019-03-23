library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.util.all;

package state_pkg is
	----------- Constants -----------
	subtype state_ty is std_logic_vector(2 downto 0);
	constant S0 : state_ty := "001";
	constant S1 : state_ty := "010";
	constant S2 : state_ty := "100";

	subtype direction_ty   is std_logic_vector(2 downto 0);
	constant dir_ne : direction_ty := "110";  -- northeast
	constant dir_sw : direction_ty := "111";  -- southwest
	constant dir_n  : direction_ty := "010";  -- north
	constant dir_s  : direction_ty := "011";  -- south
	constant dir_e  : direction_ty := "000";  -- east
	constant dir_w  : direction_ty := "001";  -- west
	constant dir_nw : direction_ty := "100";  -- northwest
	constant dir_se : direction_ty := "101";  -- southeast

	----------- Structures -----------
	subtype o_mem_data is std_logic_vector(7 downto 0);
		type o_mem_vec is array(natural range <>) of o_mem_data;

	type maxOneStruct is record
		val : std_logic_vector(7 downto 0);
		dir : std_logic_vector(2 downto 0);
	end record

	type maxTwoStruct is record
		val : std_logic_vector(10 downto 0);
		dir : std_logic_vector(2 downto 0);
	end record
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
	----------- Functions -----------
	function maxOperator1 (p1_val, p2_val, p1_dir, p2_dir : std_logic_vector)
		return maxOneStruct is variable pMax : maxOneStruct;
	begin
		if (p1_val > p2_val) then
			-- `:=` variable assign
			pMax.val := p1_val;
			pMax.dir := p1_dir;
		else
			pMax.val := p2_val;
			pMax.dir := p2_dir;
		end if;
		return pMax;
	end maxOperator1;

	function maxOperator2 (p1_val, p2_val, p1_dir, p2_dir : std_logic_vector)
		return maxOneStruct is variable pMax : maxOneStruct;
	begin
		if (p1_val > p2_val) then
			-- `:=` variable assign
			pMax.val := p1_val;
			pMax.dir := p1_dir;
		else
			pMax.val := p2_val;
			pMax.dir := p2_dir;
		end if;
		return pMax;
	end maxOperator2;

	-------- General Signals --------
	signal o_mems 		: o_mem_vec(2 downto 0);
	signal row_state 	: state_ty;
	signal col_counter : unsigned(7 downto 0);
	signal row_counter : unsigned(7 downto 0);
	signal a, b, c,
		   h, i, d,
		   g, f, e : std_logic_vector(7 downto 0);

	signal on_stage1, on_stage2, on_stage3 : std_logic;
	signal isComputable : std_logic;
	signal cycles	: std_logic_vector(6 downto 0);

	-------- Stage 1 Signals --------
	signal add1	: unsigned(8 downto 0);
	signal reg1 : maxOneStruct;						-- to add2

	signal max1	: maxOneStruct;
	signal reg2 : std_logic_vector(9 downto 0);		-- to add2, add3

	-------- Stage 2 Signals --------
	signal add2 : std_logic_vector(10 downto 0);
	signal reg3 : std_logic_vector(10 downto 0);	-- to max2, r5

	signal add3 : std_logic_vector(12 downto 0);
	signal reg4 : std_logic_vector(12 downto 0);

	-------- Stage 3 Signals --------
	-- signal reg5
	-- max2, shift1
	signal reg5 : std_logic_vector(10 downto 0);
	signal max2 : maxTwoStruct;

	-------- Stage 4 Signals --------
	signal reg6 : std_logic_vector(10 downto 0);
	signal reg7 : std_logic_vector(12 downto 0);
	-- add4, shift2
	-- sub1
	-- comp1
	
begin
-- --------------------------------
-- Preprocessing
-- --------------------------------
	o_row <= unsigned(row_counter);
	o_col <= unsigned(col_counter);
	o_mode(1) <= not reset;
	o_mode(0) <= reset or on_stage1;
	isComputable <= '1' when (row_counter >= to_unsigned(2, 8) and col_counter >= to_unsigned(2, 8)) else '0';

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
			on_stage1 <= '1';
			if (col_counter = to_unsigned(255, 8)) then
				col_counter <= to_unsigned(0, 8);
				row_counter <= row_counter + 1;

				if (row_counter = to_unsigned(255, 8)) then
					on_stage1 <= '0';
					row_state <= S0;
				else
					-- TODO may use `rol` here
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
				end if;
			else
				col_counter <= col_counter + 1;
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

	updateCycles : process begin
		wait until rising_edge(clk);
		if (i_valid = '1') then
			cycles(6 downto 0) <= "00000000"
		else
			cycles(0) <= isComputable and i_valid;
			cycles(6 downto 1) <= cycles(5 downto 0);	-- new data coming in, moves cycles downwards
		end if;
	end process;
-- --------------------------------
-- Stage 1
-- --------------------------------
	add1 <= resize(unsigned(a), 9) + resize(unsigned(h), 9) when cycles(0) else
			resize(unsigned(b), 9) + resize(unsigned(c), 9) when cycles(1) else
			resize(unsigned(d), 9) + resize(unsigned(e), 9) when cycles(2) else
			resize(unsigned(f), 9) + resize(unsigned(g), 9) when cycles(3) else
			to_unsigned(0, 9);

	-- according to priority list
	max1 <= maxOperator1(g, dir_w, b, dir_nw) when cycles(0) else
			maxOperator1(a, dir_n, d, dir_ne) when cycles(1) else
			maxOperator1(c, dir_e, f, dir_se) when cycles(2) else
			maxOperator1(e, dir_s, h, dir_sw) when cycles(3) else
			maxOperator1("00000000", "000", "00000000", "000");

	updateStageOne : process begin
		wait until rising_edge(clk);
		reg1.val <= resize(max1, 11);
		reg1.dir <= max1.dir;
		
		reg2 <= add1;
	end process;

-- --------------------------------
-- Stage 2
-- --------------------------------
	add2 <= resize(reg1.val, 10) + resize(reg2);
	updateAddTwoOutput : process begin
		wait until rising_edge(clk);
		if (cycles(4) = '1') then
			reg6 <= add2;
		else
			reg3 <= add2;
		end if;
	end process;

	updateAddThreeOutput : process begin
		wait until rising_edge(clk);
		
		add3 <= resize(reg2, 12) + resize(reg4, 12);
		
		if (cycles(1) = '1') then
			reg4 <= resize(reg2, 12)
		elsif (cycles(4) = '1') then
			reg7 <= add3;
		else
			reg4 <= add3;
		end if; 
	end process;

-- --------------------------------
-- Stage 3
-- --------------------------------
end architecture;
