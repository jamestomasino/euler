with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

procedure Solution is
  Acc : Integer := 0;
begin
  for I in 0 .. 1000 loop
    if I mod 3 = 0 or I mod 5 = 0
    then
      Acc := Acc + I;
    end if;
  end loop;
  Put(Acc);
end Solution;
