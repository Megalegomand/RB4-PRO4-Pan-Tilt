----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2021 09:55:01
-- Design Name: 
-- Module Name: encoder - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encoder is
    Generic (
        n_bits : POSITIVE := 1);
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cnt : out STD_LOGIC_VECTOR (n_bits-1 downto 0));
end encoder;

architecture Behavioral of encoder is
    signal cnt_t : STD_LOGIC_VECTOR (n_bits-1 downto 0) := (others => '0');
    
begin

    process (a,b)
        variable dir : INTEGER := 0;
    begin
        if (a'event and a = '1') then
            if (b = '1') then
                dir := 1;
            elsif (b = '0') then
                dir := -1;
            end if;
        end if;
        if (a'event and a = '0') then
            if (b = '1') then
                dir := -1;
            elsif (b = '0') then
                dir := 1;
            end if;
        end if;
        if (b'event and b = '1') then
            if (a = '1') then
                dir := -1;
            elsif (a = '0') then
                dir := 1;
            end if;
        end if;
        if (b'event and b = '0') then
            if (a = '1') then
                dir := 1;
        elsif (a = '0') then
                dir := -1;
            end if;
        end if;
        
        cnt_t <= STD_LOGIC_VECTOR(signed(cnt_t) + dir);
    end process;
    
    cnt <= cnt_t;

end Behavioral;
