library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package state_pkg is
	subtype state_ty is std_logic_vector(2 downto 0);
		constant S0 : state_ty := "001";
		constant S1 : state_ty := "010";
		constant S2 : state_ty := "100";

	----------- Structures -----------
	subtype o_mem_data is std_logic_vector(7 downto 0); 
		type o_mem_vec is array(natural range <>) of o_mem_data;

	type maxOneStruct is RECORD
		val : std_logic_vector(7 downto 0);
		dir : std_logic_vector(2 downto 0);
	end RECORD;

	type maxTwoStruct is RECORD
		val : unsigned(12 downto 0);
		dir : std_logic_vector(2 downto 0);
	end RECORD;
  
end state_pkg;

library IEEE;
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
	function maxOperator1(p1_val, p1_dir, p2_val, p2_dir : std_logic_vector)
	return maxOneStruct is variable pMax : maxOneStruct;
	begin
		if (p1_val >= p2_val) then
			pMax.val := p1_val;
			pMax.dir := p1_dir;
		else
			pMax.val := p2_val;
			pMax.dir := p2_dir;
		end if;
		return pMax;
	end maxOperator1;

	function maxOperator2(p1_val : unsigned; p1_dir : std_logic_vector;
						  p2_val : unsigned; p2_dir : std_logic_vector)
	return maxTwoStruct is variable pMax : maxTwoStruct;
	begin
		if (p1_val >= p2_val) then
			pMax.val := p1_val;
			pMax.dir := p1_dir;
		else
			pMax.val := p2_val;
			pMax.dir := p2_dir;
		end if;
		return pMax;
	end maxOperator2;
	
	-------- General Signals --------
	signal a, b, c,
		   h, i, d,
		   g, f, e : std_logic_vector(7 downto 0);
	signal col_counter, row_counter : unsigned(7 downto 0);
	signal o_mems                   : o_mem_vec(2 downto 0);
	signal row_state                : state_ty;
	signal cycles 					: std_logic_vector(7 downto 0);
	signal isComputable				: std_logic;
	signal on_stage1, on_stage2, on_stage3 : std_logic;
	
	-------- Stage 1 Signals --------
	signal add1 : unsigned(8 downto 0);
	signal max1 : maxOneStruct;
	signal add2 : unsigned(9 downto 0);
	signal reg1 : maxTwoStruct;
	signal reg2 : unsigned(8 downto 0); 
	
	-------- Stage 2 Signals --------
	signal add3 : unsigned(13 downto 0);
	signal reg3 : unsigned(13 downto 0);
	
	-------- Stage 3 Signals --------
	signal reg4 : maxTwoStruct;
	signal max2 : maxTwoStruct;
	
	-------- Stage 4 Signals --------
	signal sub1 : signed(13 downto 0);
	signal reg5 : signed(13 downto 0);
	signal validEdge : std_logic;
	signal resultDir : std_logic_vector(2 downto 0);
	signal edgeFound : std_logic;
begin  
-- --------------------------------
-- Preprocessing
-- --------------------------------
	o_row <= row_counter; 
	o_col <= col_counter;
	o_mode(1) <= NOT reset;
	o_mode(0) <= reset OR on_stage1 OR on_stage2 OR on_stage3;

	isComputable <= '1' when (row_counter >= to_unsigned(2, 8) AND col_counter >= to_unsigned(2, 8)) else '0';

	MEMS : for i in 0 to 2 generate 
		mem : entity work.mem(main)
		port map (
			address => col_counter,
			clock   => clk,
			data    => std_logic_vector(i_pixel),
			wren    => row_state(i),
			q       => o_mems(i)
		);
	end generate MEMS;

	updateState : process begin 
		wait until rising_edge(clk);
		if (reset = '1') then
			row_state <= S0;
			col_counter <= to_unsigned(0, 8);
			row_counter <= to_unsigned(0, 8);
		elsif (i_valid = '1') then
			on_stage1 <= '1';			 
			if (col_counter = to_unsigned(255, 8)) then
				row_counter <= row_counter + 1;
				if (row_counter = to_unsigned(255, 8)) then 
					row_state <= S0;
					on_stage1 <= '0';
				else
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
			end if;
			col_counter <= col_counter + 1;
		end if;
	end process;

-- --------------------------------
-- Convolution Table
-- --------------------------------
	updateConvTable : process begin
		wait until rising_edge(clk);
		if (i_valid = '1') then
			a <= b;
			b <= c;
			c <= std_logic_vector(o_mems(0)) when row_state(2) else std_logic_vector(o_mems(1)) when row_state(0) else std_logic_vector(o_mems(2));
			h <= i;
			i <= d;
			d <= std_logic_vector(o_mems(0)) when row_state(1) else std_logic_vector(o_mems(1)) when row_state(2) else std_logic_vector(o_mems(2));
			g <= f;
			f <= e;
			e <= std_logic_vector(i_pixel);
		end if;
	end process;

	updateCycles : process begin 
		wait until rising_edge(clk);
		if(reset = '1') then
			cycles(7 downto 0) <= "00000000";
		else
			cycles(0) <= (isComputable AND i_valid);
			cycles(7 downto 1) <= cycles(6 downto 0); 
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
					
	max1 <= maxOperator1(g, dir_w, b, dir_nw) when cycles(0) else
			maxOperator1(a, dir_n, d, dir_ne) when cycles(1) else
			maxOperator1(c, dir_e, f, dir_se) when cycles(2) else
			maxOperator1(e, dir_s, h, dir_sw) when cycles(3) else
			maxOperator1("00000000", "000", "00000000", "000"); 

	add2 <= resize(add1, 10) + resize(unsigned(max1.val), 10);

	updateStageOne : process begin
		wait until rising_edge(clk);
		reg1.val <= resize(add2, 13);
		reg1.dir <= max1.dir;
	end process;

-- --------------------------------
-- Stage 2
-- --------------------------------
	add3 <= resize(reg2, 14) + resize(add1, 14) when cycles(1) = '1' else 
			resize(reg3, 14) + resize(SHIFT_LEFT(reg3, 1), 14) when cycles(4) = '1' else
			resize(add1, 14) + resize(reg3, 14);
				
	updateStageTwo: process begin
		wait until rising_edge(clk);
		if (cycles(0)= '1') then
			reg2 <= add1;	
		end if;
		on_stage2 <= on_stage1;
		reg3 <= add3; 
	end process;

-- --------------------------------
-- Stage 3
-- --------------------------------
	max2 <= maxOperator2(reg4.val, reg4.dir, reg1.val, reg1.dir);

	updateStageThree : process begin   
		wait until rising_edge(clk);	
			if (cycles(1) = '1') then
				reg4.val <= resize(reg1.val, 13);
				reg4.dir <= reg1.dir;			
			elsif (cycles(4) = '1') then
				reg4.val <= SHIFT_LEFT(max2.val, 3);
				reg4.dir <= max2.dir;
				resultDir <= max2.dir;
			else
				reg4.val <= max2.val; 
				reg4.dir <= max2.dir;
			end if; 
			
			on_stage3 <= on_stage2;
	end process;

-- --------------------------------
-- Stage 4
-- --------------------------------
	sub1 <= signed(resize(reg4.val, 14)) - signed(resize(reg3, 14));
	edgeFound <= '1' when (reg5 > 383) else '0';

	updateResult : process begin
		wait until rising_edge(clk);	 
		if (cycles(5) = '1') then
			reg5 <= sub1;
		end if;
	end process;

	updateOutput : process begin
		wait until rising_edge(clk);
		if cycles(6) = '1' then
			validEdge <= edgeFound;
		else
			validEdge <= '0';
		end if;
	end process;

	o_edge  <= validEdge;
	o_dir   <= resultDir when (validEdge = '1') else "000";
	o_valid <= cycles(7);

end architecture;
