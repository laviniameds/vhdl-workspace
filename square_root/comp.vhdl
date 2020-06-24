library IEEE;
use IEEE.std_logic_1164.all;

entity COMPARATOR2 is
    port(
        a, b : in std_logic;
        s_equal, s_less, s_greater : out std_logic
    );
end COMPARATOR2;

architecture BEHAVE of COMPARATOR2 is
begin
    s_equal <= a xnor b;
    s_less <= (not a) and b;
    s_greater <= a and (not b);
end BEHAVE;
