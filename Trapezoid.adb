with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Trapezoid is
   
   --Här saknas de underprogram som du skall skriva.
   
   procedure Inmat (B_Small, B_Large: out Float) is
      
   begin
      
      Put("Mata in B_Small: ");
      Get(B_Small);
      
      loop	    	    	    
	 Put("Mata in B_Large: ");
	 Get(B_Large);
	 
	 if B_Large <= B_Small then	    
	    Put("Måste vara större än ");
	    Put(B_Small,0,2,0);
	    New_Line;
	 end if;
	 exit when B_Large > B_Small;
      end loop;
      
      
   end Inmat;
   ---------------------------------------------
   function Calculate_Trapezoid_Area (B_Large, B_Small, H: in Float) 
				     return Float is 
      Sum: Float;
      Area: Float;
      
   begin
      
      Sum:= B_Large + B_Small;
      Area:= (Sum/2.0)*H;
      return Area;
      
   end Calculate_Trapezoid_Area;   
      
      
   --Det är inte tillåtet att ändra i detta underprogram på något sätt.
   function Calculate_And_Print_Trapezoid_Area(B_Large, B_Small, H: in Float;    --fel ordning här därför blir det fel
					       Max_Multiplier     : in Integer) return Float is
      Total_Area: Float;
      Current_Area: Float;
   begin
      Total_Area := 0.0;
      for I in 1 .. Max_Multiplier loop
	 Current_Area := Calculate_Trapezoid_Area(B_Large * Float(I), B_Small, H);   
	 Put("Area av parallelltrapets med multiplikator ");
	 Put(I, Width => 0);
	 Put(": ");
	 Put(Current_Area, Fore => 0, Aft => 2, Exp => 0);
	 Total_Area := Total_Area + Current_Area;
	 New_Line;
      end loop;
      return Total_Area;
   end Calculate_And_Print_Trapezoid_Area;
   --------------------------
   
   B_Small, B_Large, H, Total_A: Float;
   Max_Multiplier: Integer;
   
begin
   
   --Här saknas det som skall finnas i huvudprogrammet.   
   
   Inmat(B_Small, B_Large);  --dessa ska in i proceduren
   
   Put("Mata in H: ");
   Get(H);  
   
   Put("Mata in Max_Multiplier: ");
   Get(Max_Multiplier);
   
   New_Line;   
   
   Total_A:= Calculate_And_Print_Trapezoid_Area(B_Small, B_Large, H, Max_Multiplier);
   
   New_Line;
   
   Put("Total area är ");
   Put(Total_A, 0,2,0);
   
end Trapezoid;
