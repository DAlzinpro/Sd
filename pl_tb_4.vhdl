entity pl_tb_4 is
end pl_tb_4;

architecture tb of pl_tb_4 is
    signal sA, sB, sC, sD : bit;
    signal sAND, sOR : bit;

    component pl_and_4
        port (A : in bit; B : in bit; C : in bit; D : in bit; S : out bit);
    end component;

    component pl_or_4
        port (A : in bit; B : in bit; C : in bit; D : in bit; S : out bit);
    end component;

begin
    u1: pl_and_4 port map (A => sA, B => sB, C => sC, D => sD, S => sAND);
    u2: pl_or_4 port map (A => sA, B => sB, C => sC, D => sD, S => sOR);

    u_tb: process
    begin
        sA <= '0'; sB <= '0'; sC <= '0'; sD <= '0'; wait for 10 ns;
        sA <= '1'; sB <= '0'; sC <= '0'; sD <= '0'; wait for 10 ns;
        sA <= '0'; sB <= '1'; sC <= '0'; sD <= '0'; wait for 10 ns;
        sA <= '0'; sB <= '0'; sC <= '1'; sD <= '0'; wait for 10 ns;
        sA <= '0'; sB <= '0'; sC <= '0'; sD <= '1'; wait for 10 ns;
        sA <= '1'; sB <= '1'; sC <= '0'; sD <= '0'; wait for 10 ns;
        sA <= '1'; sB <= '0'; sC <= '1'; sD <= '0'; wait for 10 ns;
        sA <= '1'; sB <= '0'; sC <= '0'; sD <= '1'; wait for 10 ns;
        sA <= '0'; sB <= '1'; sC <= '1'; sD <= '0'; wait for 10 ns;
        sA <= '0'; sB <= '1'; sC <= '0'; sD <= '1'; wait for 10 ns;
        sA <= '0'; sB <= '0'; sC <= '1'; sD <= '1'; wait for 10 ns;
        sA <= '1'; sB <= '1'; sC <= '1'; sD <= '1'; wait for 10 ns;
        wait;
    end process;
end tb;