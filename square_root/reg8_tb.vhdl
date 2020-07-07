-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY reg8_tb IS
END reg8_tb;

ARCHITECTURE test OF reg8_tb IS
    COMPONENT REG8 IS
    	port(
	data_in: in std_logic_vector(7 downto 0); 
	clk, enable: in std_logic;
	data_out: out std_logic_vector(7 downto 0)
	);	
    END COMPONENT;

    SIGNAL data_in_signal, data_out_signal : std_logic_vector(7 downto 0);
    SIGNAL clk_signal, enable_signal : std_logic;

BEGIN
    reg8_sq : REG8 PORT MAP(
        -- connect ports to signals
        data_in => data_in_signal,
	clk => clk_signal,
	enable => enable_signal,
	data_out => data_out_signal
    );

    PROCESS BEGIN

        data_in_signal <= "00000000";
        clk_signal <= '0';
	enable_signal <= '1';
        WAIT FOR 1 ns;

        data_in_signal <= "00000011";
        clk_signal <= '0';
        WAIT FOR 1 ns;

        clk_signal <= '1';
        WAIT FOR 1 ns;

        data_in_signal <= "00100000";
        clk_signal <= '0';
        WAIT FOR 1 ns;

        clk_signal <= '1';
        WAIT FOR 1 ns;

        clk_signal <= '0';
        WAIT FOR 1 ns;

        WAIT;

    END PROCESS;
END test;
