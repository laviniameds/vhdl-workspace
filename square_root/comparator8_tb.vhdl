-- Test Bench
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY comparator8_tb IS
END comparator8_tb;

ARCHITECTURE test OF comparator8_tb IS
    COMPONENT COMPARATOR8 IS
    	port(
        	a, b : in std_logic_vector(7 downto 0);
        	s_equal, s_less, s_greater : out std_logic
    	);
    END COMPONENT;

    SIGNAL a_signal, b_signal : std_logic_vector(7 downto 0);
    SIGNAL s_equal_signal, s_less_signal, s_greater_signal : std_logic;

BEGIN
    comparator8_sq : COMPARATOR8 PORT MAP(
        -- connect ports to signals
        a => a_signal, b => b_signal,
	s_equal => s_equal_signal,
	s_less => s_less_signal,
	s_greater => s_greater_signal
    );

    PROCESS BEGIN

        a_signal <= "00000000";
        b_signal <= "00000000";
        WAIT FOR 1 ns;

        a_signal <= "00000001";
        b_signal <= "00000000";
        WAIT FOR 1 ns;

        a_signal <= "00000001";
        b_signal <= "00000011";
        WAIT FOR 1 ns;

        a_signal <= "00000000";
        b_signal <= "00000000";
        WAIT FOR 1 ns;

        WAIT;

    END PROCESS;
END test;
