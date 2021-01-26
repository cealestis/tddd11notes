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
