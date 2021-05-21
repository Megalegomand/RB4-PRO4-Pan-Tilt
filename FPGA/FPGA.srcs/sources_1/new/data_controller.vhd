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
USE IEEE.NUMERIC_STD.ALL;

ENTITY data_controller IS
    GENERIC (
        frame_width : POSITIVE := 16;
        data_width : POSITIVE := 9;
        data_id_bits : POSITIVE := 2;
        redundant_bits : POSITIVE := 3
    );
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        pan_in : IN STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        tilt_in : IN STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        spi_rx : IN STD_LOGIC_VECTOR(frame_width - 1 DOWNTO 0);
        pan_out : OUT STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
        tilt_out : OUT STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
        spi_tx : OUT STD_LOGIC_VECTOR(frame_width - 1 DOWNTO 0) := (OTHERS => '0')
    );
END data_controller;

ARCHITECTURE Behavioral OF data_controller IS
    SIGNAL data_tx_id : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL data_rx_id : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0);
    SIGNAL data_rx : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);

    SIGNAL pan_out_t : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
    SIGNAL tilt_out_t : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);

    CONSTANT frame_parity_split : POSITIVE := INTEGER(ceil(real(frame_width - redundant_bits) * 0.5));

    FUNCTION parity_bits (
        spi_data : IN STD_LOGIC_VECTOR(frame_width - 1 DOWNTO 0))
        RETURN STD_LOGIC_VECTOR IS
        VARIABLE parity : STD_LOGIC_VECTOR(redundant_bits - 1 DOWNTO 0) := (OTHERS => '0');
    BEGIN
        parity(1) := xor_reduce(spi_data(frame_width - frame_parity_split DOWNTO redundant_bits));
        parity(2) := xor_reduce(spi_data(frame_width - 1 DOWNTO frame_width - frame_parity_split));
        parity(0) := NOT parity(1);
        RETURN parity;
    END FUNCTION parity_bits;
BEGIN

    spi_rx_process : PROCESS (spi_rx)
        VARIABLE p1 : STD_LOGIC;
        VARIABLE p2 : STD_LOGIC;

        VARIABLE data_rx_id_t : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0);
        VARIABLE data_tx_id_t : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0);

        VARIABLE parity : STD_LOGIC_VECTOR(redundant_bits - 1 DOWNTO 0);
    BEGIN
        data_tx_id_t := spi_rx(redundant_bits + data_id_bits - 1 DOWNTO redundant_bits);
        data_rx_id_t := spi_rx(redundant_bits + 2 * data_id_bits - 1 DOWNTO redundant_bits + data_id_bits);

        IF (spi_rx(redundant_bits - 1 DOWNTO 0) = parity_bits(spi_rx)) THEN
            IF (data_rx_id_t = "11" OR data_rx_id_t = "00") THEN
                IF (data_tx_id_t = "11" OR data_tx_id_t = "00") THEN
                    data_rx <= spi_rx(frame_width - 1 DOWNTO frame_width - data_width);
                    data_tx_id <= data_tx_id_t;
                    data_rx_id <= data_rx_id_t;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    spi_tx_process : PROCESS (clk)
        VARIABLE p1 : STD_LOGIC;
        VARIABLE p2 : STD_LOGIC;

        VARIABLE data_tx : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);

        VARIABLE spi_tx_t : STD_LOGIC_VECTOR(frame_width - 1 DOWNTO 0);
    BEGIN
        IF (falling_edge(clk)) THEN -- To not intefere with SPI reading and encoder writing on rising
            IF (data_tx_id = "11" OR data_tx_id = "00") THEN
                CASE data_tx_id IS
                    WHEN "00" =>
                        data_tx := pan_in;
                    WHEN "11" =>
                        data_tx := tilt_in;
                    WHEN OTHERS => -- Should never happen
                        NULL;
                END CASE;

                spi_tx_t := data_tx & data_tx_id & "10" & "000";
                spi_tx_t(redundant_bits - 1 DOWNTO 0) := parity_bits(spi_tx_t);

                spi_tx <= spi_tx_t;
            END IF;
        END IF;
    END PROCESS;

    pan_out <= pan_out_t;
    tilt_out <= tilt_out_t;

    out_process : PROCESS (clk)
    BEGIN
        IF (falling_edge(clk)) THEN -- To not intefere with PWM reading on rising
            CASE data_rx_id IS
                WHEN "00" =>
                    pan_out_t(data_width - 2 DOWNTO 0) <= abs(signed(data_rx));
                    pan_out_t(data_width - 1) <= data_rx(data_width - 1);
                    tilt_out_t <= tilt_out_t;
                WHEN "11" =>
                    pan_out_t <= pan_out_t;
                    tilt_out_t(data_width - 2 DOWNTO 0) <= abs(signed(data_rx));
                    tilt_out_t(data_width - 1) <= data_rx(data_width - 1);
                WHEN OTHERS =>
                    NULL;
            END CASE;
        END IF;
    END PROCESS;
END Behavioral;