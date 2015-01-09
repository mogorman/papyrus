----------------------------------------------------------------------------------
-- Company: 
-- Engineer:       Mike Field <hamster@snap.net.nz> 
-- Module Name:    led_test - Behavioral 
-- Project Name:   miniSpartan6/test1
-- Target Devices: miniSpartan6 (XC6SLX9)
-- Description:    A first project for the miniSpartan6
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity led_test is
    Port ( clk50 : in  STD_LOGIC;
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end led_test;

architecture Behavioral of led_test is
   signal count : unsigned(29 downto 0) := (others => '0');
begin

process(clk50)
   begin
      if rising_edge(clk50) then
         count <= count+1;
         leds  <= STD_LOGIC_VECTOR(count(count'high downto count'high-7));      
      end if;
   end process;

end Behavioral;
