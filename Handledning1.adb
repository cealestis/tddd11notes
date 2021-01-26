with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Hand0 is
   
   B: Boolean;
   S: String(1..6);
   
begin
   B:=False; -- y har värdet noll om den ej innehåller c
   
      Put("Skriv in ett ord med 6 bokstäver: ");
      Get(S);
      
      for I in 1..2 loop
	 
          if S(I) = 'c' then  -- S(I) = ?
            B:=True;
          end if;
      end loop;
      
      if B=True then
	 Put_Line("'c' finns!");
      else
	 Put_Line("'c' finns inte.");
      end if;
	
end Hand0;

--Loopish 

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Loop0 is
  
   Text: String(1..N); --N tar upp till oändlighet
   Size: Integer;
   X,N: Integer;
   
begin
   
   Put("Mata in en sträng med max 5 tecken: ");
   Get_Line(Text, X);
   
   if X = 3 then
      null;
   else      
      loop 
	 Put("Mata in en sträng med max 5 tecken: ");
	 Get_Line(Text, X);     	 
	 exit when X = 3;	 
      end loop;      
   end if;	       
   
end Loop0;

--Bäst version av en loop

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Loop0 is
  
   Text: String(1..20); --N tar upp till oändlighet
   Size: Integer;
   X: Integer;
   
begin
   
   Put("Mata in en sträng med max 5 tecken: ");
   Get_Line(Text, X);
   
   loop
      if X = 3 then
	 exit;
      else 
	 Put("Fel! Mata in: ");	 
	 Get_Line(Text, X);	  
      end if; 
   end loop;
   
end Loop0;


