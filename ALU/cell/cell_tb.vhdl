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

        a_signal <= 'X';
        b_signal <= 'X';
        cin_signal <= 'X';
        sel_signal <= "XXX";
        wait for 1 ns;

    END PROCESS;

END test;