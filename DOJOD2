with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Underp is      
   
   --------------- funktion som beräknas N! = 1*2..*N
   
   function Faculty (N,K: in Integer) return Integer is      
      
      NF,KF: Integer := 1;
      Tot: Integer;
      
   begin
      
      if N = 0 then
	 null;   --detta skippar loopen nedan	 
      else
	 for Counter in 0..(N-1) loop
	    NF:= NF*(N-Counter); 	    
	 end loop;	 	 	         	 		 
      end if; 
      
      if K = 0 then
	 null;
      else 
       for Counter in 0..(K-1) loop
	    KF:= KF*(K-Counter); 	       
       end loop; 
      end if;	 
      
      Tot:= NF/(KF*(N-K));
      
      return Tot;
      
   end Faculty;
   
   ---------------------------
   
   N,K,Tot: Integer;
   
begin
   
   Put("Mata in N och K: ");
   Get(N);
   Get(K);       
   
   Tot:= Faculty(N,K);

   Put("N över K är: ");
   
   Put(Tot,1);
   
end Underp;
