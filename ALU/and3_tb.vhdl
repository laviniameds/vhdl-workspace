-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY and3_tb IS
END and3_tb;

ARCHITECTURE test OF and3_tb IS
    COMPONENT AND3 IS
        PORT (
            a, b, c : IN std_logic;
            d : OUT std_logic
        );
    END COMPONENT;

    SIGNAL a_signal, b_signal, c_signal, d_signal : std_logic;

BEGIN
    and3_cell : AND3 PORT MAP(
        -- connect ports to signals
        a => a_signal,
        b => b_signal,
        c => c_signal,
        d => d_signal
    );

    PROCESS BEGIN

        a_signal <= '0';
        b_signal <= '0';
        c_signal <= '0';
        WAIT FOR 1 ns;

        a_signal <= '0';
        b_signal <= '0';
        c_signal <= '1';
        WAIT FOR 1 ns;

        a_signal <= '0';
        b_signal <= '1';
        c_signal <= '0';
        WAIT FOR 1 ns;

        a_signal <= '0';
        b_signal <= '1';
        c_signal <= '1';
        WAIT FOR 1 ns;

        a_signal <= '1';
        b_signal <= '0';
        c_signal <= '0';
        WAIT FOR 1 ns;

        a_signal <= '1';
        b_signal <= '0';
        c_signal <= '1';
        WAIT FOR 1 ns;

        a_signal <= '1';
        b_signal <= '1';
        c_signal <= '0';
        WAIT FOR 1 ns;

        a_signal <= '1';
        b_signal <= '1';
        c_signal <= '1';
        WAIT FOR 1 ns;

        ASSERT false REPORT "Reached end of test";
        WAIT;

    END PROCESS;
END test;