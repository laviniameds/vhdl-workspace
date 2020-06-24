library IEEE;
use IEEE.std_logic_1164.all;

entity COMPARATOR8 is
    port(
        a, b : in std_logic_vector(7 downto 0);
        s_equal, s_less, s_greater : out std_logic
    );
end COMPARATOR8;

architecture BEHAVE of COMPARATOR8 is
begin
	s_equal <= '1' when (a = b)
	else '0';
	
	s_less <= '1' when (a < b)
	else '0';

	s_greater <= '1' when (a > b)
	else '0';
end BEHAVE;
