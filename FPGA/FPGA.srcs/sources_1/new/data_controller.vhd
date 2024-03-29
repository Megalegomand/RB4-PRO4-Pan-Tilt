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

    FUNCTION parity_bits (
        spi_data : IN STD_LOGIC_VECTOR(frame_width - 1 DOWNTO 0))
        RETURN STD_LOGIC_VECTOR IS
        VARIABLE parity : STD_LOGIC_VECTOR(redundant_bits - 1 DOWNTO 0) := (OTHERS => '0');
        VARIABLE cnt : UNSIGNED(redundant_bits - 1 DOWNTO 0);
    BEGIN
        FOR i IN redundant_bits TO frame_width - 1 LOOP --check for all the bits.
            IF (spi_data(i) = '1') THEN --check if the bit is '1'
                cnt := cnt + 1; --if its one, increment the count.
            END IF;
        END LOOP;
        parity := STD_LOGIC_VECTOR(cnt);
        RETURN parity;
    END FUNCTION parity_bits;
BEGIN

    spi_rx_process : PROCESS (clk)
        VARIABLE p1 : STD_LOGIC;
        VARIABLE p2 : STD_LOGIC;

        VARIABLE data_rx_id_t : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0);
        VARIABLE data_tx_id_t : STD_LOGIC_VECTOR(data_id_bits - 1 DOWNTO 0);

        VARIABLE parity : STD_LOGIC_VECTOR(redundant_bits - 1 DOWNTO 0);
    BEGIN
        IF (falling_edge(clk)) THEN
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
        VARIABLE abs_conv : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
    BEGIN
        IF (rising_edge(clk)) THEN
            abs_conv := STD_LOGIC_VECTOR(ABS(signed(data_rx)));
            CASE data_rx_id IS
                WHEN "00" =>
                    pan_out_t <= data_rx(data_width - 1) & abs_conv(data_width - 2 DOWNTO 0);
                    tilt_out_t <= tilt_out_t;
                WHEN "11" =>
                    pan_out_t <= pan_out_t;
                    tilt_out_t <= data_rx(data_width - 1) & abs_conv(data_width - 2 DOWNTO 0);
                WHEN OTHERS =>
                    NULL;
            END CASE;
        END IF;
    END PROCESS;
END Behavioral;