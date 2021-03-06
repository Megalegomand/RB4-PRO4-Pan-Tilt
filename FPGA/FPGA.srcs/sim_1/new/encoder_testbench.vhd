----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2021 10:20:36
-- Design Name: 
-- Module Name: encoder_testbench - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encoder_testbench is
    Generic (
        n_bits : POSITIVE := 5;
        period : TIME := 1ns
    );
    Port ( 
        dir : in STD_LOGIC
    );
end encoder_testbench;

architecture Behavioral of encoder_testbench is
    signal enc1 : STD_LOGIC := '1';
    signal enc2 : STD_LOGIC := '0';
    signal a : STD_LOGIC;
    signal b : STD_LOGIC;
    signal cnt : STD_LOGIC_VECTOR(n_bits-1 downto 0);
begin
    
    process
    begin
        enc1 <= not enc1 after period * 2;
        wait for period;
        enc2 <= not enc2 after period * 2;
    end process;
    
    a <= enc1 when dir = '1' else
         enc2 when dir = '0';
    b <= enc2 when dir = '1' else
         enc1 when dir = '0';
    
    encoder_uut : entity work.encoder generic map (n_bits => n_bits) port map (a => a, b => b, cnt => cnt);

end Behavioral;
