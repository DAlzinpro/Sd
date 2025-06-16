entity pl_xnor_2 is
    port (A : in bit;
          B : in bit;
          S : out bit);
end pl_xnor_2;

architecture logica of pl_xnor_2 is
begin
    S <= not (A xor B);
end logica;