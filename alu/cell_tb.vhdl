-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY cell_tb IS
END cell_tb;

ARCHITECTURE test OF cell_tb IS
    COMPONENT cell IS
        PORT (
            a, b, cin : IN std_logic;
            sel : IN std_logic_vector(2 DOWNTO 0);
            s, cout : OUT std_logic
        );
    END COMPONENT;

    SIGNAL a_signal, b_signal, cin_signal, s_signal, cout_signal : std_logic;
    SIGNAL sel_signal : std_logic_vector(2 DOWNTO 0);

BEGIN
    alu_cell : cell PORT MAP(
        -- connect ports to signals
        a => a_signal,
        b => b_signal,
        cin => cin_signal,
        sel => sel_signal,
        cout => cout_signal,
        s => s_signal
    );

    PROCESS BEGIN

        a_signal <= '0';
        b_signal <= '0';
        cin_signal <= '0';
        sel_signal <= "000";
        wait for 1 ns;

        --AND
        a_signal <= '1';
        b_signal <= '1';
        cin_signal <= '0';
        sel_signal <= "000";
        wait for 1 ns;

        assert false report "Reached end of test";
        wait;

    END PROCESS;
END test;