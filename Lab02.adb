with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure Lab02 is
   
   Value,ND,N,D: Integer;
   Max: Integer := 0;
   
   --------------------
   
   procedure Inmat (Value: in out Integer; Min_Value:Integer:= 1; Max_Value:Integer:=1000) is
      
   begin
      
      loop

	 Get(Value);

	 if Value > Max_Value or Value < Min_Value then
	    Put_Line("M�ste vara mellan 1 och 1000 ");
	    Put("Mata in: ");
	 end if;                    
	 
	 exit when Value >= Min_Value and Value <= Max_Value;
	 
      end loop;      
      
   end Inmat;

   ----------------
   
   procedure InmatND (Value: in out Integer; ND: out Integer) is
      
   begin      
      
      ND:= Value;
      
   end InmatND;
   ------------------------------   
   procedure Delbar (N: in out Integer) is
   begin
      
      for I in 1..N loop   --här blev det fel också, ska 
	 if N mod I = 0 then  --AddeGstring kredd t dig tack, och N mod I är det ju som ska delas jämnt, och I räknar ju upp dem.
	       Put(I,3);
	 end if;
	 end loop;
   end Delbar;
   ------------------------------   
      
begin
   
   Put_Line("Inl�sning av N");
   Put("Mata in: ");
   Inmat(Value);
   InmatND(Value,ND);
   N:= ND;
   
   Put_Line("Inl�sning av D");
   Put("Mata in: ");
   Inmat(Value);
   InmatND(Value,ND);
   D:= ND;   
   New_Line;

   Put(N,0);
   Put(" �r j�mnt delbar med ");
   Delbar(N);
   
   
end Lab02;
