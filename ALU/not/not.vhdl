library IEEE;
use IEEE.std_logic_1164.all;

entity not is
    port(
        a   : in std_logic;
        c   : out std_logic
    );
end not;

architecture behave of not is
begin
    c <= not a;
end behave;