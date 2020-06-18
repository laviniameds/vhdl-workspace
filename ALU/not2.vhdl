library IEEE;
use IEEE.std_logic_1164.all;

entity NOT2 is
    port(
        a   : in std_logic;
        c   : out std_logic
    );
end NOT2;

architecture BEHAVE of NOT2 is
begin
    c <= not a;
end BEHAVE;