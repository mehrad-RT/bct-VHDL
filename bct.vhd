----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:03:24 06/02/2023 
-- Design Name: 
-- Module Name:    bct - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Binary_Counter is
  generic (
    BIT_COUNT : integer := 4 
  );
  port (
    clk    : in  STD_LOGIC;                
    reset  : in  STD_LOGIC;                
    count  : out STD_LOGIC_VECTOR(BIT_COUNT - 1 downto 0) 
  );
end Binary_Counter;

architecture Behavioral of Binary_Counter is
  signal flipflops : STD_LOGIC_VECTOR(BIT_COUNT - 1 downto 0); 
  signal temp       : STD_LOGIC_VECTOR(BIT_COUNT - 1 downto 0); 
begin
  
  process (clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        flipflops <= (others => '0');
      else
        flipflops <= not flipflops;
      end if;
    end if;
  end process;

  temp <= flipflops;

end Behavioral;