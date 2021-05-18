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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY encoder IS
    GENERIC (
        n_bits : POSITIVE := 1);
    PORT (
        clk : IN STD_LOGIC;
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        cnt : OUT STD_LOGIC_VECTOR (n_bits - 1 DOWNTO 0));
END encoder;

ARCHITECTURE Behavioral OF encoder IS
    SIGNAL cnt_t : SIGNED (n_bits - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL a_t : STD_LOGIC;
    SIGNAL b_t : STD_LOGIC;
BEGIN
    cnt_update : PROCESS (clk, rst)
    BEGIN
        IF (rst = '1') THEN
            cnt_t <= (OTHERS => '0');
        END IF;
        IF (rising_edge(clk)) THEN
            cnt <= STD_LOGIC_VECTOR(cnt_t);

            IF (a_t = '0' and a = '1') THEN
                IF (b = '1') THEN
                    cnt_t <= cnt_t + 1;
                ELSIF (b = '0') THEN
                    cnt_t <= cnt_t - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- encoder_update : process (a,rst)
    -- begin
    --     if (rst = '1') then
    --         cnt_t <= (others => '0');
    --     end if;
    --     if (rising_edge(a)) then
    --         if (b = '1') then
    --             cnt_t <= cnt_t + "1";
    --         else
    --             cnt_t <= cnt_t - "1";
    --         end if;
    --     end if;
    -- end process;
END Behavioral;