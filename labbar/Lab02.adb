--finaste koden jag gjort, i love myself

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab02 is
   -----------------------   
   procedure Get_Size_Text(Size: out Integer; Text: out String) is
   begin      
      
      Put("Mata in storleken: ");
      Get(Size);
      Skip_Line; --för att ta bort entertecken i buffert
      
      Put("Mata in en sträng (max 10 tecken): ");
      Get_Line(Text, Size);  
      
   end Get_Size_Text;
   -----------------------
   procedure Put_N_C (N: in Integer; C: in Character) is
   begin
      for Counter in 1..N loop
	 Put(C);
      end loop; 
   end Put_N_C;
   ------------------------
   procedure Print_Row (N: in Integer; C: in Character; Text: in String) is
   begin
      
      Put_N_C(N, C);
      Put(Text(1..N)); --kommer skriva ut hela string
      
   end Print_Row;
   ----------------------
   procedure Print_Figure (Size: in Integer; C:in Character; Text: in String) is
      
      Minskning: Integer;
      
   begin
      for Counter in 1..Size loop
	 Minskning:= Size - Counter + 1;  --+ 1 för att komplettera för första raden
	 Print_Row(Minskning, C, Text);
	 New_Line;
      end loop;            
   end Print_Figure;   
   ------------------------
   Size: Integer;
   Text: String(1..10);
begin
   
   Get_Size_Text(Size,Text);
   New_Line;
   Print_Figure(Size, '-',Text);
   
end Lab02;

-----------------------------

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

----------------

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Underp is      
   
   --------------- funktion som beräknas N! = 1*2..*N
   
   function Faculty (Y: in Natural) return Natural is      
      
      YF: Natural := 1;
      
   begin
      
      if Y = 0 then
	 null;   --detta skippar loopen nedan	 
      else
	 for Counter in 1..Y loop
	    YF:= YF*Counter;
	 end loop;	 	 	         	 		 
      end if;  
      
      return YF;
      
   end Faculty;
   
   
   
   ---------------------------
 --  function N_Over_K (N,K; in Natural) return Natural is
  -- begin
      
      
      
  -- end N_Over_K;
   
  
   
   N,K,Tot: Natural;
   
begin
   
   Put("Mata in N och K: ");
   Get(N);
   --Get(K);       
   
   Tot:= Faculty(N);
   

   Put("N över K är: ");
   
   Put(Tot,1);
   
end Underp;


---------------------------------------------

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure Underp is
   
   Size: Integer;
   
   ---------------
   
   procedure Inmat (Size: out Integer) is
      
   begin
      
      loop
	 
	 Put("Mata in storleken: ");
	 Get(Size);
	 
	 if Size < 0 then
	    Put("Storleken måste vara positiv. ");
	 end if;   
	 
	 exit when Size >= 1;
	 
      end loop;
      
   end Inmat;

   ----------------
   
   procedure Bron (Size: in Integer) is
   begin
      
      for I in 1..Size loop
	 Put("|  |");
	 New_Line;
      end loop;      
      
   end Bron;
   ------------------------------   
   
   
begin
   
   Inmat(Size);
   
   Bron(Size/2);
   Put("===="); 
   New_Line;
   Bron(Size);
   Put("====");
   New_Line;
   Bron(Size/2);
   
   
end Underp;





---------------------------Inmat rektangel
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure Underp is
   
   H,B: Integer;
   
   -------------------------------------
   
   procedure Inmat (H,B: in out Integer) is
      
   begin
      
      loop
	 
	 Put("Mata in H: ");
	 Get(H);
	 
	 if H < 0 then 
	    Put("H måste vara ett positivt heltal! ");
	    New_Line;
	 end if;      
	 
	 exit when H >= 1;
	 
      end loop;


      loop
	 
	 Put("Mata in B: ");
	 Get(B);
	 
	 if B < 0 then 
	    Put("B måste vara ett positivt heltal! ");
	    New_Line;
	 end if;  
	 
	 exit when B >= 1;
	 
      end loop;
      
   end Inmat;
   
   ---------------------------------------
   
   procedure Rektangel (H,B: in Integer) is
   begin
      
      
      for I in 1..H loop
	 New_Line;
	 for J in 1..B loop
	    Put('#');
	 end loop;	 
      end loop;      
     
   end Rektangel;
   
   -----------------------------------   
         
begin
      
   Inmat(H,B);
   Rektangel(H,B);
   
end Underp;






--Skriv ett underprogram som ökar på en flyttalsvariabel med valbart
--antal procent av originalvärdet. Underprogrammet ska ta två
--parametrar: Flyttalsvariabeln vars värde ska ändras och
--procentsatsen (ett heltal). Underprogrammet ska ÄNDRA på flyttalets
--värde, inte skriva ut eller returnera detta.

--Man ska kunna kalla på underprogrammet enligt följande huvudprogram:

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure Underp is

            
   Value, Percent_F: Float;
   Percent_Increase: Integer;
   
   --Skriv underprogrammet Increase_Value_By_Percent här
   
   procedure Increase_Value_By_Percent (Value: in out Float; Percent_Increase: in Integer) is
      
   begin      
                                  --ex man skriver in 10.0 + 50% så ska 10*1.50
      Percent_F:= Float(Percent_Increase);  --gör om ex. Percent_Increase till float hos Percent_F
      Percent_F:= (Percent_F/100.0) + 1.0;  --multipliceras till Value
      
      Value:= Value*Percent_F;
      
   end Increase_Value_By_Percent;
   
   ---------------------------------------
   
begin
   Get(Value);  --får in en float
   Get(Percent_Increase); --får in en integer

   Put("Originalvärdet är: ");
   Put(Value, Fore => 0, Aft => 3, Exp => 0);
   New_Line;
   
   Increase_Value_By_Percent(Value, Percent_Increase);   --här får man in en float o integer 
							 -- ska addera procentsatsen (Integer) till flyttalet Value 
							 -- så man får ut en ny float som fortf är Value

   Put("Värdet efter procentuell ökning (");
   Put(Percent_Increase, Width => 0);
   Put("%) är: ");
   Put(Value, Fore => 0, Aft => 3, Exp => 0);
   New_Line;
   
   Increase_Value_By_Percent(Value, 25);

   Put("Värdet efter ytterligare procentuell ökning (25%) är: ");
   Put(Value, Fore => 0, Aft => 3, Exp => 0);
   New_Line;
   
end Underp;





---------Från grader till pi------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics; use Ada.Numerics; --f�r pi

procedure Underp is  ---ta in grader ut i radianer
   
      
   Grader: Integer;
   Radian, GraderF: Float;
   
   ----------------------------
   procedure Convert (Grader: in Integer; Radian: out Float) is    
      
   begin      
      GraderF:= Float(Grader);      
      Radian:= (GraderF*Pi/180.0);      
      
   end Convert;
   -----------------------------
   
begin
   
   Put("Mata in ett gradantal: ");   
   Get(Grader);
   
   Convert(Grader,Radian);
   
   New_Line;
   
   Put(Grader);
   Put(" grader �r ");   
   Put(Radian,0,1,0);
   Put(" radianer. ");
      
   
end Underp;





---------------En rad för utmatning av varje rad triangeln

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

--felhantering, ifall negativt tal kmr in ska det st� fel positivt
--dvs ledtext
--out betyder att man ger ut info till huvudprogrammet, behövs inte 'in out'. 

procedure Underp is
   
   ------------------------
   procedure Inmat (Size: out Integer) is       
      
   begin
      
      loop
	 Put("Mata in storleken p� trappan: ");
	 Get(Size);
	 
	 if Size < 0 then
	    Put("Storleken m�ste vara positiv. ");
	 end if;
	 
	 exit when Size >= 1;
      end loop;      
      
   end Inmat;      
   
   ----------------------
   procedure Utmat (Size,I: in Integer) is
      
   begin
      
     -- for I in 1..Size loop

	 for J in 1..I loop
	    Put('T');
	 end loop;  
	 
	 New_Line;
	 
    --  end loop;
      
   end Utmat;
   
   
   ----------------------
   
   Size: Integer;
   
begin   
   
   Inmat(Size);
   --debug Put(Size);
   
   for I in 1..Size loop
      Utmat(Size,I);
   end loop;
   
   
end Underp;



------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Dagens is
   
   A, I:Integer;
   S: String (1..10);
  ------------------------------------------------------------------------------------------------------------- 
   procedure Mata (S : out String; A : out Integer) is
      
   begin
      -- Put ("Mata in sträng S: ");
      
      --Get_Line (S,I);
      
      --  if I < 2 then  	 	    
      loop	    
	 Put ("Mata in sträng S: ");
	 Get_Line (S,I);	    
	 exit when I >= 2;
	 Put("Måste vara mellan 2 och 10 tecken!");
      end loop;	
      --   end if;
     
      Put ("Mata in heltal N: ");
      Get (A);
	 
   end Mata;
   --------------------------------------------------------------------------------------------------------
   procedure Rader (S1 : in String ; A: in Integer) is
      
   begin
      New_Line;
      Put_Line ("N     S");
      
      for D in reverse 1..A loop
	 Put (D,5);
	 Put (' ');
	 for H in 1..D loop
	    Put (S1(1..I));
	 end loop;
	 New_Line;
      end loop;
   end Rader;
   ------------------------------------------------------------------------------------------------------
      
begin 
   
   Mata (S, A);
   Rader (S, A);
   
end Dagens;


-----------enkel in och utmaning

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Underp is

   ----------------------------
   procedure Inmat (I: out Integer) is
      
   begin
      
      loop
	 
	 Put("Mata in: ");
	 Get(I);
	 
	 if I <= 0 then
	    Put("M�ste vara positivt! ");
	    New_Line;
	 end if;
	 
	 exit when I > 0;	 
      end loop;
      
   end Inmat;
   -----------------------------
   
   procedure Utmat (I: in Integer) is
      
   begin
      
      Put("Du matade in talet: ");
      Put(I,1);
      
   end Utmat;
   ----------------------
   
   I:Integer;
   
begin
   
   Inmat(I);
   Utmat(I);
         
end Underp;

---------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;



procedure Underp is
   --underprogram, skicka in info fr�n att bli kallap
   --parantespar parametrar (A och B), deklaration sen om de ska va in ellr o
   --hur ska info skickas, in och ut
   
   procedure Swap (A,B: in out Integer) is 
      C:Integer;
   begin
      
      C:=A;  --C fick As v�rde, sparar i C till att anv�ndas till B
      A:=B;  --A fick Bs v�rde
      B:=C;  --B vill ha gamla v�rde som vi spara i C s� B = A
      
   end Swap;   
   
   A,B:Integer;
   
begin   
   
   --huvudprogram
   Put("Mata in A: ");
   Get(A);
   
   Put("Mata in B: ");
   Get(B);
   
   New_Line;
  
   
   Put("A:s v�rde innan bytet: ");
   Put(A);
   
   New_Line;
   
   Put("B:s v�rde innan bytet: ");
   Put(B);
   
   New_Line;
   --byte
   
   Swap(A,B); --f�rv�ntar sig tv� m�ste skicka in tv�
   
   --f�r�ndras av Swap
   
   Put("A:s v�rde efter bytet: ");
   Put(A);
   
   New_Line;
   
   Put("B:s v�rde efter bytet: ");
   Put(B);
   
end Underp;

----
