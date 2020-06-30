-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY mux2to1_tb IS
END mux2to1_tb;

ARCHITECTURE test OF mux2to1_tb IS
    COMPONENT mux2to1 IS
        PORT (
            a, b : IN std_logic;
            sel : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    SIGNAL a_signal, b_signal, c_signal, sel_signal : std_logic;

BEGIN
    alu_mux2to1 : mux2to1 PORT MAP(
        -- connect ports to signals
        a => a_signal,
        b => b_signal,
        sel => sel_signal,
        c => c_signal
    );

    PROCESS BEGIN

        --b
        a_signal <= '0';
        b_signal <= '1';
        sel_signal <= '0';
        WAIT FOR 1 ns;

        --a
        a_signal <= '1';
        b_signal <= '0';
        sel_signal <= '1';
        WAIT FOR 1 ns;

        --b
        a_signal <= '0';
        b_signal <= '0';
        sel_signal <= '0';
        WAIT FOR 1 ns;

        --a
        a_signal <= '1';
        b_signal <= '1';
        sel_signal <= '1';
        WAIT FOR 1 ns;        

        ASSERT false REPORT "Reached end of test";
        WAIT;

    END PROCESS;
END test;