With Ada.Text_IO, Ada.Integer_Text_IO; 
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab05 is
   
   function Sum (N: in Integer) return Integer is
   begin      
      if N = 0 then
	 Put(" = ");
	 return N;
      elsif N > 1 then
	 Put(Integer'Image(N) & " +");	 
	 return N + Sum(N-1); 
      else 
	 Put(N,2);
	 return N + Sum(N-1);		
      end if;            
   end Sum;
   
   N: Integer;
begin
   
   Put("Mata in en siffra: ");
   Get(N);
   
   Put("Talföljdens summa:");
   Put(Sum(N),0);
   
end Lab05;
