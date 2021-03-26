----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2021 11:10:46
-- Design Name: 
-- Module Name: spi_testbench - Behavioral
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

entity spi_testbench is
    Generic (
        register_bits : POSITIVE := 8;
        period : time := 1us
    );
--  Port ( );
end spi_testbench;

architecture Behavioral of spi_testbench is
    signal data_in : STD_LOGIC_VECTOR(register_bits-1 downto 0) := "11101000";
    signal data_out : STD_LOGIC_VECTOR(register_bits-1 downto 0);
    signal send : STD_LOGIC_VECTOR(register_bits-1 downto 0):= "00010111";
    signal sclk : STD_LOGIC := '0';
    signal ss : STD_LOGIC := '0';
    signal mosi : STD_LOGIC := '0';
    signal miso : STD_LOGIC := '0';
begin
    encoder_uut : entity work.spi 
    generic map (
        register_bits => register_bits
    ) port map (
        data_in => data_in,
        data_out => data_out,
        sclk => sclk,
        ss => ss,
        mosi => mosi,
        miso => miso,
        rst => '0'
    );
    
    process
    begin
        sclk <= '0';
        ss <= '1';
        wait for period;
        ss <= '0';
        wait for period;
        for i in register_bits-1 downto 0 loop
            sclk <= '1';
            mosi <= send(i);
            wait for period;
            sclk <= '0';
            wait for period;
        end loop;
        for i in register_bits-1 downto 0 loop
            sclk <= '1';
            mosi <= send(i);
            wait for period;
            sclk <= '0';
            wait for period;
        end loop;
    end process;
            
end Behavioral;
