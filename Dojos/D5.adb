--------bättre version av moi
With Ada.Text_IO, Ada.Integer_Text_IO; 
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab05 is  
   
   function Trappa (N: in Natural) return Natural is
   begin            
      
      if N = 1 then      --N=1 -> 1, N=2 -> N1 + 2*3, N=3 -> N1 + N2 + 3*5..
	 return 2*N-1; --alltså 1, en våning
      else
	 return N*(2*N-1) + Trappa(N-1); --N=2 så 2(2*2-1) = 2*3 + N1
      end if;      
      
   end Trappa;
   N:Natural;
begin
   
   Put("Mata in husets höjd (antal stenar i höjdled): ");
   Get(N);
   
   Put_Line("Det behövs" & Natural'Image(Trappa(N)) & " stenar för att bygga trappan.");
   
end Lab05;

-------
With Ada.Text_IO, Ada.Integer_Text_IO; 
use Ada.Text_IO, Ada.Integer_Text_IO;

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
