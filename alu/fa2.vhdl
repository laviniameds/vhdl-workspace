library IEEE;
use IEEE.std_logic_1164.all;

entity FA2 is
    port(
        a, b, cin : in std_logic;
        cout, s   : out std_logic
    );
end FA2;

architecture BEHAVE of FA2 is
begin
    s <= (a xor b) xor cin;
    cout <= (a and b) or (b and cin) or (a and cin);    
end BEHAVE;