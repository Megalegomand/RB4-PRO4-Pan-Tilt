LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.MATH_REAL.ALL;
USE IEEE.STD_LOGIC_MISC.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY spi IS
    GENERIC (
        data_width : POSITIVE := 8;
        spo : STD_LOGIC := '0';
        sph : STD_LOGIC := '0'
    );
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        sclk : IN STD_LOGIC;
        sdi : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0);
        ss : IN STD_LOGIC;
        sdo : OUT STD_LOGIC;
        state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0)
    );
END spi;

ARCHITECTURE Behavioral OF spi IS
    CONSTANT cnt_bits : NATURAL := INTEGER(ceil(log2(real(data_width))));

    SIGNAL reg : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL reg_cnt : STD_LOGIC_VECTOR(cnt_bits - 1 DOWNTO 0) := (OTHERS => '0');

    SIGNAL data_out_t : STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL sdo_t : STD_LOGIC := '0';

    TYPE STATE_TYPE IS (s_rst, s_wait, s_high, s_low); --  add states here
    SIGNAL current_state : STATE_TYPE := s_rst;
    SIGNAL next_state : STATE_TYPE := s_rst;
BEGIN
    ------------------------------------------------------------------------------
    current_state_logic : PROCESS (clk, rst)
        ------------------------------------------------------------------------------
        -- Current state logic process. Here goes state transitions and state 
        -- transition assignments. Clock and reset sensitive.
        ------------------------------------------------------------------------------
    BEGIN
        ------------------------------------------------------------------------------
        IF (rst = '1') THEN
            current_state <= s_rst; -- Reset state
            data_out_t <= (OTHERS => '0');
            reg_cnt <= (OTHERS => '0');
            reg <= (OTHERS => '0');
        ELSIF (rising_edge(clk)) THEN --if (sclk'event or ss'event) then
            current_state <= next_state; -- State transition (only valid from process exit)

            CASE current_state IS -- State transition assignments
                WHEN s_rst => -- Remember all possibilities
                    CASE next_state IS -- Use others and null for default
                        WHEN s_rst =>
                            NULL;
                        WHEN s_wait =>
                            IF (sph = '0') THEN
                                -- First write
                                reg <= data_in;
                                sdo_t <= data_in(data_width - 1);
                                reg_cnt <= (OTHERS => '0');
                            END IF;
                        WHEN OTHERS =>
                            NULL;
                    END CASE;
                WHEN s_wait =>
                    CASE next_state IS
                        WHEN s_wait =>
                            NULL;
                        WHEN s_rst =>
                            NULL;
                        WHEN s_high =>
                            IF (sph = '1') THEN
                                -- First write
                                reg <= data_in;
                                sdo_t <= data_in(data_width - 1);
                                reg_cnt <= (OTHERS => '0');
                            ELSE
                                -- Read
                                reg <= reg(data_width - 2 DOWNTO 0) & sdi;
                            END IF;
                        WHEN OTHERS =>
                            NULL;
                    END CASE;
                WHEN s_high =>
                    CASE next_state IS
                        WHEN s_high =>
                            NULL;
                        WHEN s_rst =>
                            NULL;
                        WHEN s_low =>
                            IF (sph = '1') THEN
                                -- Read
                                reg <= reg(data_width - 2 DOWNTO 0) & sdi;
                            ELSE
                                -- Write
                                sdo_t <= reg(data_width - 1);
                                reg_cnt <= STD_LOGIC_VECTOR(unsigned(reg_cnt) + 1);
                            END IF;
                        WHEN s_wait =>
                            -- Last read
                            data_out_t <= reg(data_width - 2 DOWNTO 0) & sdi;
                        WHEN OTHERS =>
                            NULL;
                    END CASE;
                WHEN s_low =>
                    CASE next_state IS
                        WHEN s_low =>
                            NULL;
                        WHEN s_rst =>
                            NULL;
                        WHEN s_high =>
                            IF (sph = '1') THEN
                                -- Write
                                sdo_t <= reg(data_width - 1);
                                reg_cnt <= STD_LOGIC_VECTOR(unsigned(reg_cnt) + 1);
                            ELSE
                                -- Read
                                reg <= reg(data_width - 2 DOWNTO 0) & sdi;
                            END IF;
                        WHEN s_wait =>
                            -- Last read
                            data_out_t <= reg(data_width - 2 DOWNTO 0) & sdi;
                        WHEN OTHERS =>
                            NULL;
                    END CASE;
                WHEN OTHERS =>
                    NULL;
            END CASE;

        END IF;
        ------------------------------------------------------------------------------
    END PROCESS current_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    next_state_logic : PROCESS (current_state, ss, sclk) -- Add input signals to sensitivity list
        ------------------------------------------------------------------------------
        -- Next state logic process. Here goes state transition conditions. 
        -- Sensitive to state change and input signals.
        ------------------------------------------------------------------------------
    BEGIN
        ------------------------------------------------------------------------------
        CASE current_state IS -- Remember all state transition cases
            WHEN s_rst =>
                IF (ss = '0') THEN
                    --if (sph = '0') then
                    --    next_state <= s_low;
                    --else
                    next_state <= s_wait;
                    --end if;
                ELSE
                    next_state <= s_rst;
                END IF;
            WHEN s_wait =>
                IF (ss = '1') THEN
                    next_state <= s_rst;
                ELSIF (sclk = NOT spo) THEN
                    IF ((sph = '0' AND and_reduce(reg_cnt) /= '1') OR sph = '1') THEN
                        next_state <= s_high;
                    ELSE
                        next_state <= s_wait;
                    END IF;
                ELSE
                    next_state <= s_wait;
                END IF;
            WHEN s_high =>
                IF (ss = '1') THEN
                    next_state <= s_rst;
                ELSIF (sclk = spo) THEN
                    IF (and_reduce(reg_cnt) = '1') THEN
                        next_state <= s_wait;
                    ELSE
                        next_state <= s_low;
                    END IF;
                ELSE
                    next_state <= s_high;
                END IF;
            WHEN s_low =>
                IF (ss = '1') THEN
                    next_state <= s_rst;
                ELSIF (sclk = NOT spo) THEN
                    IF (and_reduce(reg_cnt) = '1') THEN
                        next_state <= s_wait;
                    ELSE
                        next_state <= s_high;
                    END IF;
                ELSE
                    next_state <= s_low;
                END IF;
            WHEN OTHERS =>
                NULL;
        END CASE;
        ------------------------------------------------------------------------------
    END PROCESS next_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    output_logic : PROCESS (current_state)
        ------------------------------------------------------------------------------
        -- Output logic process. Here goes output assignments. 
        -- Sensitive to state change only.
        ------------------------------------------------------------------------------
    BEGIN
        ------------------------------------------------------------------------------
        CASE current_state IS -- Remember all states
            WHEN s_rst =>
                state <= "00" & reg_cnt(0) & reg_cnt(cnt_bits - 1);
                sdo <= '0';
                data_out <= data_out_t;
            WHEN s_wait =>
                state <= "01" & reg_cnt(0) & reg_cnt(cnt_bits - 1);
                sdo <= sdo_t;
                data_out <= data_out_t;
            WHEN s_high =>
                state <= "10" & reg_cnt(0) & reg_cnt(cnt_bits - 1);
                sdo <= sdo_t;
                data_out <= data_out_t;
            WHEN s_low =>
                state <= "11" & reg_cnt(0) & reg_cnt(cnt_bits - 1);
                sdo <= sdo_t;
                data_out <= data_out_t;
            WHEN OTHERS =>
                NULL;
        END CASE;
        ------------------------------------------------------------------------------
    END PROCESS output_logic;
    ------------------------------------------------------------------------------
END Behavioral;