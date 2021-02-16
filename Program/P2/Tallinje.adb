with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure P2 is
   ------------------------
   procedure Get_Min_Max_Value (Value: out Float; Min, Max: out Integer) is
      Int_Value: Integer;
   begin
      
      Put("Mata in X: ");
      Get(Min);
      Skip_Line;
      
      Put("Mata in Y: "); 
      Get(Max);
      Skip_Line;
            
      loop	 
	 Put("Mata in Z: ");
	 Get(Value);
	 
	 Int_Value:= Integer(Value);
	 
	 exit when Int_Value > Min and Int_Value < Max;
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
      
      for Spaces in Min..(Max - Min - 1) loop	 
	 Put("          "); --10 mellanslag
      end loop;

      Put(Max,10);
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
   procedure Pil (Min: in Integer; Value: in Float) is
      Floor_Value: Float;
      Int_Value: Integer;
   begin
      New_Line;
      
      Floor_Value:= Float'Floor(Value);
      Int_Value:= Integer(Value);
      for Counter in Min..Int_Value loop
	 Put("         ");
      end loop;      
      Put('^');
   end Pil;        
   ------------------------
        
   Value: Float;
   Min, Max: Integer;
begin   
   
   Get_Min_Max_Value(Value, Min, Max);
   Index(Min,Max);
   En_Tallinje(Min,Max); 
   Pil(Min,Value);
   
end P2;
