with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Test1 is
   
   N: Integer;
   Summa: Integer:= 0;
   
begin
   
   --Ger summan av en talföljd baserat på N
   
   Put("Skriv in ett tal: ");
   Get(N);
   
   Put("Talföljden är: ");
   for I in 1..N loop      
      Put(I,3);
      Summa:= Summa + I;
   end loop;
   
   New_Line;
   Put("Summan är: ");
   Put(Summa,2);
   
    --Ger summan av en talföljd som fördubblas baserat på N
   
   Put("Skriv in ett tal: ");
   Get(N);
   
   Summa:=0;
   
   Put("Talföljden är: ");
   
   for I in 1..N loop      
      Talf:= I*2;
      Put(Talf,4);      
      Summa:= Summa + Talf;
   end loop;
   
   New_Line;
   Put("Summan är: ");
   Put(Summa,2);
   
   
end Test1;

      -- ett inmatat tal ska adderas till ett annat inmatat tal tills de når 100

       Put("Vilka tal bildar serien 84 89 94 99 105?");
       New_Line;
       Put("Mata in tv� heltal: ");
       Get(X);
       Get(Y);
       Skip_Line;

       while Z > 100 loop
          Z:= (X + Y*I);
       end loop;

       I:=4;  -- fattar ej detta

       Put(X+I*Y);
       New_Line;

       if
            Z > 105 then
          Put("Hurra!");
       else
          Put("Inte hurra :(");
       end if;


