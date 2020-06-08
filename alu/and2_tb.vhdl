-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY and2_tb IS
END and2_tb;

ARCHITECTURE test OF and2_tb IS
    COMPONENT AND2 IS
        PORT (
            a, b : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    SIGNAL a_signal, b_signal, c_signal : std_logic;

BEGIN
    and2_cell : AND2 PORT MAP(
        -- connect ports to signals
        a => a_signal,
        b => b_signal,
        c => c_signal
    );

    PROCESS BEGIN

        a_signal <= '0';
        b_signal <= '0';
        WAIT FOR 1 ns;

        a_signal <= '1';
        b_signal <= '0';
        WAIT FOR 1 ns;

        a_signal <= '0';
        b_signal <= '1';
        WAIT FOR 1 ns;

        a_signal <= '1';
        b_signal <= '1';
        WAIT FOR 1 ns;

        ASSERT false REPORT "Reached end of test";
        WAIT;

    END PROCESS;
END test;