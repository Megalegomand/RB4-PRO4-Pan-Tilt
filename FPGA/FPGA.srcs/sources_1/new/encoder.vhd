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
           state : out STD_LOGIC_VECTOR(3 downto 0);
           cnt : out STD_LOGIC_VECTOR (n_bits-1 downto 0));
end encoder;

architecture Behavioral of encoder is
    signal cnt_t : STD_LOGIC_VECTOR (n_bits-1 downto 0) := (others => '0');
    signal a_t : STD_LOGIC;
    signal b_t : STD_LOGIC;
begin
    
    cnt <= cnt_t;
    state <= a & b & a_t & b_t;


    process (clk,rst)
    begin
        if (rst = '1') then
            cnt_t <= (others => '0');
        end if;
        if (rising_edge(clk)) then
            a_t <= a; -- Valid from process exit
            b_t <= b; -- Valid from process exit

            if (a_t = '0' and a='1') then
                if (b = '1') then
                    cnt_t <= STD_LOGIC_VECTOR(signed(cnt_t) + 1);
                else
                    cnt_t <= STD_LOGIC_VECTOR(signed(cnt_t) - 1);
                end if;
            elsif (a_t = '1' and a = '0') then
                if (b = '1') then
                    cnt_t <= STD_LOGIC_VECTOR(signed(cnt_t) - 1);
                else
                    cnt_t <= STD_LOGIC_VECTOR(signed(cnt_t) + 1);
                end if;
            elsif (b_t = '0' and b = '1') then
                if (a = '1') then
                    cnt_t <= STD_LOGIC_VECTOR(signed(cnt_t) - 1);
                else
                    cnt_t <= STD_LOGIC_VECTOR(signed(cnt_t) + 1);
                end if;
            elsif (b_t = '1' and b = '0') then
                if (a = '1') then
                    cnt_t <= STD_LOGIC_VECTOR(signed(cnt_t) + 1);
                else
                    cnt_t <= STD_LOGIC_VECTOR(signed(cnt_t) - 1);
                end if;
            end if;
        end if;
    end process;
end Behavioral;
