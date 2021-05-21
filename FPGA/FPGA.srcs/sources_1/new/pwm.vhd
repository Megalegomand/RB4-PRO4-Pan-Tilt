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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_misc.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY pwm IS
    GENERIC (
        n_bits : POSITIVE := 2);
    PORT (
        clk : IN STD_LOGIC;
        duty_cycle : IN STD_LOGIC_VECTOR (n_bits - 1 DOWNTO 0);
        o : OUT STD_LOGIC);
END pwm;

ARCHITECTURE Behavioral OF pwm IS
    SIGNAL cnt : STD_LOGIC_VECTOR (n_bits - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL duty_cycle_t : STD_LOGIC_VECTOR (n_bits - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN

    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (or_reduce(cnt) = '0') THEN
                duty_cycle_t <= duty_cycle;
                IF (or_reduce(duty_cycle) /= '0') THEN
                    o <= '1';
                END IF;
            END IF;

            IF (cnt = duty_cycle_t) THEN
                o <= '0';
            END IF;

            cnt <= STD_LOGIC_VECTOR(unsigned(cnt) + 1);
        END IF;
    END PROCESS;

END Behavioral;