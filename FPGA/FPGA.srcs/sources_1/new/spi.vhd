library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.MATH_REAL.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi_slave is
    Generic (
        data_width : POSITIVE := 8;
        spo : STD_LOGIC := '0';
        sph : STD_LOGIC := '0'
    );
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           sclk : in STD_LOGIC;
           sdi : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR(data_width-1 downto 0);
           ss : in STD_LOGIC;
           sdo : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR(data_width-1 downto 0)
    );
end spi_slave;

architecture Behavioral of spi_slave is
    constant cnt_bits : natural :=  integer(ceil(log2(real(data_width))));
    
    signal reg   : STD_LOGIC_VECTOR(data_width-1 downto 0) := (others => '0');
    signal reg_cnt : STD_LOGIC_VECTOR(cnt_bits-1 downto 0) := (others => '0');
    
    signal data_out_t : STD_LOGIC_VECTOR(data_width-1 downto 0) := (others => '0');
    signal sdo_t : STD_LOGIC := '0';
    
    type    STATE_TYPE      is  (s_rst, s_wait, s_high, s_low);    --  add states here
    signal  current_state   :   STATE_TYPE  :=  s_rst;
    signal  next_state      :   STATE_TYPE  :=  s_rst;
begin
    ------------------------------------------------------------------------------
    current_state_logic :   process(clk, rst)
    ------------------------------------------------------------------------------
    -- Current state logic process. Here goes state transitions and state 
    -- transition assignments. Clock and reset sensitive.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        if (rst = '1') then
            current_state   <=  s_rst;              -- Reset state
            data_out_t <= (others => '0');
            reg_cnt <= (others => '0');
            reg <= (others => '0');
        elsif (rising_edge(clk)) then --if (sclk'event or ss'event) then
            current_state   <=  next_state;         -- State transition (only valid from process exit)

            case current_state is                   -- State transition assignments
                when s_rst =>                       -- Remember all possibilities
                    case next_state is              -- Use others and null for default
                        when s_rst =>
                            null;
                        when s_wait =>
                            if (sph='0') then
                                -- First write
                                reg <= data_in;
                                sdo_t <= data_in(data_width-1);
                                reg_cnt <= (others => '0');
                            end if;
                        when others =>
                            null;
                    end case;
                when s_wait =>
                    case next_state is
                        when s_wait =>
                            null;
                        when s_rst =>
                            null;
                        when s_high =>
                            if (sph='1') then
                                -- First write
                                reg <= data_in;
                                sdo_t <= data_in(data_width-1);
                                reg_cnt <= (others => '0');
                            else 
                                -- Read
                                reg <= reg(data_width-2 downto 0) & sdi;
                            end if;
                        when others =>
                            null;
                    end case;
                when s_high =>
                    case next_state is
                        when s_high =>
                            null;
                        when s_rst =>
                            null;
                        when s_low =>
                            if (sph='1') then
                                -- Read
                                reg <= reg(data_width-2 downto 0) & sdi;
                            else
                                -- Write
                                sdo_t <= reg(data_width-1);
                                reg_cnt <= STD_LOGIC_VECTOR(unsigned(reg_cnt) + 1);
                            end if;
                        when s_wait =>
                            -- Last read
                            data_out_t <= reg(data_width-2 downto 0) & sdi;
                        when others =>
                            null;
                    end case;
                when s_low =>
                    case next_state is
                        when s_low =>
                            null;
                        when s_rst =>
                            null;
                        when s_high =>
                            if (sph='1') then
                                -- Write
                                sdo_t <= reg(data_width-1);
                                reg_cnt <= STD_LOGIC_VECTOR(unsigned(reg_cnt) + 1);
                            else
                                -- Read
                                reg <= reg(data_width-2 downto 0) & sdi;   
                            end if;
                        when s_wait =>
                            -- Last read
                            data_out_t <= reg(data_width-2 downto 0) & sdi;
                        when others =>
                            null;
                    end case;
                when others =>
                    null;
            end case;

        end if;
    ------------------------------------------------------------------------------
    end process current_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    next_state_logic    :   process(current_state, ss, sclk)  -- Add input signals to sensitivity list
    ------------------------------------------------------------------------------
    -- Next state logic process. Here goes state transition conditions. 
    -- Sensitive to state change and input signals.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        case current_state is                       -- Remember all state transition cases
            when s_rst =>
                if (ss = '0') then
                    --if (sph = '0') then
                    --    next_state <= s_low;
                    --else
                        next_state <= s_wait;
                    --end if;
                else
                    next_state <= s_rst;
                end if;
            when s_wait =>
                if (ss = '1') then
                    next_state <= s_rst;
                elsif (sclk = not spo) then
                    if ((sph='0' and and_reduce(reg_cnt) /= '1') or sph='1') then
                        next_state <= s_high;
                    else 
                        next_state <= s_wait;
                    end if;
                else
                    next_state <= s_wait;
                end if;
            when s_high =>
                if (ss = '1') then
                    next_state <= s_rst;
                elsif (sclk = spo) then
                    if (and_reduce(reg_cnt) = '1') then
                        next_state <= s_wait;
                    else
                        next_state <= s_low;
                    end if;
                else 
                    next_state <= s_high;
                end if;
            when s_low =>
                if (ss = '1') then
                    next_state <= s_rst;
                elsif (sclk = not spo) then
                    if (and_reduce(reg_cnt) = '1') then
                        next_state <= s_wait;
                    else 
                        next_state <= s_high;
                    end if;
                else 
                    next_state <= s_low;
                end if;
            when others =>
                null;
        end case;
    ------------------------------------------------------------------------------
    end process next_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    output_logic        :   process(current_state)
    ------------------------------------------------------------------------------
    -- Output logic process. Here goes output assignments. 
    -- Sensitive to state change only.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        case current_state is                       -- Remember all states
            when s_rst => 
                sdo <= '0';
                data_out <= data_out_t;
            when s_wait =>
                sdo <= sdo_t;
                data_out <= data_out_t;
            when s_high =>
                sdo <= sdo_t;
                data_out <= data_out_t;
            when s_low =>
                sdo <= sdo_t;
                data_out <= data_out_t;
            when others =>
                null;
        end case;
    ------------------------------------------------------------------------------
    end process output_logic;
    ------------------------------------------------------------------------------
end Behavioral;
