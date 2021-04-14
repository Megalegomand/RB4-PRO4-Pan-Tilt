----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2021 14:12:23
-- Design Name: 
-- Module Name: clock_divider - Behavioral
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
use IEEE.STD_LOGIC_MISC.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_divider is
    Generic (n_bits : POSITIVE := 2);
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk_div : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is
    signal cnt : STD_LOGIC_VECTOR(n_bits-1 downto 0) := (others => '0');
begin

    process(clk, rst)
    
    begin
        if (rst = '1') then
            cnt <= (others => '0');
        end if;
        if (rising_edge(clk)) then
            cnt <= STD_LOGIC_VECTOR(unsigned(cnt) + 1);
        end if;
    end process;
    
    clk_div <= cnt(n_bits-1);
    
end Behavioral;
