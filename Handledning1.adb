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

-----

