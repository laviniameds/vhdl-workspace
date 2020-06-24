library IEEE;
use IEEE.std_logic_1164.all;

entity REG_8_BIT is
    port(
	data_in: in std_logic_vector(7 downto 0); 
	clk: in std_logic;
	data_out: out std_logic_vector(7 downto 0)
    );
end REG_8_BIT;

architecture BEHAVE of REG_8_BIT is
begin
	process(data_in, clk)
	begin
    		if(clk='1' and clk'event) then
			data_out <= data_in;
    		end if;
	end process;	
end BEHAVE;
