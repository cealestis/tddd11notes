--Kod 1:

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Hand0 is

X: Integer;
S: String(1..10);

begin

Put("Skriv in ett ord: ");
Get_Line(S,X);

for I in 1..X loop

 if S(I) = 'c' then
   Put_Line("'c' finns!");

 else
    Put("'c' finns inte");
     exit;
 end if;

end loop;
end Hand0;


--Kod 2:

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Hand0 is

Y: Integer;
S: String(1..6);

begin
Y:= 0; -- y har värdet noll om den ej innehåller c

Put("Skriv in ett ord med 6 små bokstäver: ");
Get(S);

for I in 1..6 loop

if S(I) = 'c' then
Y:=1;
Put_Line("'c' finns!");

end if;
end loop;

if Y=0 then
Put_Line("'c' finns inte");
end if;

end Hand0;


