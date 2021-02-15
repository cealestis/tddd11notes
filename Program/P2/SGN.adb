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
   function SGN (Int_1, Int_2: in Integer) return Integer is
      Int_SGN: Integer := 0;
   begin      
            --SGN är det tal som ej ger någon rest, dvs mod = 0
      if Int_1 < Int_2 then      
	 Int_SGN := Int_1 mod Int_2; 
      else
	 Int_SGN := Int_2 mod Int_1;
      end if;	 
      return Int_SGN;             
   end SGN;
   ------------------------
   
   Int_1, Int_2: Integer;   
begin   
   Get_Int(Int_1,Int_2);
   
   Put("Den största gemensamma nämnaren är ");
   Put(SGN(Int_1,Int_2),1);
   Put('.');
   
end P2;
