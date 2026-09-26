library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder1 is
    Port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        Cin  : in  STD_LOGIC;
        Sum  : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end full_adder1;

architecture Strutural of full_adder1 is

    component xor_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    component and_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    component or_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal X1 : STD_LOGIC;
    signal X2 : STD_LOGIC;
    signal X3 : STD_LOGIC;

begin

    -- A XOR B
    XOR1: xor_gate
        port map (
            A => A,
            B => B,
            Y => X1
        );

    -- (A XOR B) XOR Cin
    XOR2: xor_gate
        port map (
            A => X1,
            B => Cin,
            Y => Sum
        );

    -- A AND B
    AND1: and_gate
        port map (
            A => A,
            B => B,
            Y => X2
        );

    -- (A XOR B) AND Cin
    AND2: and_gate
        port map (
            A => X1,
            B => Cin,
            Y => X3
        );

    -- Carry output
    OR1: or_gate
        port map (
            A => X2,
            B => X3,
            Y => Cout
        );

end Strutural;