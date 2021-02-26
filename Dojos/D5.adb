With Ada.Text_IO, Ada.Integer_Text_IO; 

procedure Lab05 is            

   function Stairs (Layer: in Integer) return Integer is --räknar stenar
   begin                   

      if Layer = 0 then
	 return 0;
      end if;

      return Layer*(2*Layer-1) + Stairs(Layer-1); 

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
