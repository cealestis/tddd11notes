with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure P2 is
   ------------------------
   procedure Get_Min_Max_Value (Value_Int: out Integer; Value_F: out Float; Min, Max: out Integer) is
   begin
      
      Put("Mata in X: ");
      Get(Min);
      Skip_Line;
      
      Put("Mata in Y: "); 
      Get(Max);
      Skip_Line;
            
      loop	 
	 Put("Mata in Z: ");
	 Get(Value_Int);      --get I ex 3.4 och då är 0.4 i bufferten 
	                  --så då kan man getta F som då blir 0.4 
	 Get(Value_F);
	 
	 exit when Value_Int > Min and Value_Int < Max;
	 Put("Fel! Måste vara som minst ");
	 Put(Min,0);
	 Put(" och som mest ");
	 Put(Max,0);
	 Put('.');
	 New_Line;
      end loop;                  
      
   end Get_Min_Max_Value;
   ------------------------
   procedure Index (Min,Max: in Integer) is
   begin
      
      Put(Min,4);
      
      for Spaces in Min..(Max-2) loop -- (-2) för den räknar med första range
	 for Mellanslag in 1..10 loop 
	    Put(' ');  --10 mellanslag vet ej hur man ska göra
	    end loop;
      end loop;
      
      Put(Max,10); --för att fixa sista index
      New_Line;
   end Index;
   
   -----------------------
   procedure En_Tallinje (Min,Max: in Integer) is
   begin
      
      Put("   |");      
      for Counter in Min..Max-1 loop	 	 	 
	 Put(".........");
	 Put("|");  --10 tecken
      end loop;
      
   end En_Tallinje;      
   
   ------------------------
   procedure Pil (Min,Max: in Integer; Value_Int: in Integer; Value_F: in Float) is
      Value_Mellan: Integer;
   begin
      
      New_Line;
      
      for Mellanslag in Min..Max-2 loop
	 for Tio in 1..9 loop
	    Put(' ');
	 end loop;
      end loop;
      
      --decimalmellanslagen
      Value_Mellan:= Integer(Value_F*10.0); --bufferten ex. 0.3 * 10 = 3.0 sen till integer
      
      Put("    ");
      for Decimellan in Min..Value_Mellan loop
	 Put(' ');
      end loop;
      
      Put('^');
      
   end Pil;        
   ------------------------
        
   Value_F: Float;
   Value_Int, Min, Max: Integer;
begin   
   
   Get_Min_Max_Value(Value_Int, Value_F, Min, Max);
   Index(Min, Max);
   En_Tallinje(Min, Max); 
   Pil(Min, Max, Value_Int, Value_F);
   
end P2;
