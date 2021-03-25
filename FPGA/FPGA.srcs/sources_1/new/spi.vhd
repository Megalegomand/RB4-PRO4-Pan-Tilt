----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2021 10:22:37
-- Design Name: 
-- Module Name: spi - Behavioral
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
use IEEE.STD_LOGIC_MISC.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi is
    Generic (
        register_bits : POSITIVE := 8
    );
    Port ( rst : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR(register_bits-1 downto 0);
           data_out : out STD_LOGIC_VECTOR(register_bits-1 downto 0);
           sclk : in STD_LOGIC;
           ss : in STD_LOGIC;
           mosi : in STD_LOGIC;
           miso : out STD_LOGIC
           );
end spi;

architecture Behavioral of spi is
    constant reg_n_bits : natural := integer(ceil(log2(real(register_bits))));
    
    signal reg : STD_LOGIC_VECTOR(register_bits-1 downto 0);
    signal reg_n : STD_LOGIC_VECTOR(reg_n_bits-1 downto 0);
    
    signal data_in_t : STD_LOGIC_VECTOR(register_bits-1 downto 0);
    
    type    STATE_TYPE      is  (s_idle, s_read, s_write);    --  add states here
    signal  current_state   :   STATE_TYPE  :=  s_idle;
    
begin

    process (ss, sclk, rst)
    begin
        if (rst = '1') then
            current_state <= s_idle;
            data_out <= (others => '0');
            --reg <= (others => '0');
            reg_n <= (others => '1');
            miso <= '0';
        end if;
        if (ss'event and ss = '0') then
            if (current_state = s_idle) then
                current_state <= s_write;
                reg_n <= (others => '1');
            end if;
        end if;
        if (sclk'event and sclk = '1') then
            if (current_state = s_write) then
                if (and_reduce(reg_n) = '1') then
                    data_in_t <= data_in;
                    miso <= data_in(register_bits-1);
                else
                    miso <= reg(register_bits-1);
                end if;
                current_state <= s_read;
                reg_n <= STD_LOGIC_VECTOR(unsigned(reg_n) + 1);
            end if;
        end if;
        if (sclk'event and sclk = '0') then
            if (current_state = s_read) then
                if (reg_n = STD_LOGIC_VECTOR(to_unsigned(register_bits-1, reg_n_bits))) then
                    current_state <= s_idle;
                    data_out <= reg(register_bits-2 downto 0) & mosi;
                else
                    current_state <= s_write;
                    if (or_reduce(reg_n) = '0') then
                        reg <=  data_in_t(register_bits-2 downto 0) & mosi;
                    else
                        reg <=  reg(register_bits-2 downto 0) & mosi;
                    end if;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
