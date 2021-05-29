----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2021 15:56:31
-- Design Name: 
-- Module Name: debouncer - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debouncer is
    Generic ( cnt_bits : POSITIVE := 1);
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           inp : in STD_LOGIC;
           outp : out STD_LOGIC);
end debouncer;

architecture Behavioral of debouncer is
    type    STATE_TYPE      is  (s_idle, s_out, s_idle_release, s_release_wait); 
    signal  current_state   :   STATE_TYPE  :=  s_idle;
    signal  next_state      :   STATE_TYPE  :=  s_idle;
    signal  cnt		    :   STD_LOGIC_VECTOR(cnt_bits-1 downto 0); 
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
            current_state   <=  s_idle;              -- Reset state
            -- Put additional reset assignments here

        elsif (rising_edge(clk)) then
        
            case current_state is                   -- State transition assignments
                when s_idle_release =>
                    case next_state is
                        when s_release_wait =>
                            cnt <= (others => '0');
                        when others =>
                            null;
                    end case;
                when s_release_wait =>
                    case next_state is
                        when s_release_wait =>
                            cnt <= STD_LOGIC_VECTOR(unsigned(cnt) + 1);
                        when others =>
                            null;
                    end case;
                when others =>
                    null;
            end case;
            
            current_state   <=  next_state;         -- State transition (only valid from process exit)
            
        end if;
    ------------------------------------------------------------------------------
    end process current_state_logic;
    ------------------------------------------------------------------------------

    ------------------------------------------------------------------------------
    next_state_logic    :   process(current_state, inp, cnt)  -- Add input signals to sensitivity list
    ------------------------------------------------------------------------------
    -- Next state logic process. Here goes state transition conditions. 
    -- Sensitive to state change and input signals.
    ------------------------------------------------------------------------------
    begin
    ------------------------------------------------------------------------------
        case current_state is                       -- Remember all state transition cases
            when s_idle =>
                if (inp = '0') then
                    next_state  <=  s_out;
                else
                    next_state  <=  s_idle;              -- Use conditional logic based on input signals
                end if;
            when s_out =>
                next_state <= s_idle_release;
            when s_idle_release =>
                if (inp = '1') then
                    next_state <= s_release_wait;
                else
                    next_state <= s_idle_release;
                end if;
            when s_release_wait =>
                if (and_reduce(cnt) = '1' and inp = '1') then
                    next_state <= s_idle;
                elsif (inp = '0') then
                    next_state <= s_idle_release;
                else
                    next_state <= s_release_wait;
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
        case current_state is                     
            when s_idle =>                           
                outp <= '0';                               
            when s_out =>
                outp <= '1';
            when s_idle_release =>
                outp <= '0';
            when s_release_wait =>
                outp <= '0';
            when others =>
                null;
        end case;
    ------------------------------------------------------------------------------
    end process output_logic;
    ------------------------------------------------------------------------------

end Behavioral;
