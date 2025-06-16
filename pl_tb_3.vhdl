entity pl_tb_3 is
end pl_tb_3;

architecture tb of pl_tb_3 is
    signal sA, sB, sC : bit;
    signal sAND, sOR : bit;

    component pl_and_3
        port (A : in bit; B : in bit; C : in bit; S : out bit);
    end component;

    component pl_or_3
        port (A : in bit; B : in bit; C : in bit; S : out bit);
    end component;

begin
    u1: pl_and_3 port map (A => sA, B => sB, C => sC, S => sAND);
    u2: pl_or_3 port map (A => sA, B => sB, C => sC, S => sOR);

    u_tb: process
    begin
        sA <= '0'; sB <= '0'; sC <= '0'; wait for 10 ns;
        sA <= '0'; sB <= '0'; sC <= '1'; wait for 10 ns;
        sA <= '0'; sB <= '1'; sC <= '0'; wait for 10 ns;
        sA <= '0'; sB <= '1'; sC <= '1'; wait for 10 ns;
        sA <= '1'; sB <= '0'; sC <= '0'; wait for 10 ns;
        sA <= '1'; sB <= '0'; sC <= '1'; wait for 10 ns;
        sA <= '1'; sB <= '1'; sC <= '0'; wait for 10 ns;
        sA <= '1'; sB <= '1'; sC <= '1'; wait for 10 ns;
        wait;
    end process;
end tb;