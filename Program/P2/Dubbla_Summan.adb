with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure P2 is  
   
   ------------------------------
   function Dubbla (Int, I: in Integer) return Integer is
      Dub: Integer;
   begin
      
      Dub:= Int * (2**I);
      return Dub;
      
   end Dubbla;   
   
   ------------------------------
   procedure Addition (Int, I: in Integer; Sum : in out Integer) is 
      Dub : Integer;
   begin
      
      Put("Läser in tal ");
      
      Put(Int,0);
      Put('.');
      
      Dub:= Dubbla(Int, I);
      Sum := Sum + Dub;
      
      Put(" Summan är nu ");
      Put(Sum,0);
      Put_Line(".");	   
      
   end Addition;          
   
   ------------------------------
   procedure Inmat (Int: out Integer) is 
      Sum, Dub: Integer:= 0;
      I : Natural := 0;
   begin
      
      Put("Mata in heltal. Avsluta med noll: ");
      
      loop
	 
	 Get(Int);	 	 
	 
	 
	  if Sum mod 10 = 0 and Sum /= 0 then
	    Put_Line("Alla efterföljande tal dubbleras.");
	    I := I + 1;
	  end if;
	  
	 exit when Int = 0;
	 
	 --adderare för varje tal
	 Addition(Int, I, Sum); 	 
	 
      end loop;            
      
      New_Line;
      Put("Summan blev ");
      Put(Sum,0);
      Put('.');
      
   end Inmat;
   ------------------------------
   Int: Integer;
begin
   
   Inmat(Int);
   
end P2;
