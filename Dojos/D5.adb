with Ada.Text_IO, Ada.Integer_Text_IO; 
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab05 is    
   
   function One_Layer (Layer: in Integer) return Integer is
   begin
      
      return Layer*(2*Layer-1);
      
   end One_Layer;
   
   
   function Stairs (Item: in Integer) return Integer is --räknar stenar
   begin
           
      --Första Lagret:= 1 = 1(2*1-1);
     -- Andra:= 2 * 3 = 2(2*2 - 1);      
      --kalla på funktionen igen för att plussa på varje lager innan
            
      
      if Item = 0 then
	 return 0;
      end if;
      
      	 return One_Layer(Item) + Stairs(Item-1); 

      --tänk på att man har den innan eller efter if-satsen
      --Ex. höjd item = 2 så 2 * One_Layer(2) + Stairs(Item-1)
      
   end Stairs;   
        
   User_Input : Integer;
   
begin
   
   Put("Vänligen mata in höjd på trappan: ");
   Get(User_Input);
   
   Put("En trappa med höjd ");
   Put(User_Input, Width => 0);
   Put(" kräver ");
   Put(Stairs(User_Input), Width => 0);
   Put(" stenar att bygga.");
   
end Lab05;