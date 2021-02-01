with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Test1 is
   
   Star: Character := '*';
   I,J: Integer := 0;
   
begin
   
   --vanlig loop
   Loop
     Put(Star);
     I:= I + 1;
     exit when I = 10;
   end loop;
   
   New_Line;
   --while
   
   while J < 10 loop
      J:= J + 1;
      Put(Star);
   end loop;
   
   New_Line;
   --for
   
   for A in 1..10 loop
      Put(Star);
   end loop;
   
   
      
end Test1;


----------


with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Lab0 is
   
   F, D, K:Float;
   Tot:Float := 0.0;
   S:String(1..30);
   N,Z:Integer;
   C:Character;
   
begin
   
   Put("Mata in N: ");
   Get(N);
   Put("Mata in "); 
   Put(N,0); 
   Put(" flyttal: ");
   
   
   for I in 1..N loop
      Get (F);
      Tot := Tot + F;
   end loop;
   
   Put("Summan är: ");
   Put(Tot, 2,2,0);
   New_Line;
   
   loop
      Put("Mata in ett flyttal som ska subtraheras från summan: ");
      Get(D);
      Tot:= Tot - D;
      Put(Tot, Exp=>0, Aft=>2);
      New_Line;
      exit when Tot < 0.0;
      end loop;
     
      
   
end Lab0;