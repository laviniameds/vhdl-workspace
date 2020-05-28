library IEEE;
use IEEE.std_logic_1164.all;

entity cell is
    port(
        a, b, cin   : in std_logic;
        sel         : in std_logic_vector(3 downto 0);
        s, cout     : out std_logic
    );
end cell;

architecture behave of cell is
    component and is
        port(
            x, y: in std_logic;
            z   : out std_logic
        );
    end component;

    component or is
        port(
            x, y: in std_logic;
            z   : out std_logic
        );
    end component;

    component xor is
        port(
            x, y: in std_logic;
            z   : out std_logic
        );
    end component;

    component not is
        port(
            x   : in std_logic;
            z   : out std_logic
        );
    end component;

    component full_adder is 
        port(
            x, y, cin: is std_logic;
            z, cout   : out std_logic
        );
    end component;

    component subtractor is 
    port(
        x, y, cin: is std_logic;
        z, cout   : out std_logic
    );
    end component;

    begin


end behave;