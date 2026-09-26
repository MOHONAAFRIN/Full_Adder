library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end or_gate;

architecture Structural of or_gate is

    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal X : STD_LOGIC;
    signal Z : STD_LOGIC;

begin

    -- NOT A
    NAND1: nand_gate
        port map (
            A => A,
            B => A,
            Y => X
        );

    -- NOT B
    NAND2: nand_gate
        port map (
            A => B,
            B => B,
            Y => Z
        );

    -- OR
    NAND3: nand_gate
        port map (
            A => X,
            B => Z,
            Y => Y
        );

end Structural;