----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create date: 03.03.2021 09:55:01
-- design Name: 
-- Module Name: encoder - behavioral
-- Project Name: 
-- Target devices: 
-- Tool Versions: 
-- description: 
-- 
-- dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STd_LOGIC_1164.ALL;

-- uncomment the following library declaration if using
-- arithmetic functions with Signed or unsigned values
USE IEEE.NuMERIC_STd.ALL;

-- uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library uNISIM;
--use uNISIM.VComponents.all;

ENTITY encoder IS
    GENERIC (
        n_bits : POSITIVE := 1);
    PORT (
        clk : IN STD_LOGIC;
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        col_p : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        cnt : OUT STD_LOGIC_VECTOR (n_bits - 1 DOWNTO 0)
    );
END encoder;

ARCHITECTURE behavioral OF encoder IS
SIGNAL cnt_t : SIGNED (n_bits - 1 DOWNTO 0) := (OTHERS => '0');
SIGNAL a_t : STD_LOGIC := '0';
SIGNAL b_t : STD_LOGIC := '0';
SIGNAL col : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    -- cnt_update : PROCESS (clk)
    -- BEGIN
    --     IF (rising_edge(clk)) THEN
    --         cnt <= STD_LOGIC_VECTOR(cnt_t);
    --     END IF;
    -- END PROCESS;
    
    col <= a_t & b_t & a & b;
    col_p <= col;

    PROCESS (clk, rst)
    BEGIN
        IF (rst = '1') THEN
            cnt_t <= (OTHERS => '0');
            a_t <= a;
            b_t <= b;
        END IF;
        IF (rising_edge(clk)) THEN -- To counteract SPI reading on rising edge
            cnt <= STD_LOGIC_VECTOR(cnt_t);

            a_t <= a;
            b_t <= b;

            IF (col = "0010" OR col = "1011" OR col = "1101" OR col = "0100") THEN
                cnt_t <= cnt_t + 1;
            ELSIF (col = "0001" OR col = "0111" OR col = "1110" OR col = "1000") THEN
                cnt_t <= cnt_t - 1;
            END IF;
        END IF;
    END PROCESS;
END behavioral;