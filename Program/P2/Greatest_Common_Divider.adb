with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure P2 is
   ------------------------
   procedure Get_Int (Int_1, Int_2: out Integer) is 
   begin
      loop
	 Put("Mata in två heltal: ");
	 Get(Int_1);
	 Get(Int_2);
	 Skip_Line;
	 exit when Int_1 /= Int_2;
	 Put_Line("FEL: Det får inte vara samma tal.");
      end loop;     
   end Get_Int;      
   ------------------------
   procedure Check_Bigger (Int_1, Int_2: in Integer; Int_Big, Int_Small: out Integer) is      
   begin 
      if Int_2 > Int_1 then
	Int_Big:= Int_2;
	Int_Small:= Int_1;
      else
	 Int_Big:= Int_1;
	 Int_Small:= Int_2;
      end if;      
   end Check_Bigger;
   -----------------------   
   function SGN (Int_Big, Int_Small: in Integer) return Integer is
      Int_SGN: Integer := 1;
   begin
      for N in 2..Int_Big loop
	 if Int_Big mod N = 0 and Int_Small mod N = 0 then
	    Int_SGN:= N;
	    return Int_SGN; --funkar att ha här också, första returnen
	 end if;
      end loop;
      return Int_SGN;
   end SGN;
   ------------------------   
   Int_1, Int_2, Int_Big, Int_Small: Integer;   
begin   
   Get_Int(Int_1,Int_2);
   Check_Bigger(Int_1,Int_2, Int_Big,Int_Small);
   
   Put("Den största gemensamma nämnaren är ");
   Put(SGN(Int_Big,Int_Small),1);
   Put('.');
   
end P2;
