entity pl_or_4 is
    port (A : in bit;
          B : in bit;
          C : in bit;
          D : in bit;
          S : out bit);
end pl_or_4;

architecture logica of pl_or_4 is
begin
    S <= A or B or C or D;
end logica;