library IEEE;
use IEEE.std_logic_1164.all;

entity XOR2 is
    port(
        a, b: in std_logic;
        c   : out std_logic
    );
end XOR2;

architecture BEHAVE of XOR2 is
begin
    c <= a xor b;
end BEHAVE;