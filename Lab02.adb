

-----------------------------
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Underp is      
   
-----------------------------
   procedure Inmat (A,K,N: out Integer) is
   begin
      
      Put("Mata in A: ");
      Get(A);
      
      loop
	 Put("Mata in K: ");
	 Get(K);	 
	 if K = 1 then
	    Put_Line("Får ej vara 1.");
	 end if;	 
	 exit when K /= 1;
      end loop;            
      
      loop
	 Put("Mata in N: ");
	 Get(N);
	 if N <= 0 then
	    Put_Line("Måste vara positiv.");
	 end if;	 
	 exit when N >= 1;
      end loop;      
      
   end Inmat;
   
-----------------------------
   function Func_Exp (Bas, Grad: in Integer) return Integer is
      Exp: Integer;
   begin
      
      Exp:= Bas**Grad;
      
      return Exp;
      
   end Func_Exp;   
   
-----------------------------
   procedure Geo_Sum (A,N,K: in Integer; Kvot: out Integer) is 
      Taljare, Namnare: Integer;
   begin
      
      Taljare:= A*(Func_Exp(K,N)-1);
      Namnare:= K-1;
      
      Kvot:= Taljare/Namnare;
           
   end Geo_Sum;
   
-----------------------------   
   
   A,K,N: Integer;
   Kvot: Integer := 0;
   
begin
   
   Inmat(A,K,N);
   Geo_Sum(A,N,K,Kvot);
   New_Line;
   
   Put("Den geometriska summan är ");
   Put(Kvot,1);
   Put('.');
   
end Underp;

-----------------------------
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
