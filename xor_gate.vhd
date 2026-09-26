library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end xor_gate;

architecture Structural of xor_gate is

    component nand_gate
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal X : STD_LOGIC;
    signal P : STD_LOGIC;
    signal Q : STD_LOGIC;

begin

    -- First NAND
    NAND1: nand_gate
        port map (
            A => A,
            B => B,
            Y => X
        );

    -- Second NAND
    NAND2: nand_gate
        port map (
            A => A,
            B => X,
            Y => P
        );

    -- Third NAND
    NAND3: nand_gate
        port map (
            A => B,
            B => X,
            Y => Q
        );

    -- Fourth NAND
    NAND4: nand_gate
        port map (
            A => P,
            B => Q,
            Y => Y
        );

end Structural;