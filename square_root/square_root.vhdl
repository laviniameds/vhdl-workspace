LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY square_root IS
    PORT (
        #TODO
    );
END square_root;

ARCHITECTURE structure OF square_root IS
	component MUX2TO1 is
    	port(
        	a, b : in std_logic_vector(7 downto 0);
        	sel  : in std_logic;
        	c    : out std_logic_vector(7 downto 0)
    	);
	end MUX2TO1;

	component FA8 is
    	port(
      	 	a, b : in std_logic_vector(7 downto 0);
       	 	s    : out std_logic_vector(7 downto 0)
    	);
	end FA8;

	entity REG8 is
    	port(
		data_in: in std_logic_vector(7 downto 0); 
		clk: in std_logic;
		data_out: out std_logic_vector(7 downto 0)
    	);
	end REG8;

	entity COMPARATOR8 is
    	port(
        	a, b : in std_logic_vector(7 downto 0);
        	s_equal, s_less, s_greater : out std_logic
    	);
	end COMPARATOR8;

    	SIGNAL #TODO : std_logic;

BEGIN
	REG_R : REG8 PORT MAP(#TODO); --reg r
	REG_D : REG8 PORT MAP(#TODO); --reg d
	REG_S : REG8 PORT MAP(#TODO); --reg s

	MUX_R : MUX2TO1 PORT MAP(#TODO); --mux to reg r
	MUX_D : MUX2TO1 PORT MAP(#TODO); --mux to reg r
	MUX_S : MUX2TO1 PORT MAP(#TODO); --mux to reg r
	MUX_4D1 : MUX2TO1 PORT MAP(#TODO); --mux 4 or d+1

	COMP : COMPARATOR8 PORT MAP(#TODO); -- comparator (s > x) 
	
	ADD_R1 : FA8 PORT MAP(#TODO); --add r+1
	ADD_D2 : FA8 PORT MAP(#TODO); --add d+2
	ADD_D1 : FA8 PORT MAP(#TODO); --add d+1
	ADD_SD1 : FA8 PORT MAP(#TODO); --add s+d+1
	
END structure;
