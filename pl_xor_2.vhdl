entity pl_xor_2 is
    port (A : in bit;
          B : in bit;
          S : out bit);
end pl_xor_2;

architecture logica of pl_xor_2 is
begin
    S <= A xor B;
end logica;