--------------------------------------------------------------------------------
-- VHDL Test Bench for Full Adder
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder1_tb IS
END full_adder1_tb;

ARCHITECTURE behavior OF full_adder1_tb IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT full_adder1
    PORT(
         A    : IN  std_logic;
         B    : IN  std_logic;
         Cin  : IN  std_logic;
         Sum  : OUT std_logic;
         Cout : OUT std_logic
        );
    END COMPONENT;

    -- Inputs
    signal A   : std_logic := '0';
    signal B   : std_logic := '0';
    signal Cin : std_logic := '0';

    -- Outputs
    signal Sum  : std_logic;
    signal Cout : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: full_adder1 PORT MAP (
        A    => A,
        B    => B,
        Cin  => Cin,
        Sum  => Sum,
        Cout => Cout
    );

    -- Stimulus process
    stim_proc: process
    begin

        -- 000 -> Sum=0, Cout=0
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        -- 001 -> Sum=1, Cout=0
        A <= '0';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        -- 010 -> Sum=1, Cout=0
        A <= '0';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        -- 011 -> Sum=0, Cout=1
        A <= '0';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        -- 100 -> Sum=1, Cout=0
        A <= '1';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        -- 101 -> Sum=0, Cout=1
        A <= '1';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        -- 110 -> Sum=0, Cout=1
        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        -- 111 -> Sum=1, Cout=1
        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        -- Stop simulation
        wait;

    end process;

END;