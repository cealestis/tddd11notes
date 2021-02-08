with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Underp is      
   
   ------------------ Inmat
   procedure Inmat (A,B,C: out Integer) is
   begin
      loop      
	 Put("Mata in pucklar på de tre ”dromedarerna”: ");
	 Get(A); Get(B); Get(C);
	 
	 if A <= 0 or B <= 0 or C <= 0 then
	    Put_Line("Måste vara positivt.");
	 end if;      
	 
	 exit when A >= 1 and B >= 1 and C >= 1;
      end loop;
      
   end Inmat;
   
   ------------------
   procedure En_Drom (in out Integral);
   
   
   ------------------
   A,B,C: Integer;
begin

   Inmat(A,B,C);
   
   
   
end Underp;
