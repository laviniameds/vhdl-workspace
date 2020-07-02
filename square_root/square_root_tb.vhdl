-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY square_root_tb IS
END square_root_tb;

ARCHITECTURE test OF square_root_tb IS
    COMPONENT square_root IS
    	port(
		x : in std_logic_vector(7 downto 0);
		clk : in std_logic;
		clk4 : in std_logic;
		r, s : out std_logic_vector(7 downto 0)
	);	
    END COMPONENT;

    SIGNAL x_signal, r_signal, s_signal : std_logic_vector(7 downto 0);
    SIGNAL clk_signal, clk4_signal : std_logic;

BEGIN
    	sq : square_root PORT MAP(
        	-- connect ports to signals
        	x => x_signal,
		clk => clk_signal,
		clk4 => clk4_signal,
		r => r_signal,
		s => s_signal
    );

    PROCESS 
	
	BEGIN
		x_signal <= "00010000";
        	clk_signal <= '0';
		clk4_signal <= '1';
		clk4_signal <= '0';
        	WAIT FOR 1 ns;

		while (s_signal > x_signal) loop
        		clk_signal <= '1';
			clk_signal <= '0';
        		WAIT FOR 1 ns;
		end loop;

    END PROCESS;
END test;
