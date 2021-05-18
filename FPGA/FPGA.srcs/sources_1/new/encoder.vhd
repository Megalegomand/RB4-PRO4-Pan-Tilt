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
    Port ( clk : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           rst : in STD_LOGIC;
           cnt : out STD_LOGIC_VECTOR (n_bits-1 downto 0);
           zero : in STD_LOGIC);
end encoder;

architecture Behavioral of encoder is
    signal cnt_t : signed (n_bits-1 downto 0) := (others => '0');
    signal a_t : STD_LOGIC;
    signal b_t : STD_LOGIC;
begin
    cnt_update : process (clk)
    begin
        if (rising_edge(clk)) then
            cnt <= STD_LOGIC_VECTOR(cnt_t);
        end if;
    end process;

    encoder_update : process (a,zero,rst)
    begin
        if (rst = '1') then
            cnt_t <= (others => '0');
        elsif (zero = '1') then
            cnt_t <= (others => '0');
        end if;
        if (rising_edge(a)) then
            if (b = '1') then
                cnt_t <= cnt_t + "1";
            else
                cnt_t <= cnt_t - "1";
            end if;
        end if;
    end process;
end Behavioral;
