entity pl_and_2 is
    port (A : in bit;
          B : in bit;
          S : out bit);
end pl_and_2;

architecture logica of pl_and_2 is
begin
    S <= A and B;
end logica;