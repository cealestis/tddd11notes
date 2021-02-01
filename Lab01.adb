-- olika loopish som ska visa talföljden till inmatat heltal

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Heltal: Integer;
   Counter: Integer := 0;
   
begin
   
   Put("Mata in ett tal: ");
   Get(Heltal);
   
   --while
   
   while Counter < Heltal loop      
      Counter := Counter + 1;
      Put(Counter,2);
   end loop;
   
   -- loop
   
    loop
      Counter := Counter + 1;
      Put(Counter,3);
      exit when Counter = Heltal;
   end loop;
   
   --for (bästa)
   
   Put("Mata in ett tal: ");
   Get(Heltal);
   
   for I in 1..Heltal loop
      Put(I,2);
   end loop;
      
   
end Test1;




--- for loop och if-sats

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Heltal: Integer;
   
begin
   
   Put("Skriv in 10 heltal: ");
   
   for I in 1..10 loop
      Get(Heltal);
      
      if Heltal > 5 then
	 Put(Heltal,1);   
	 Put(" �r stort!");
	 New_Line;
      end if;
   end loop;
   
   
end Test1;




---if sats i if sats i ifsats

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Tal1, Tal2, Tal3: Integer;
   
begin
   
   Put("Mata in h�gst tre heltal: ");
   Get(Tal1);
   
   if Tal1 <= 0 then
      Put("Bl�!");       	 
   elsif Tal1 > 0 then
      Get(Tal2);
      
      if Tal2 < 0 then
	 Put("Okej!");
      else
	 Get(Tal3);
	 
	 if Tal3 < 0 then
	    Put("Schysst!");
	 else
	    Put("Underbart!");
	 end if;
	 
      end if;
      
   end if;
   
end Test1;



--loopish

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Tal1,Tal2: Float;
   
begin
   
   loop
      Put("Mata in det f�rsta talet: ");
      Get(Tal1);
      
      if Tal1 <= 0.0 then      --0.0 �r 0 som float
	Put_Line("FEL! M�ste vara st�rre �n noll. ");
      end if;            
      
      exit when Tal1 > 0.0;
   end loop;
   
   loop
      Put("Mata in det andra talet: ");
      Get(Tal2);
      
      if Tal2 <= Tal1 then
	Put_Line("FEL! M�ste vara st�rre �n f�rsta talet. ");
      end if;
      
      exit when Tal2 > Tal1;    
   end loop;
   
   Put("Du skrev in talen: ");
   Put(Tal1,1,2,0);
   Put(" och ");
   Put(Tal2,1,2,0);
   
end Test1;


-------




with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Test1 is
   
   A, B: Integer;
   Tecken, Mellanslag: Character;
   
begin
   
   --skriva ut rektangel med heltal A som bas och heltal B som h�jd
   
   Put("Skriv in tv� heltal och ett tecken: ");
   Get(A);
   --Get(Mellanslag); h�mtar ej in mellanslag och enter f�r integer
   Get(B);
   Get(Mellanslag); --mellan character och mellanslag beh�vs
   Get(Tecken);
   
   --Debug//Put(A); Put(B); Put(Tecken);
   
   for X in 1..B loop  -- yttre: antal rader, beh�vs New_Line innan ny rad
      for Y in 1..A loop -- inre: det som ska skrivas ut p� varje rad
	 Put(Tecken);
      end loop;
      New_Line;  --r�tt ordning 
   end loop;
     
end Test1;
-------



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
