entity pl_and_3 is
    port (A : in bit;
          B : in bit;
          C : in bit;
          S : out bit);
end pl_and_3;

architecture logica of pl_and_3 is
begin
    S <= A and B and C;
end logica;