--MODULO

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   I:Integer;
      
begin
   
   --modulo
   
   Put("Mata in ett tal: ");
   Get(I);
   
   for J in 1..I loop
      Put(J);
      if J mod 3 = 0 then  --om J delat med 3 har rest 0 !!!!!!!!
	 Put("MODULO");     
      end if;
   end loop;   
   
end Test1;

---------


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

with Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Text_IO;

procedure Addhundred is

   X, Y: Integer; 
   
begin
   
   --mata in två tal 
   
   Put("Skriv in två tal: ");
   Get(X);
   Get(Y);
   
   while X < 100 loop
      X:= X + Y;
       Put(X);
   end loop;
   
   if X > 105 then
      Put("Hurra!");
   else
      Put("Inte hurra :(");
   end if;

   Put(X); 

end Addhundred;

       
--

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure O1 is
   
   F : Float ;  -- första talet
   A : Float ;  -- andra talet
   D : Float ;  -- dubbla första
   
   Fa : Integer; -- första avrundat
   Aa : Integer; -- andra avrundat
   I : Integer ; 
   
begin 
   
   Put ("Mata in första talet: ");
   Get (F);
   D := F * 2.0;
   
   loop 
      Put ("Mata in andra talet: ");
      Get (A);
      
      exit when A >= D;
   end loop;
   
   -- skriver ut delen
   New_Line;
   
   Put ("Helatalen mellan ");
   Fa:= Integer (F);
   Put (Fa,0);
   Put (" och ");
   Aa:= Integer (A);
   Put (Aa ,0);
   Put (" är:");
   New_Line;
   
   I:= Aa - Fa;
   
   for Counter in Fa..Aa loop  --1..i 
      Put(Counter, 0);
      Put(' ');
   end loop;
        
   
end O1 ;

-----

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Test1 is
   
   X,Y,N: Integer;
   Summa: Integer:=0;
   
begin
   
   --Summan av ett inmatat tal som ökar med ett annat tal tills < 100
   
   Put("Skriv in två tal: ");
   Get(X);
   Get(Y);
   
   Summa:= Summa + Y;
   N:= 0;
   
   
   while N < 100 loop
      for I in 1..Summa loop
	 N:= X+Summa*I;
	 Put(N);
      end loop;
      exit when N > 100;
   end loop;
   
      -- ex om X=4, Y=10 så  4 + 10, (4 + 10) + 10, (4 + 10 + 10) + 10...
      
   end Test1;
   
   ----

