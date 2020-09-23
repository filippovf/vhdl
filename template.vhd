-- Template de VHDL
-- Visite: http://prof.valiante.info

-- chamadas de bibliotecas
library ieee;
use ieee.std_logic_1164.all;
-- Dependendo do projeto pode ser necessário acrescentar as bibliotecas abaixo, basta descomentar removendo o --
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.NUMERIC_STD.ALL;

-- a entidade relaciona as entradas e saídas do sistema (ou bloco)
-- em projetos com FPGAs e CPLDs devem ser usados os tipos STD_LOGIC e STD_LOGIC_VECTOR
entity template is
  port(
    A, B : in std_logic;
    S : out std_logic   
  );
end template;

-- a arquitetura descreve seu funcionamento
architecture Behavioral of template is

  -- área declarativa
   
  begin
    
    -- área de comandos
    S <= A and B;

    process(sinal)
      -- área declarativa
   
    begin
      -- área de comandos
      S <= A and B;
    end process;

end Behavioral;
