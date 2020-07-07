library IEEE;
use IEEE.std_logic_1164.all;

entity REG8 is
    port(
	data_in: in std_logic_vector(7 downto 0); 
	clk, enable: in std_logic;
	data_out: out std_logic_vector(7 downto 0)
    );
end REG8;

architecture BEHAVE of REG8 is
begin
	process(clk)
	begin
    		if(rising_edge(clk)) then
			if(enable = '1') then
				data_out <= data_in;
			end if;
		end if;
	end process;	
end BEHAVE;