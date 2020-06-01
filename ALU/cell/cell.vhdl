LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY cell IS
    PORT (
        a, b, cin : IN std_logic;
        sel : IN std_logic_vector(2 DOWNTO 0);
        s, cout : OUT std_logic
    );
END cell;

ARCHITECTURE structure OF cell IS
    COMPONENT AND2 IS
        PORT (
            a, b : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT AND3 IS
        PORT (
            a, b, c : IN std_logic;
            d : OUT std_logic
        );
    END COMPONENT;

    COMPONENT OR2 IS
        PORT (
            a, b : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT XOR2 IS
        PORT (
            a, b : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT NOT2 IS
        PORT (
            a : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT FA2 IS
        PORT (
            a, b, cin : IN std_logic;
            cout, s : OUT std_logic
        );
    END COMPONENT;

    COMPONENT FS2 IS
        PORT (
            a, b, cin : IN std_logic;
            cout, s : OUT std_logic
        );
    END COMPONENT;

    COMPONENT MUX2TO1 IS
        PORT (
            a, b : IN std_logic;
            sel : IN std_logic;
            c : OUT std_logic
        );
    END COMPONENT;

    COMPONENT MUX8TO1 IS
        PORT (
            a : IN std_logic_vector(7 DOWNTO 0);
            sel : IN std_logic_vector(2 DOWNTO 0);
            c : OUT std_logic
        );
    END COMPONENT;

    SIGNAL S1, S2, S3, S4, S5, S6, S7 : std_logic;
    SIGNAL O1, O2, O3 : std_logic;
    SIGNAL S_MUX8 : std_logic_vector(7 DOWNTO 0);
    SIGNAL S_MUX2 : std_logic_vector(2 DOWNTO 0);

BEGIN
    G1 : AND2 PORT MAP(a, b, S1); --and component
    G2 : OR2 PORT MAP(a, b, S2); --or component
    G3 : XOR2 PORT MAP(a, b, S3); --xor component
    G4 : NOT2 PORT MAP(a, S4); --not component for 'a' input
    G5 : NOT2 PORT MAP(b, S5); --not component for 'b' input
    G6 : FA2 PORT MAP(a, b, cin, O1, S6); --full adder component
    G7 : FS2 PORT MAP(a, b, cin, O2, S7); --full subtractor component
    G8 : MUX8TO1 PORT MAP(S_MUX8, sel, s); --mux 8 to 1 component
    G9 : AND3 PORT MAP(sel(2), sel(1), sel(0), O3); --check when cout is from FA or FS and select mux 2 to 1
    G10 : MUX2TO1 PORT MAP(O1, O2, O3, cout); --mux 2 to 1 component

    S_MUX8(7) <= S1; -- 000 = AND
    S_MUX8(6) <= S2; -- 001 = OR
    S_MUX8(5) <= S3; -- 010 = XOR
    S_MUX8(4) <= S4; -- 011 = NOT A
    S_MUX8(3) <= S5; -- 100 = NOT B
    S_MUX8(2) <= S6; -- 101 = SUM A + B
    S_MUX8(1) <= S7; -- 110 = SUB A - B
    S_MUX8(0) <= '0';

END structure;