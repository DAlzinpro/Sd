entity pl_and_4 is
    port (A : in bit;
          B : in bit;
          C : in bit;
          D : in bit;
          S : out bit);
end pl_and_4;

architecture logica of pl_and_4 is
begin
    S <= A and B and C and D;
end logica;