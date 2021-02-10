with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure Lab02 is
   
   procedure Inmat (Tal : out Integer; Limit : in Integer) is
   begin  --felha
     
      loop 
	 Put("Mata in: ");
	 Get (Tal);
	 exit when Tal >= Limit;
	 Put ("Måste vara minst ");
	 Put (Limit,0);
	 New_Line;
      end loop;
      
   end Inmat;
----------------------------------------------------------------	       
   procedure Inmat2 (Start, Number : out Integer) is
     -- Limit : Integer := 0;
   begin
      Put_Line ("Inmatning av startvärde");
      Inmat (Start, 0); --lim = 0
      
     -- Limit := 1;
      Put_Line ("Inmatning av antal rader");
      Inmat (Number, 1); --lim=1
   end Inmat2;
   
   -------------------------------------------------------------
   
   procedure Utskrift (Start , Number : in Integer) is
      ----------------------------
      
      procedure Put_C_N_Times (C: in Character; Tal: in Integer) is  --vad behöver jag veta här
      begin	 
	 
	 for K in 1..Tal loop
	    Put(C);
	 end loop;
	 
	 
      end Put_C_N_Times;
      
      
      ----------------------------
      
      Tal : Integer; 
   begin 
      Tal := Start ;
      for C in 1..Number loop
	 Put_C_N_Times('-',Tal);   --lätt att ändra och stämmer med krav 3!!
	 --for K in 1..Tal loop
	   -- Put('-');
	-- end loop;
	 Put (Tal,0);
	 Tal := Tal + 1;
	 New_Line;
      end loop;
   end Utskrift;   
   
   I , J : Integer;   
   
begin
   
   Inmat2 (I,J);
   New_Line; 
   Utskrift (I,J);
  
   
   
end Lab02;
