----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2021 11:21:25 AM
-- Design Name: 
-- Module Name: data_controller - Behavioral
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
USE IEEE.STD_LOGIC_MISC.ALL;
USE IEEE.MATH_REAL.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY data_controller IS
    GENERIC (
        frame_width : POSITIVE := 16;
        data_width : POSITIVE := 9;
        data_id_bits : POSITIVE := 2;
        redundant_bits : POSITIVE := 3
    );
    PORT (
        rst : IN STD_LOGIC;
        pan_in : IN STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        tilt_in : IN STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        spi_in : IN STD_LOGIC_VECTOR(frame_width - 1 DOWNTO 0);
        pan_out : OUT STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        tilt_out : OUT STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        spi_out : OUT STD_LOGIC_VECTOR(frame_width - 1 DOWNTO 0)
    );
END data_controller;

ARCHITECTURE Behavioral OF data_controller IS
    SIGNAL data_in_id : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0);
    SIGNAL data_out_id : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0);
    SIGNAL data_out_t : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);

    CONSTANT frame_parity_split : POSITIVE := INTEGER(ceil((frame_width - redundant_bits) * 0.5));
BEGIN
    spi_in_process : PROCESS (spi_in)
        VARIABLE p1 : STD_LOGIC;
        VARIABLE p2 : STD_LOGIC;

        VARIABLE data_in_id_t : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0);
        VARIABLE data_out_id_t : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0);
    BEGIN
        p1 := spi_in(1) XOR xor_reduce(spi_in(frame_width - frame_parity_split DOWNTO redundant_bits));
        p2 := spi_in(2) XOR xor_reduce(spi_in(frame_width - 1 DOWNTO frame_width - frame_parity_split));

        data_in_id_t := spi_in(redundant_bits + data_id_bits - 1 DOWNTO redundant_bits);
        data_out_id_t := spi_in(redundant_bits + 2 * data_id_bits - 1 DOWNTO redundant_bits + data_id_bits);

        IF (p1 = '0' AND p2 = '0' AND spi_in(0) = NOT spi_in(1)) THEN
            IF (data_in_id_t = "11" OR data_in_id_t = "00") THEN
                IF (data_out_id_t = "11" OR data_out_id_t = "00") THEN
                    data_out_t <= spi_in(frame_width - 1 DOWNTO frame_width - data_width);
                    data_in_id <= data_in_id_t;

                    CASE data_out_id IS
                        WHEN "00" =>
                            pan_out <= data_out_t;
                        WHEN "11" =>
                            tilt_out <= data_out_t;
                        WHEN OTHERS =>
                            NULL;
                    END CASE;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    spi_out_process : PROCESS (data_in_id)
    BEGIN

    END PROCESS;

END Behavioral;