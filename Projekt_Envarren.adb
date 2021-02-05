with Ada.Integer_Text_IO, Ada.Text_IO; 
use Ada.Integer_Text_IO, Ada.Text_IO; 

procedure Envarre is
   
   ----------------------

   procedure Vecka (V: out Integer) is
      
   begin
      
      loop
	 Get(V);
	 
	 if V <= 3 or V >= 52 then
	    Put_Line("Måste vara mellan 3 och 52.");
	    Put("Skriv in vilken vecka det är: ");
	 end if;
	 
	 exit when V >= 3 and V <= 52; 
	 
      end loop;      
      
   end Vecka;
   
   ----------------------
   
   function Antal_F (V: in Integer) return integer is  --räkna antalet fö/vecka     
      
      FV: Integer := 0;  
      
   begin          
	 for Counter in -1..V-4 loop   -- när V = 3 är FV = 2, då vecka 3 är start ist för 1.     
	    FV:= V + Counter; 	 
	 end loop;      
      
      return FV;  --resultatet returneras och ersätter själva anropet
                  -- får endast också anropas i ett uttryck.       
   end Antal_F;

   ---------------------- 
   V: Integer;
begin
   
   Put("Skriv in vilken vecka det är: ");
   Vecka(V);
   
   New_Line;
   
   Put("Du skrev in veckan: ");
   Put(V,1);

   New_Line;
   
   Put("På den veckan bör du vara på föreläsning: ");
   Put(Antal_F(V),1);   
   
   
end Envarre;
