LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

PACKAGE state_pkg IS
    SUBTYPE state_ty IS STD_LOGIC_VECTOR(2 DOWNTO 0);
        CONSTANT S0 : state_ty := "001";
        CONSTANT S1 : state_ty := "010";
        CONSTANT S2 : state_ty := "100";

    ----------- Structures -----------
    SUBTYPE o_mem_data IS STD_LOGIC_VECTOR(7 DOWNTO 0);
        TYPE o_mem_vec IS ARRAY(NATURAL RANGE <>) OF o_mem_data;

    TYPE maxOneStruct IS RECORD
        val : STD_LOGIC_VECTOR(7 DOWNTO 0);
        dir : STD_LOGIC_VECTOR(2 DOWNTO 0);
    END RECORD;

    TYPE maxTwoStruct IS RECORD
        val : UNSIGNED(12 DOWNTO 0);
        dir : STD_LOGIC_VECTOR(2 DOWNTO 0);
    END RECORD;

END state_pkg;

LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.state_pkg.all;
USE work.util.all;
USE work.kirsch_synth_pkg.all;

ENTITY kirsch IS
    PORT(
        clk        : IN  STD_LOGIC;             -- clock
        reset      : IN  STD_LOGIC;             -- reset signal
        i_valid    : IN  STD_LOGIC;             -- is input valid?
        i_pixel    : IN  UNSIGNED(7 DOWNTO 0);  -- 8-bit input
        o_valid    : OUT STD_LOGIC;             -- is output valid?
        o_edge     : OUT STD_LOGIC;             -- 1-bit output for edge
        o_dir      : OUT direction_ty;          -- 3-bit output for direction
        o_mode     : OUT mode_ty;               -- 2-bit output for mode; (busy|idle|reset; see kirsch_synth_pkg.vhd)
        o_row      : OUT UNSIGNED(7 DOWNTO 0);  -- row number of the input image
        o_col      : OUT UNSIGNED(7 DOWNTO 0)   -- col number of the input image
    );
END ENTITY;

ARCHITECTURE main of kirsch IS
    ----------- Functions -----------
    FUNCTION maxOperator1(p1_val, p1_dir, p2_val, p2_dir : STD_LOGIC_VECTOR)
    RETURN maxOneStruct IS VARIABLE pMax : maxOneStruct;
    BEGIN
        IF (p1_val >= p2_val) THEN
            pMax.val := p1_val;
            pMax.dir := p1_dir;
        ELSE
            pMax.val := p2_val;
            pMax.dir := p2_dir;
        END IF;
        RETURN pMax;
    END maxOperator1;

    FUNCTION maxOperator2(p1_val : UNSIGNED; p1_dir : STD_LOGIC_VECTOR;
                          p2_val : UNSIGNED; p2_dir : STD_LOGIC_VECTOR)
    RETURN maxTwoStruct IS VARIABLE pMax : maxTwoStruct;
    BEGIN
        IF (p1_val >= p2_val) THEN
            pMax.val := p1_val;
            pMax.dir := p1_dir;
        ELSE
            pMax.val := p2_val;
            pMax.dir := p2_dir;
        END IF;
        RETURN pMax;
    END maxOperator2;

    -------- General Signals --------
    SIGNAL a, b, c,
           h, i, d,
           g, f, e : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL prepC, prepD : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL col_counter  : UNSIGNED(7 DOWNTO 0);
    SIGNAL row_counter  : UNSIGNED(7 DOWNTO 0);
    SIGNAL o_mems       : o_mem_vec(2 DOWNTO 0);
    SIGNAL row_state    : state_ty;
    SIGNAL cycles       : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL isComputable : STD_LOGIC;
    SIGNAL on_stage1, on_stage2, on_stage3 : STD_LOGIC;

    -------- Stage 1 Signals --------
    SIGNAL add1 : UNSIGNED(8 DOWNTO 0);
    SIGNAL max1 : maxOneStruct;
    SIGNAL add2 : UNSIGNED(9 DOWNTO 0);
    SIGNAL reg1 : maxTwoStruct;
    SIGNAL reg2 : UNSIGNED(8 DOWNTO 0);

    -------- Stage 2 Signals --------
    SIGNAL add3 : UNSIGNED(13 DOWNTO 0);
    SIGNAL reg3 : UNSIGNED(13 DOWNTO 0);

    -------- Stage 3 Signals --------
    SIGNAL reg4 : maxTwoStruct;
    SIGNAL max2 : maxTwoStruct;

    -------- Stage 4 Signals --------
    SIGNAL sub1 : SIGNED(13 DOWNTO 0);
    SIGNAL reg5 : SIGNED(13 DOWNTO 0);
    SIGNAL validEdge : STD_LOGIC;
    SIGNAL resultDir : direction_ty;
    SIGNAL edgeFound : STD_LOGIC;
BEGIN
-- --------------------------------
-- Preprocessing
-- --------------------------------
    o_row <= row_counter;
    o_col <= col_counter;
    o_mode(1) <= NOT reset;
    o_mode(0) <= reset OR on_stage1 OR on_stage2 OR on_stage3;

    isComputable <= '1' WHEN (row_counter >= 2 AND col_counter >= 2) ELSE '0';

    MEMS : FOR i IN 0 TO 2 GENERATE
        mem : ENTITY work.mem(main)
        PORT MAP (
            address => col_counter,
            clock   => clk,
            data    => STD_LOGIC_VECTOR(i_pixel),
            wren    => row_state(i),
            q       => o_mems(i)
        );
    END GENERATE MEMS;

    updateState : PROCESS BEGIN
        WAIT UNTIL RISING_EDGE(clk);
        IF (reset = '1') THEN
            row_state <= S0;
            col_counter <= to_unsigned(0, 8);
            row_counter <= to_unsigned(0, 8);
        ELSE
            IF (i_valid = '1') THEN
                on_stage1 <= '1';
                IF (col_counter = 255) THEN
                    row_counter <= row_counter + 1;
                    IF (row_counter = 255) THEN
                        row_state <= S0;
                        on_stage1 <= '0';
                    ELSE
                        row_state <= row_state ROL 1;
                    END IF;
                END IF;
                col_counter <= col_counter + 1;
            END IF;
        END IF;
    END PROCESS;

-- --------------------------------
-- Convolution Table
-- --------------------------------
    prepC <= STD_LOGIC_VECTOR(o_mems(0)) WHEN (row_state(2) = '1') ELSE
             STD_LOGIC_VECTOR(o_mems(1)) WHEN (row_state(0) = '1') ELSE
             STD_LOGIC_VECTOR(o_mems(2));
    prepD <= STD_LOGIC_VECTOR(o_mems(0)) WHEN (row_state(1) = '1') ELSE
             STD_LOGIC_VECTOR(o_mems(1)) WHEN (row_state(2) = '1') ELSE
             STD_LOGIC_VECTOR(o_mems(2));

    updateConvTable : PROCESS BEGIN
        WAIT UNTIL RISING_EDGE(clk);
        IF (i_valid = '1') THEN
            a <= b;
            b <= c;
            c <= prepC;
            h <= i;
            i <= d;
            d <= prepD;
            g <= f;
            f <= e;
            e <= STD_LOGIC_VECTOR(i_pixel);
        END IF;
    END PROCESS;

    updateCycles : PROCESS BEGIN
        WAIT UNTIL RISING_EDGE(clk);
        IF (reset = '1') THEN
            cycles(7 DOWNTO 0) <= "00000000";
        ELSE
            cycles(0) <= (isComputable AND i_valid);
            cycles(7 DOWNTO 1) <= cycles(6 DOWNTO 0);
        END IF;
    END PROCESS;

-- --------------------------------
-- Stage 1
-- --------------------------------
    add1 <= resize(UNSIGNED(a), 9) + resize(UNSIGNED(h), 9) WHEN (cycles(0) = '1') ELSE
            resize(UNSIGNED(b), 9) + resize(UNSIGNED(c), 9) WHEN (cycles(1) = '1') ELSE
            resize(UNSIGNED(d), 9) + resize(UNSIGNED(e), 9) WHEN (cycles(2) = '1') ELSE
            resize(UNSIGNED(f), 9) + resize(UNSIGNED(g), 9) WHEN (cycles(3) = '1') ELSE
            to_unsigned(0, 9);

    max1 <= maxOperator1(g, dir_w, b, dir_nw) WHEN (cycles(0) = '1') ELSE
            maxOperator1(a, dir_n, d, dir_ne) WHEN (cycles(1) = '1') ELSE
            maxOperator1(c, dir_e, f, dir_se) WHEN (cycles(2) = '1') ELSE
            maxOperator1(e, dir_s, h, dir_sw) WHEN (cycles(3) = '1') ELSE
            maxOperator1("00000000", "000", "00000000", "000");
    
    updateStageOne : PROCESS BEGIN
        WAIT UNTIL RISING_EDGE(clk);
        IF (cycles(0) = '1' OR cycles(1) = '1' OR cycles(2) = '1' OR cycles(3) = '1') THEN
            reg1.val <= resize(unsigned(max1.val), 13); --resize(max1.val, 13);
            reg1.dir <= max1.dir;
        END IF;
    END PROCESS;

    updateReg2: PROCESS BEGIN
        WAIT UNTIL RISING_EDGE(clk);
        IF (cycles(0) = '1' OR cycles(1) = '1' OR cycles(2) = '1' OR cycles(3) = '1') THEN
            reg2 <= add1;
        END IF;
    END PROCESS;
-- --------------------------------
-- Stage 2
-- --------------------------------
    add3 <= resize(reg2, 14) + resize(add1, 14) WHEN (cycles(1) = '1') ELSE
            resize(reg3, 14) + resize(SHIFT_LEFT(reg3, 1), 14) WHEN (cycles(4) = '1') ELSE
            resize(add1, 14) + resize(reg3, 14);
    updateReg3 : PROCESS BEGIN
        WAIT UNTIL RISING_EDGE(clk);
        on_stage2 <= on_stage1;
        reg3 <= add3;
    END PROCESS;

-- --------------------------------
-- Stage 3
-- --------------------------------
    add2 <= resize(reg2, 10) + resize(UNSIGNED(reg1.val), 10);
    max2 <= maxOperator2(reg4.val, reg4.dir, resize(add2, 13), reg1.dir);

    updateStageThree : PROCESS BEGIN
        WAIT UNTIL RISING_EDGE(clk);
            IF (cycles(1) = '1') THEN
                reg4.val <= resize(add2, 13);
                reg4.dir <= reg1.dir;
            ELSIF (cycles(4) = '1') THEN
                reg4.val <= SHIFT_LEFT(max2.val, 3);
                reg4.dir <= max2.dir;
                resultDir <= max2.dir;
            ELSE
                reg4.val <= max2.val;
                reg4.dir <= max2.dir;
            END IF;

            on_stage3 <= on_stage2;
    END PROCESS;

-- --------------------------------
-- Stage 4
-- --------------------------------
    sub1 <= SIGNED(resize(reg4.val, 14)) - SIGNED(resize(reg3, 14));
    edgeFound <= '1' WHEN (reg5 > 383) ELSE '0';

    updateResult : PROCESS BEGIN
        WAIT UNTIL RISING_EDGE(clk);
        IF (cycles(5) = '1') THEN
            reg5 <= sub1;
        END IF;
    END PROCESS;

    updateOutput : PROCESS BEGIN
        WAIT UNTIL RISING_EDGE(clk);
        IF (cycles(6) = '1') THEN
            validEdge <= edgeFound;
        ELSE
            validEdge <= '0';
        END IF;
    END PROCESS;

    o_edge  <= validEdge;
    o_dir   <= resultDir WHEN validEdge ELSE "000";
    o_valid <= cycles(7);

END ARCHITECTURE;
