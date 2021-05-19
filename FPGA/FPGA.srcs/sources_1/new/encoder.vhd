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
        u : OUT STD_LOGIC;
        d : OUT STD_LOGIC
    );
END encoder;

ARCHITECTURE behavioral OF encoder IS
    SIGNAL cnt_t : SIGNEd (n_bits - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL a_t : STD_LOGIC := '0';
    SIGNAL b_t : STD_LOGIC := '0';
    SIGNAL col : STD_LOGIC_VECTOR(3 DOWNTO 0);

    signal q0, q1 : STD_LOGIC;
BEGIN
    PROCESS (clk)
    BEGIN
        IF (clk'event AND clk = '1') THEN
            q0 <= a XOR b;
            q1 <= b;
        END IF;
    END PROCESS;
    u <= (NOT a AND NOT b AND q1) OR (NOT a AND q1 AND NOT q0)
        OR (a AND NOT q1 AND NOT q0) OR (a AND b AND NOT q1);
    d <= (NOT a AND b AND NOT q1) OR (NOT a AND NOT q1 AND q0)
        OR (a AND q1 AND q0) OR (a AND NOT b AND q1);
END behavioral;