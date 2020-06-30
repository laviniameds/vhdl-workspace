library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity FA8 is
    port(
        a, b : in std_logic_vector(7 downto 0);
        s    : out std_logic_vector(7 downto 0)
    );
end FA8;

architecture BEHAVE of FA8 is
begin
    s <= a + b;
end BEHAVE;
