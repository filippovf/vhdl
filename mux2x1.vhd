-- Mux 2x1
-- Diversas implementações
-- Compare as visões RTL geradas!!!
-- Prof. Filippo Valiante Filho
-- http://prof.valiante.info

library ieee;
use ieee.std_logic_1164.all;


entity mux2x1 is
	port(
		A, B, sel : in std_logic;
		Swhen, Swselect, Sboole, Sif, Scase : out std_logic    
	);
end mux2x1;


architecture Behavioral of mux2x1 is

begin
	
	-- Mux com when / else
	Swhen <= A when sel='0' else B;
	
	-- Mux com with / select / when
	with sel select
		Swselect <= 	A when '0',
				B when others;
	
	-- Mux com expressão booleana
	Sboole <= (A and not sel) or (B and sel);
	
	-- Mux com if (process)
	process(sel)
	begin
		if sel='0' then
			Sif <= A;
		else
			Sif <= B;
		end if;
	end process;
	
	-- Mux com case (process)
	process (sel, A, B)
	begin
		case sel is
			when '0' => Scase <= A;
			when '1' => Scase <= B;
			when others => NULL;
		end case;
	end process;
	
end Behavioral;
