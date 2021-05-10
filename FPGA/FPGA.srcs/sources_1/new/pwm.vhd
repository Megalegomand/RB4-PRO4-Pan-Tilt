----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2021 12:06:38
-- Design Name: 
-- Module Name: pwm - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_misc.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm is
    Generic (
        n_bits : POSITIVE := 2);
    Port ( clk : in STD_LOGIC;
           duty_cycle : in STD_LOGIC_VECTOR (n_bits-1 downto 0);
           o : out STD_LOGIC);
end pwm;

architecture Behavioral of pwm is
    signal cnt : STD_LOGIC_VECTOR (n_bits-1 downto 0) := (others => '0');
    signal duty_cycle_t : STD_LOGIC_VECTOR (n_bits-1 downto 0) := (others => '0');
begin

    process (clk)

    begin
        if (rising_edge(clk)) then
            if (or_reduce(cnt) = '0') then
                duty_cycle_t <= duty_cycle;
                o <= '0';
            end if;
            
            if (cnt = duty_cycle_t and or_reduce(duty_cycle) /= '0') then
                o <= '1';
            end if;
            
            cnt <= STD_LOGIC_VECTOR(unsigned(cnt) + 1);
        end if;
    end process;

end Behavioral;
