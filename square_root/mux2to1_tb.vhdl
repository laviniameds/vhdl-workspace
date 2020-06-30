-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY mux2to1_tb IS
END mux2to1_tb;

ARCHITECTURE test OF mux2to1_tb IS
    COMPONENT mux2to1 IS
        PORT (
        	a, b : in std_logic_vector(7 downto 0);
        	sel  : in std_logic;
        	c    : out std_logic_vector(7 downto 0)
        );
    END COMPONENT;

    SIGNAL a_signal, b_signal, c_signal : std_logic_vector(7 DOWNTO 0);
    SIGNAL sel_signal : std_logic;

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
        a_signal <= "00000000";
        b_signal <= "00000001";
        sel_signal <= '0';
        WAIT FOR 1 ns;

        --a
        a_signal <= "10000000";
        b_signal <= "00000000";
        sel_signal <= '1';
        WAIT FOR 1 ns;

        --b
        a_signal <= "00000000";
        b_signal <= "00000000";
        sel_signal <= '0';
        WAIT FOR 1 ns;

        --a
        a_signal <= "11111111";
        b_signal <= "11111111";
        sel_signal <= '1';
        WAIT FOR 1 ns;        

        ASSERT false REPORT "Reached end of test";
        WAIT;

    END PROCESS;
END test;