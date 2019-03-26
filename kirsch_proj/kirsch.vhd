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

	----------- Structures -----------
	subtype o_mem_data is std_logic_vector(7 downto 0);
		type o_mem_vec is array(natural range <>) of o_mem_data;

	-- used for max1 (8-bit)
	type maxOneStruct is record
		val : std_logic_vector(7 downto 0);
		dir : std_logic_vector(2 downto 0);
	end record;

	-- used for reg2 (10-bit), max2 (10-bit)
	type maxTwoStruct is record
		val : unsigned(9 downto 0);
		dir : std_logic_vector(2 downto 0);
	end record;

	type regStruct is record
		val : signed(16 downto 0);
		dir : std_logic_vector(2 downto 0);
	end record;
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
	function maxOperator1 (p1_val, p1_dir, p2_val, p2_dir : std_logic_vector)
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

	function maxOperator2 (p1_val : unsigned; p1_dir : std_logic_vector;
						   p2_val : unsigned; p2_dir : std_logic_vector)
		return maxTwoStruct is variable pMax : maxTwoStruct;
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
	signal cycles	: std_logic_vector(8 downto 0);
	signal validEdge : std_logic;
	signal resultDir : direction_ty;

	-------- Stage 1 Signals --------
	signal add1	: unsigned(8 downto 0); -- 8 downto 0
	signal reg1 : maxOneStruct; -- 7 downto 0

	signal max1	: maxOneStruct;	-- 7 downto 0
	signal reg2 : std_logic_vector(8 downto 0);	-- 8 downto 0

	-------- Stage 2 Signals --------
	signal add2 : unsigned(9 downto 0); -- 9 downto 0
	signal reg3 : maxTwoStruct;	-- 9 downto 0

	signal add3 : unsigned(11 downto 0); -- 11 downto 0
	signal reg4 : unsigned(11 downto 0); -- 11 downto 0

	-------- Stage 3 Signals --------
	signal reg5 : maxTwoStruct;	-- 12 downto 0 (regStruct is 13 downto 0)
	signal max2 : maxTwoStruct;	-- 9 downto 0

	-------- Stage 4 Signals --------
	signal reg6 : maxTwoStruct;	-- 13 downto 0
	signal reg7 : signed(16 downto 0);-- 11 downto 0
	signal add4 : signed(16 downto 0);-- 13 downto 0
	signal sub1 : signed(16 downto 0);-- 13 downto 0
	signal reg8 : regStruct;	-- TODO: temporary register to fix the stage 4 problem; get rid of this if possible
	
begin
-- --------------------------------
-- Preprocessing
-- --------------------------------

	o_row <= unsigned(row_counter);
	o_col <= unsigned(col_counter);
	o_mode(1) <= not reset;
	o_mode(0) <= reset or on_stage1 or on_stage2 or on_stage3;
	isComputable <= '1' when (row_counter >= to_unsigned(2, 8) and col_counter >= to_unsigned(2, 8)) else '0';

	MEMS : for i in 0 to 2 generate
		mem : entity work.mem(main)
		port map(
			address => col_counter,
			clock	=> clk,
			data	=> std_logic_vector(i_pixel),
			wren	=> row_state(i),
			q		=> o_mems(i)
		);
	end generate MEMS;

	updateState : process begin
		wait until rising_edge(clk);
		if (reset = '1') then
			row_state <= S0;
			on_stage1 <= '0';
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
		if (reset = '1') then
			cycles(8 downto 0) <= "000000000";
		else
			cycles(0) <= isComputable and i_valid;
			cycles(8 downto 1) <= cycles(7 downto 0);	-- new data coming in, moves cycles downwards
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
			-- max1;
			maxOperator1("00000000", "000", "00000000", "000");

	updateStageOne : process begin
		wait until rising_edge(clk);
		if (cycles(0) = '1' or cycles(1) = '1' or cycles(2) = '1' or cycles(3) = '1' ) then
			reg1.val <= max1.val;
			reg1.dir <= max1.dir;
			reg2 <= std_logic_vector(add1);
		end if;
	end process;

-- --------------------------------
-- Stage 2
-- --------------------------------

	add2 <= resize(unsigned(reg1.val) + unsigned(reg2), 10); -- std 7 and std 9 -- fix size

	add3 <= resize(unsigned(reg2), 12) + resize(reg4, 12);

	updateAddTwoOutput : process begin
		wait until rising_edge(clk);
		if (cycles(4) = '1') then
			reg6.val <= add2;
			reg6.dir <= reg1.dir;
		elsif (cycles(1) = '1' or cycles(2) = '1' or cycles(3) = '1') then
			reg3.val <= add2;
			reg3.dir <= reg1.dir;
		end if;
	end process;

	updateAddThreeOutput : process begin
		wait until rising_edge(clk);
		
		if (cycles(1) = '1') then
			reg4 <= resize(unsigned(reg2),12);
		elsif (cycles(4) = '1') then
			reg7 <= "00000" & signed(add3);	-- TODO, reg7 width is way too large
		elsif (cycles(2) = '1' or cycles(3) = '1') then
			reg4 <= add3;
		end if;
		on_stage2 <= on_stage1;
	end process;

-- --------------------------------
-- Stage 3
-- --------------------------------

	max2 <= maxOperator2(reg3.val, reg3.dir, reg5.val, reg5.dir) when cycles(3) = '1' or cycles(4) = '1' else
			maxOperator2(reg6.val, reg6.dir, reg5.val, reg5.dir) when cycles(5) = '1' else
			maxOperator2("0000000000", "000", "0000000000", "000"); 
	updateStageThree : process begin
		wait until rising_edge(clk);
		if (cycles(2) = '1') then
			reg5.val <= reg3.val;
			reg5.dir <= reg3.dir;
		elsif (cycles(3) = '1' or cycles(4) = '1' or cycles(5) = '1') then
			reg5.val <= max2.val;
			reg5.dir <= max2.dir;
		end if;
		on_stage3 <= on_stage2;
	end process;

-- --------------------------------
-- Stage 4
-- --------------------------------

	-- we need to resize this stage appropriately 
	updateStageFour : process begin
		wait until rising_edge(clk);
		
		add4 <= reg7 + shift_left(reg7, 1);
		sub1 <= signed(shift_left(resize(reg5.val, 17), 3)) - add4;
		if (cycles(5) = '1') then
			reg8.val <= add4;
			reg8.dir <= reg5.dir;
		elsif (cycles(6) = '1') then
			reg8.val <= sub1;
		elsif (cycles(7) = '1') then
			if (reg8.val > 383) then
				validEdge <= '1';
				resultDir <= reg8.dir;
			else
				validEdge <= '0';
				resultDir <= "000";
			end if;
		end if;
	end process;

	o_valid <= cycles(8);
	o_edge <= validEdge;
	o_dir <= resultDir;

end architecture;