with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Solution is
  A, B, Temp : Integer := 1;
  Acc : Integer := 0;
begin
  while B < 4_000_000 loop
    Temp := B;
    B := A + B;
    A := Temp;
    if B mod 2 = 0 then
      Acc := Acc + B;
    end if;
  end loop;
  Put(Acc);
end Solution;
