-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY mux8to1_tb IS
END mux8to1_tb;

ARCHITECTURE test OF mux8to1_tb IS
    COMPONENT MUX8TO1 IS
        PORT (
            a0, a1, a2, a3, a4, a5, a6, a7 : IN std_logic;
            sel : IN std_logic_vector(2 DOWNTO 0);
            c : OUT std_logic
        );
    END COMPONENT;

    SIGNAL a0_signal, a1_signal, a2_signal, a3_signal, a4_signal, 
    a5_signal, a6_signal, a7_signal, c_signal : std_logic;
    SIGNAL sel_signal : std_logic_vector(2 DOWNTO 0);

BEGIN
    alu_mux8to1 : mux8to1 PORT MAP(
        -- connect ports to signals
        a0 => a0_signal, a1 => a1_signal, a2 => a2_signal, 
        a3 => a3_signal, a4 => a4_signal, a5 => a5_signal, 
        a6 => a6_signal, a7 => a7_signal,
        sel => sel_signal,
        c => c_signal
    );

    PROCESS BEGIN

        a0_signal <= '1';
        a1_signal <= '0';
        a2_signal <= '0';
        a3_signal <= '0';
        a4_signal <= '0';
        a5_signal <= '0';
        a6_signal <= '0';
        a7_signal <= '0';
        sel_signal <= "000";
        WAIT FOR 1 ns;

        a0_signal <= '0';
        a1_signal <= '1';
        a2_signal <= '0';
        a3_signal <= '0';
        a4_signal <= '0';
        a5_signal <= '0';
        a6_signal <= '0';
        a7_signal <= '0';
        sel_signal <= "001";
        WAIT FOR 1 ns;

        a0_signal <= '0';
        a1_signal <= '0';
        a2_signal <= '1';
        a3_signal <= '0';
        a4_signal <= '0';
        a5_signal <= '0';
        a6_signal <= '0';
        a7_signal <= '0';
        sel_signal <= "010";
        WAIT FOR 1 ns;

        a0_signal <= '0';
        a1_signal <= '0';
        a2_signal <= '0';
        a3_signal <= '1';
        a4_signal <= '0';
        a5_signal <= '0';
        a6_signal <= '0';
        a7_signal <= '0';
        sel_signal <= "011";
        WAIT FOR 1 ns;

        a0_signal <= '0';
        a1_signal <= '0';
        a2_signal <= '0';
        a3_signal <= '0';
        a4_signal <= '1';
        a5_signal <= '0';
        a6_signal <= '0';
        a7_signal <= '0';
        sel_signal <= "100";
        WAIT FOR 1 ns;

        a0_signal <= '0';
        a1_signal <= '0';
        a2_signal <= '0';
        a3_signal <= '0';
        a4_signal <= '0';
        a5_signal <= '1';
        a6_signal <= '0';
        a7_signal <= '0';
        sel_signal <= "101";
        WAIT FOR 1 ns;

        a0_signal <= '0';
        a1_signal <= '0';
        a2_signal <= '0';
        a3_signal <= '0';
        a4_signal <= '0';
        a5_signal <= '0';
        a6_signal <= '1';
        a7_signal <= '0';
        sel_signal <= "110";
        WAIT FOR 1 ns;

        a0_signal <= '0';
        a1_signal <= '0';
        a2_signal <= '0';
        a3_signal <= '0';
        a4_signal <= '0';
        a5_signal <= '0';
        a6_signal <= '0';
        a7_signal <= '1';
        sel_signal <= "111";
        WAIT FOR 1 ns;

        ASSERT false REPORT "Reached end of test";
        WAIT;

    END PROCESS;
END test;