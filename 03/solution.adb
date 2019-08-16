-- Not quite there yet

with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;


procedure Solution is
  Num : constant Float := 600_851_475_143.0;
  Work : Long_Integer := Long_Integer(Float'Ceiling(Sqrt(Num)));
  X : Long_Integer := 1;
  Test : Boolean;
begin
  while X < Work and X < Long_Integer(Float'Ceiling(Sqrt(Num))) loop
    Test := true;
    X := X + 1;
    for Y in 2 .. Long_Integer(Float'Ceiling(Sqrt(Float(X)))) loop
      if X mod Y = 0 then
        Test := false;
      end if;
    end loop;
    if Test and Long_Integer(Num) mod X = 0 then
      Put_Line(X'Image);
      Work := Long_Integer(Num / Float(X));
      Put_Line("new search: " & Work'Image);
    end if;
  end loop;
end Solution;
