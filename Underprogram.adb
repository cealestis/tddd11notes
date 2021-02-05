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