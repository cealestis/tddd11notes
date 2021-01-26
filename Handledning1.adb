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
