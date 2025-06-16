entity pl_nor_2 is
    port (A : in bit;
          B : in bit;
          S : out bit);
end pl_nor_2;

architecture logica of pl_nor_2 is
begin
    S <= not (A or B);
end logica;