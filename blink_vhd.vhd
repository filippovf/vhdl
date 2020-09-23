----------------------------------------------------------------------------------
-- Pisca LED - Exemplo de divisor de clock
-- Visite: http://prof.valiante.info
-- Conteúdo relacionado nas Aulas de Sistemas Digitais
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity blink_vhd is
    Port ( mclk : in  STD_LOGIC;
			saidam : out  STD_LOGIC);
end blink_vhd;

architecture Behavioral of blink_vhd is

	-- sinal a ser usado no divisor de clock
	signal clk_div: std_logic_vector(31 downto 0);

begin

	-- processo divisor de clock
	divisorclock: process(mclk)
	begin
		if mclk'event and mclk='1' then
			clk_div <= clk_div + '1';
		end if;
	end process;
	
	--fazer o led piscar:
	saidam <= clk_div(25); 	--foi escolhido o índice 25 do vetor divisor de clock
							--pode-se escolher outro índice para aumentar ou reduzir a frequência


end Behavioral;

