entity pl_nand_2 is
    port (A : in bit;
          B : in bit;
          S : out bit);
end pl_nand_2;

architecture logica of pl_nand_2 is
begin
    S <= not (A and B);
end logica;