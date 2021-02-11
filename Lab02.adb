with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab02 is
   -----------------------
   procedure In_Text_Size (Text: out String; Size, Text_Length: out Integer) is
   begin
      
      Put("Mata in en text med maximalt 10 tecken: ");
      Get_Line(Text, Text_Length);
      
      Put("Mata in storlek: ");
      Get(Size);
      
   end In_Text_Size;
   -----------------------
   
   function Control (Size: in Integer) return Boolean is
   begin
      
      if Size > 5 then
	 return True;	 
      else
	 return False;
      end if;
      
   end Control;             
   -----------------------
   
   procedure Loop_Trappa (Text: in String; Size, Text_Length: in Integer) is
   begin      
      
      for Counter in 1..Size loop
	 
	 Put(Text(1..Text_Length));
	 
	 for I in 2..Counter loop    --går i detta fall tydligen att ha reverse range, kredd Mirremirai
	    for J in 1..Text_Length loop
	       Put(' ');
	    end loop;
	    Put(Text(1..Text_Length));
	    
	 end loop;	 	 
	 
	 New_Line;
	 
      end loop;
      
   end Loop_Trappa;
   -----------------------   
   
   Text: String(1..10);
   Size, Text_Length: Integer;
begin
   
   In_Text_Size(Text,Size,Text_Length);

   New_Line;
   
   Put("En ");
   if Control(Size) = True then
      Put("stor ");
   else
      Put("liten ");
   end if;
   Put_Line("trappa: ");
   
   Loop_Trappa(Text, Size, Text_Length);         
   
end Lab02;



-----------------------------

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab02 is
   
  procedure Inmat (S: out String; N, SL: out Integer) is
   begin
      
      loop
	 Put("Mata in en sträng S: ");
	 Get_Line(S,SL);	 
	 
	 if SL < 2 or SL > 10 then
	    Put("Måste vara mellan 2 och 10 tecken! ");
	 else
	    exit;
	 end if;
      end loop;

      Put("Mata in heltal N: ");
      Get(N);      
      
   end Inmat;
   
   procedure Utskrift_Rad (N: in Integer; S: in String; SL: in Integer) is 
 
   begin
      
      Put_Line("N     S");
      
      for Counter in 1..N loop
	 Put(Counter,5);
	 Put(" ");
	 
	 for J in 1..Counter loop
	    Put(S(1..SL));
	 end loop;
	 
	 New_Line;
	 
      end loop;            
      
   end Utskrift_Rad;      
   
   
   S: String(1..10);  
   N: Integer;
   SL: Integer; 
begin
   
   Inmat(S,N,SL);
   New_Line;
   Utskrift_Rad(N,S,SL);
   
end Lab02;



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
