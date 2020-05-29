library IEEE;
use IEEE.std_logic_1164.all;

entity FA is
    port(
        a, b, cin : in std_logic;
        cout, s   : out std_logic
    );
end FA;

architecture BEHAVE of FA is
begin
    s <= (a xor b) xor cin;
    cout <= (a and b) or (b and cin) or (a and cin);    
end BEHAVE;