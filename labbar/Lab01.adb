----

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Hand0 is
   
   B: Boolean;
   S: String(1..6);
   
begin
   B:=False; -- y har värdet noll om den ej innehåller c
   
      Put("Skriv in ett ord med 6 bokstäver: ");
      Get(S);
      
      for I in 1..2 loop
	 
          if S(I) = 'c' then  -- S(I) = ?
            B:=True;
          end if;
      end loop;
      
      if B=True then
	 Put_Line("'c' finns!");
      else
	 Put_Line("'c' finns inte.");
      end if;
	
end Hand0;

--Loopish 

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Loop0 is
  
   Text: String(1..N); --N tar upp till oändlighet
   Size: Integer;
   X,N: Integer;
   
begin
   
   Put("Mata in en sträng med max 5 tecken: ");
   Get_Line(Text, X);
   
   if X = 3 then
      null;
   else      
      loop 
	 Put("Mata in en sträng med max 5 tecken: ");
	 Get_Line(Text, X);     	 
	 exit when X = 3;	 
      end loop;      
   end if;	       
   
end Loop0;

--Bäst version av en loop

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Loop0 is
   
   Text: String(1..20); 
   Size,X,Y: Integer;
   
begin
   
   Put("Mata in en sträng med max 5 tecken: ");
   Get_Line(Text, X);
   
   loop
      if X = 3 then
	 exit;
      else 
	 Put("Fel! Mata in: ");	 
	 Get_Line(Text, X);
      end if; 
   end loop;
   
   Put("Mata in ett heltal: ");
   Get(Size);
   
   Y:=0;
   
   while Y < Size loop
      Put_Line(Text(1..3));
      Y:=Y+1;
      
      exit when Y=Size;
      
      for I in 1..Y loop
	 Put(' ');
      end loop;
      
      Y:= Y + 1;
      Put(Y,0);
      
      New_Line;
      
    
   end loop; 
   
end Loop0;

-- lab01

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure Loop0 is
   
   X: Integer;
   F: Float;
   C: Character;
   Summa: Float;
   
begin
   
   Put("Mata in N: ");
   Get(X);
   
   Put("Mata in "); Put(X,1); Put(" flyttal: ");
   
   for I in 1..N loop      
      Get(F);
      Get(C);
   end loop;
   
   
   
   --Put(F,0,1,0);
   
  -- Summa:= F;
   --Put(Summa,1,1,0);
   
   
end Loop0;


-- Ruta!

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Ruta is
   Area: Integer;
   Sida: Integer;
   
begin
   Get(Area); --här skriver de in ex. 1 vilket då hamnar på båda variablerna (area och sida)
   Get(Sida); 
   
   --Vad är lika? Jo, hörnen! Då skapar vi Put('x'); som är samma för alla rutor
   -- För karaktärer som + osv behövs inte "" utan '' funkar för ett tecken
   
   
   Put('+');
               -- alltid 2 gånger det man matar in, kan man göra något med detta? Jo, kalla det sida
                  -- for I in 1..Nånting loop, variabeln I skapas då man påbörjar loopen, kan heta vad som
		  -- kommer alltid ha samma värde som de gånger man kör loopen.  Så om det står 1..Sida så körs loopen  Sida gånger. 
		  --I kommer ha värde 1 då den körs första gången, andra gången kommer I ha värdet 2, osv...
   
   
   for I in 1..Sida loop   --så om Sida blev 1 från Get(Sida) loopas det 1..1 dvs 1 gång, utskrift blir endast --
      Put("--");           --Tips: vid inmatning av ex. 445 Hej så kan man ta 445 som F och mellanslaget som C och sen strängen som Hej!
   end loop;
   
   Put('+');    -- nu är hela första raden klar!
   
   -- Tips om man inte vet hur loopen ska se ut:
   -- 1. Vad ska hända inuti loopen? Skriv ut det!
   -- mellanrummen mellan sidorna kan skapas genom en loop
   
   New_Line;
   
   Put('|');
   for I in 1..Sida loop
      Put("  ");
   end loop
     Put('|');                 --två mellanslag mellan citattecknen, två loopar för 
   
   New_Line;
   -- sedan sker samma där nere som händer där uppe, kopiera +-loopen
   
   Put('+');
   for I in 
     
     --Rutan är beroende av sida som också måste växa
      
	    
end Ruta;

----- kul loop där man översätter en sträng för att hitta ett tecken mha for loop

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Hand0 is
   
   S: String(1..6);
   X: Integer;
   
begin
   
   Put("Skriv in en sträng med max 6 ord: ");
   
   Get_Line(S,X);
     
      for I in 1..X loop
	 if S(I)='c' then
	    Put(I);
	    Put(S(1));
	    
	 end if;
      end loop;
      
      
     -- Get(S (1..));
     -- Put (S(2..3));
      
end Hand0;

----


--konvertera strings till integers för att hitta ett hundratal som är större än 725

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Underp is
   
   S:String(1..3);
   I: Integer;
   
begin
   
   Put("Skriv in siffror: ");   
   
   for J in 1..6 loop. --loopar så man kan skriva in mac 3 * 6 tecken i strängen dvs 18 tecken
      Get(S);      
      I:= Integer'Value(S);  --string till integer
      exit when I > 725;	
   end loop;      
   
   Put("Talet som hittades var ");
   Put(I,1);

   
end Underp;



--mata in flyttal och skriva ut heltalsdel och decimaldel

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;



procedure Underp is
   
   F,FH,FD:Float;
   I,I2:Integer;
   
begin   
   
   --Float'Rounding(3.65) = 4 Avrundar
   --FLoat'Floor(3.65) = 3 Avrundar ner�?t
   --Float'Ceil(3.65)=Avrundar upp�?t   
   
   Put("Skriv in ett flyttal: ");
   Get(F);
   
   Put("Hetalsdel: ");
   FH:=Float'Floor(F);
   I:=Integer(FH);
   Put(I,1);
   
   New_Line;
   
   Put("Decimaldel: ");
   FD:= (F - FH)*100.0;
   I2:=Integer(FD);
   Put(I2,1);             
      
   end Underp;


--funkade ej, om man skriver in 24.0 ska den skriva ut 24, och 13.5 utskrift 13.5

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Name: String(1..10);
   NL,I: Integer;
   Age: Float;
   
begin
   
   --konvertering
   
   Put("Mata in en �lder och ett namn: ");
   Get(Age);
   Get_Line(Name,NL);
   
   if NL = 10 then       --f�r att ta bort entertecken i bufferten
      Skip_Line;
   end if;
   
   Put("Du matade in namnet: ");
   Put(Name(1..NL));
   Put(" och hen �r ");   
   
   -- I:= Integer(Age); och skapa en dekl. f�r omvanling men beh�vs ej h�r   
   
   --kop till annan vardiabel och avrunda ner�t,sedan minus varandra
   
   
   I:= Integer(Age);
   Put(Age);
   
   if Age mod 2.0 = 0.0 then
      Put(Age,0,0,0);
   else
      Put(Age,0,1,0);
   end if;
   
   Put(" �r gammal. "); 
   
end Test1;




---multiplikationstabell och formatering

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   A,B: Integer;
   MultA, MultB: Integer := 0;
   
begin
   
   --multiplikationstabell
   
   loop
   
      Put("Mata in vilka multiplikationstabeller du vill visa: ");
      Get(A); Get(B);
      
      if A = B then
	 Put_Line("Du kan inte mata in samma tal tv� g�nger!");
      else exit;
      end if;
   end loop;
   
   for I in 1..10 loop
      MultA:= A*I;
      MultB:= B*I;
      Put(MultA,2); --width hur stor plats man tar upp, ex 10 tar upp 2
      
      
      Put(MultB,3);
      
      New_Line;
   end loop;




---Lab01

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Lab01 is
   
   Size, N: Integer;
   
begin
   
   Put("Mata in storleken: ");
   Get(Size);
   
   Put("Mata in N: ");
   Get(N);
   
   for I in reverse 1..Size loop        --yttre
      New_Line; 
      
      for J in 1..I loop   --inre
	 
	 if (J mod N) = 0 then
	    Put('!');
	 else 
	    Put('#');
	 end if;
	 
      end loop;      
   end loop;
   
   
end Lab01;



----Lab00

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Lab0 is
   
   Albumnamn:String(1..21);
   Speltid: Float;
   Utgiv: Integer;
   I: Integer;
   
begin
   
   Put("Mata in albumnamn: ");
   Get_Line(Albumnamn,I);
   
   Put("Mata in längd och utgivningsår: ");
   Get(Speltid);
   Get(Utgiv);
   
   New_Line;
   
   Put("Album: ");
   Put_Line(Albumnamn(1..I));
   
   Put("Speltid: ");
   Put(Speltid,0,2,0);
   
   New_Line;
   
   Put("År: ");
   Put(Utgiv,1);
   
end Lab0;

------


with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Counter: Integer := 0;
   C: Character;
   Rest: Integer := 0;
   
begin
   
   --inmatning tills man skrivit in 10 icke-e, r�knar antal e
  
   Put("Skriv in 10 icke-'e'-tecken: ");
   
   while Rest < 10 loop
      Get(C); --f�r in inmatning      	
      
      if C = 'e' then
	 Counter:= Counter + 1;
      else
	 Rest:= Rest + 1;
      end if;
      
   end loop;   
   
   Put("Du skrev ");
   Put(Counter,1);
   Put("'e'.");
   
end Test1;



-- simbassäng med inre o yttre loop

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Int: Integer;
   Half: Integer;
   
begin
   
   
   Put("Mata in ett tal: ");
   Get(Int);
   
   Half:= Int/2;
   
   for Y in 1..Half loop --yttre
      
      for I in 1..Int loop --inre
	 Put('-');
      end loop;
      
      New_Line;
      
   end loop;
   



-- olika loopish som ska visa talföljden till inmatat heltal

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Heltal: Integer;
   Counter: Integer := 0;
   
begin
   
   Put("Mata in ett tal: ");
   Get(Heltal);
   
   --while
   
   while Counter < Heltal loop      
      Counter := Counter + 1;
      Put(Counter,2);
   end loop;
   
   -- loop
   
    loop
      Counter := Counter + 1;
      Put(Counter,3);
      exit when Counter = Heltal;
   end loop;
   
   --for (bästa)
   
   Put("Mata in ett tal: ");
   Get(Heltal);
   
   for I in 1..Heltal loop
      Put(I,2);
   end loop;
      
   
end Test1;




--- for loop och if-sats

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Heltal: Integer;
   
begin
   
   Put("Skriv in 10 heltal: ");
   
   for I in 1..10 loop
      Get(Heltal);
      
      if Heltal > 5 then
	 Put(Heltal,1);   
	 Put(" �r stort!");
	 New_Line;
      end if;
   end loop;
   
   
end Test1;




---if sats i if sats i ifsats

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Tal1, Tal2, Tal3: Integer;
   
begin
   
   Put("Mata in h�gst tre heltal: ");
   Get(Tal1);
   
   if Tal1 <= 0 then
      Put("Bl�!");       	 
   elsif Tal1 > 0 then
      Get(Tal2);
      
      if Tal2 < 0 then
	 Put("Okej!");
      else
	 Get(Tal3);
	 
	 if Tal3 < 0 then
	    Put("Schysst!");
	 else
	    Put("Underbart!");
	 end if;
	 
      end if;
      
   end if;
   
end Test1;



--loopish

With Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Test1 is
   
   Tal1,Tal2: Float;
   
begin
   
   loop
      Put("Mata in det f�rsta talet: ");
      Get(Tal1);
      
      if Tal1 <= 0.0 then      --0.0 �r 0 som float
	Put_Line("FEL! M�ste vara st�rre �n noll. ");
      end if;            
      
      exit when Tal1 > 0.0;
   end loop;
   
   loop
      Put("Mata in det andra talet: ");
      Get(Tal2);
      
      if Tal2 <= Tal1 then
	Put_Line("FEL! M�ste vara st�rre �n f�rsta talet. ");
      end if;
      
      exit when Tal2 > Tal1;    
   end loop;
   
   Put("Du skrev in talen: ");
   Put(Tal1,1,2,0);
   Put(" och ");
   Put(Tal2,1,2,0);
   
end Test1;


-------




with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Test1 is
   
   A, B: Integer;
   Tecken, Mellanslag: Character;
   
begin
   
   --skriva ut rektangel med heltal A som bas och heltal B som h�jd
   
   Put("Skriv in tv� heltal och ett tecken: ");
   Get(A);
   --Get(Mellanslag); h�mtar ej in mellanslag och enter f�r integer
   Get(B);
   Get(Mellanslag); --mellan character och mellanslag beh�vs
   Get(Tecken);
   
   --Debug//Put(A); Put(B); Put(Tecken);
   
   for X in 1..B loop  -- yttre: antal rader, beh�vs New_Line innan ny rad
      for Y in 1..A loop -- inre: det som ska skrivas ut p� varje rad
	 Put(Tecken);
      end loop;
      New_Line;  --r�tt ordning 
   end loop;
     
end Test1;
-------



with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Test1 is
   
   Star: Character := '*';
   I,J: Integer := 0;
   
begin
   
   --vanlig loop
   Loop
     Put(Star);
     I:= I + 1;
     exit when I = 10;
   end loop;
   
   New_Line;
   --while
   
   while J < 10 loop
      J:= J + 1;
      Put(Star);
   end loop;
   
   New_Line;
   --for
   
   for A in 1..10 loop
      Put(Star);
   end loop;
   
   
      
end Test1;


----------


with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Lab0 is
   
   F, D, K:Float;
   Tot:Float := 0.0;
   S:String(1..30);
   N,Z:Integer;
   C:Character;
   
begin
   
   Put("Mata in N: ");
   Get(N);
   Put("Mata in "); 
   Put(N,0); 
   Put(" flyttal: ");
   
   
   for I in 1..N loop
      Get (F);
      Tot := Tot + F;
   end loop;
   
   Put("Summan är: ");
   Put(Tot, 2,2,0);
   New_Line;
   
   loop
      Put("Mata in ett flyttal som ska subtraheras från summan: ");
      Get(D);
      Tot:= Tot - D;
      Put(Tot, Exp=>0, Aft=>2);
      New_Line;
      exit when Tot < 0.0;
      end loop;
     
      
   
end Lab0;
