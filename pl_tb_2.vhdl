entity pl_tb_2 is
end pl_tb_2;

architecture tb of pl_tb_2 is
    signal sA, sB : bit;
    signal sAND, sNAND, sNOR, sXOR, sXNOR : bit;

    component pl_and_2
        port (A : in bit; B : in bit; S : out bit);
    end component;

    component pl_nand_2
        port (A : in bit; B : in bit; S : out bit);
    end component;

    component pl_nor_2
        port (A : in bit; B : in bit; S : out bit);
    end component;

    component pl_xor_2
        port (A : in bit; B : in bit; S : out bit);
    end component;

    component pl_xnor_2
        port (A : in bit; B : in bit; S : out bit);
    end component;

begin
    u1: pl_and_2 port map (A => sA, B => sB, S => sAND);
    u2: pl_nand_2 port map (A => sA, B => sB, S => sNAND);
    u3: pl_nor_2 port map (A => sA, B => sB, S => sNOR);
    u4: pl_xor_2 port map (A => sA, B => sB, S => sXOR);
    u5: pl_xnor_2 port map (A => sA, B => sB, S => sXNOR);

    u_tb: process
    begin
        sA <= '0'; sB <= '0'; wait for 10 ns;
        sA <= '0'; sB <= '1'; wait for 10 ns;
        sA <= '1'; sB <= '0'; wait for 10 ns;
        sA <= '1'; sB <= '1'; wait for 10 ns;
        wait;
    end process;
end tb;