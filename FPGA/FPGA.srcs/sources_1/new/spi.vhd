----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2021 10:22:37
-- Design Name: 
-- Module Name: spi - Behavioral
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
use IEEE.STD_LOGIC_MISC.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi is
    Generic (
        register_bits : POSITIVE := 8
    );
    Port ( rst      : in  STD_LOGIC;
           clk      : in  STD_LOGIC;
           sclk     : in  STD_LOGIC;
           ss       : in  STD_LOGIC;
           sdi      : in  STD_LOGIC;
           data_in  : in  STD_LOGIC_VECTOR(register_bits-1 downto 0);
           sdo      : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR(register_bits-1 downto 0)           
    );
end spi;

architecture Behavioral of spi is
    constant reg_n_bits : natural := integer(ceil(log2(real(register_bits))));
    
    signal reg : STD_LOGIC_VECTOR(register_bits-1 downto 0);
    signal reg_n : STD_LOGIC_VECTOR(reg_n_bits-1 downto 0);
    
    type    STATE_TYPE      is  (s_rst, s_low, s_high);    --  add states here
    signal  current_state   :   STATE_TYPE  :=  s_rst;
    signal  next_state      :   STATE_TYPE  :=  s_rst;
begin
    ------------------------------------------------------------------------------
    current_state_logic : process(clk, rst)
    ------------------------------------------------------------------------------
    -- Current state logic process. Here goes state transitions and state 
    -- transition assignments. Clock and reset sensitive.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        if (rst = '1') then
            current_state   <=  s_rst;
            data_out <= (others => '0');
            reg <= (others => '0');
            reg_n <= (others => '1');
            sdo <= '0';
        elsif (rising_edge(clk)) then
            case current_state is
                when s_rst =>
                    case next_state is
                        when s_low =>
                            reg_n <= (others => '1');
                        when others =>
                            null;
                    end case;
                when s_low =>
                    case next_state is
                        when s_high =>
                            -- Write
                            if (and_reduce(reg_n) = '1') then
                                reg <= data_in;
                                sdo <= data_in(register_bits-1);
                            else 
                                sdo <= reg(register_bits-1);
                            end if;
                            reg_n <= STD_LOGIC_VECTOR(unsigned(reg_n) + 1);
                        when others =>
                            null;
                    end case;
                when s_high =>
                    case next_state is
                        when s_low =>
                            -- Read
                            reg <= reg(register_bits-2 downto 0) & sdi;
                        when s_rst =>
                            data_out <= reg(register_bits-2 downto 0) & sdi;
                        when others =>
                            null;
                     end case;
                when others =>
                    null;
            end case;

            current_state <= next_state;         -- State transition (only valid from process exit)
        end if;
    ------------------------------------------------------------------------------
    end process current_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    next_state_logic    :   process(current_state, sclk, ss)  -- Add input signals to sensitivity list
    ------------------------------------------------------------------------------
    -- Next state logic process. Here goes state transition conditions. 
    -- Sensitive to state change and input signals.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        case current_state is                       -- Remember all state transition cases
            when s_rst =>
                if (ss = '0') then
                    next_state <= s_low;
                else 
                    next_state  <=  s_rst;
                end if;
            when s_low =>
                if (ss = '1') then
                    next_state <= s_rst;
                elsif (sclk = '1') then
                    next_state <= s_high;
                else
                    next_state <= s_low;
                end if;
            when s_high =>
                if (ss = '1') then
                    next_state <= s_rst;
                elsif (sclk = '0') then
                    if (reg_n = STD_LOGIC_VECTOR(to_unsigned(register_bits-1, reg_n_bits))) then
                        next_state <= s_rst;
                    else
                        next_state <= s_low;
                    end if;
                else
                    next_state <= s_high;
                end if;
                
            when others =>
                null;
        end case;
    ------------------------------------------------------------------------------
    end process next_state_logic;
    ------------------------------------------------------------------------------





--    process (ss, sclk, rst)
--    begin
--        if (rst = '1') then
--            current_state <= s_idle;
--            data_out <= (others => '0');
--            --reg <= (others => '0');
--            reg_n <= (others => '1');
--            sdo <= '0';
--        end if;
        
--        case current_state is
--            when s_idle =>
--                if (ss = '0') then
--                    current_state <= s_write;
--                    reg_n <= (others => '1');
--                end if;
--            when (s_write) =>
--                if (sclk = '1') then
--                    if (and_reduce(reg_n) = '1') then
--                        data_in_t <= data_in;
--                        sdo <= data_in(register_bits-1);
--                    else
--                        sdo <= reg(register_bits-1);
--                    end if;
--                    current_state <= s_read;
--                    reg_n <= STD_LOGIC_VECTOR(unsigned(reg_n) + 1);
--                end if;
--            when s_read =>
--                if (sclk = '0') then
--                    if (reg_n = STD_LOGIC_VECTOR(to_unsigned(register_bits-1, reg_n_bits))) then
--                        if (ss = '1') then
--                            current_state <= s_idle;
--                        else
--                            current_state <= s_write;
--                        end if;
--                        data_out <= reg(register_bits-2 downto 0) & sdi;
--                    else
--                        current_state <= s_write;
--                        if (or_reduce(reg_n) = '0') then
--                            reg <=  data_in_t(register_bits-2 downto 0) & sdi;
--                        else
--                            reg <=  reg(register_bits-2 downto 0) & sdi;
--                        end if;
--                    end if;
--                end if;
--            when others =>
--                null;
--        end case;
--    end process;
end Behavioral;
