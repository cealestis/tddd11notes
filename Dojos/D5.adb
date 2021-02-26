With Ada.Text_IO, Ada.Integer_Text_IO; 
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab05 is            
procedure Lab05 is

   function Stairs (Layer: in Integer) return Integer is --räknar stenar
   begin                   

      if Layer = 0 then
	 return 0;
      end if;

      return Layer*(2*Layer-1) + Stairs(Layer-1); 

   end Stairs;   

   User_Input : Integer;
   function Sum (N: in Integer) return Integer is
   begin      
      if N = 0 then
	 Put(" = ");
	 return N;
      elsif N > 1 then
	 Put(N,2); Put(" +");	 
	 return N + Sum(N-1); 
      else 
	 Put(N,2);
	 return N + Sum(N-1);		
      end if;            
   end Sum;

   N: Integer;
begin

   Put("Vänligen mata in höjd på trappan: ");
   Get(User_Input);
   Put("Mata in en siffra: ");
   Get(N);

   Put("En trappa med höjd ");
   Put(User_Input, Width => 0);
   Put(" kräver ");
   Put(Stairs(User_Input), Width => 0);
   Put(" stenar att bygga.");
   Put("Talföljdens summa:");
   Put(Sum(N),0);

end Lab05;
