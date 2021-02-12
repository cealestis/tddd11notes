---------------------
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Trapezoid is
   
   --Här saknas de underprogram som du skall skriva.
   
   procedure Inmat (B_Small, B_Large: out Float) is
      
   begin
      
      Put("Mata in B_Small: ");
      Get(B_Small);
      
      loop	    	    	    
	 Put("Mata in B_Large: ");
	 Get(B_Large);
	 
	 if B_Large <= B_Small then	    
	    Put("Måste vara större än ");
	    Put(B_Small,0,2,0);
	    New_Line;
	 end if;
	 exit when B_Large > B_Small;
      end loop;
      
      
   end Inmat;
   ---------------------------------------------
   function Calculate_Trapezoid_Area (B_Large, B_Small, H: in Float) 
				     return Float is 
      Sum: Float;
      Area: Float;
      
   begin
      
      Sum:= B_Large + B_Small;
      Area:= (Sum/2.0)*H;
      return Area;
      
   end Calculate_Trapezoid_Area;   
      
      
   --Det är inte tillåtet att ändra i detta underprogram på något sätt.
   function Calculate_And_Print_Trapezoid_Area(B_Large, B_Small, H: in Float;    --fel ordning här därför blir det fel
					       Max_Multiplier     : in Integer) return Float is
      Total_Area: Float;
      Current_Area: Float;
   begin
      Total_Area := 0.0;
      for I in 1 .. Max_Multiplier loop
	 Current_Area := Calculate_Trapezoid_Area(B_Large * Float(I), B_Small, H);   
	 Put("Area av parallelltrapets med multiplikator ");
	 Put(I, Width => 0);
	 Put(": ");
	 Put(Current_Area, Fore => 0, Aft => 2, Exp => 0);
	 Total_Area := Total_Area + Current_Area;
	 New_Line;
      end loop;
      return Total_Area;
   end Calculate_And_Print_Trapezoid_Area;
   --------------------------
   
   B_Small, B_Large, H, Total_A: Float;
   Max_Multiplier: Integer;
   
begin
   
   --Här saknas det som skall finnas i huvudprogrammet.   
   
   Inmat(B_Small, B_Large);  --dessa ska in i proceduren
   
   Put("Mata in H: ");
   Get(H);  
   
   Put("Mata in Max_Multiplier: ");
   Get(Max_Multiplier);
   
   New_Line;   
   
   Total_A:= Calculate_And_Print_Trapezoid_Area(B_Small, B_Large, H, Max_Multiplier);
   
   New_Line;
   
   Put("Total area är ");
   Put(Total_A, 0,2,0);
   
end Trapezoid;


---------------------
with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Underp is      
   
   ------------------ 
   procedure Inmat (P1,P2,P3: out Integer) is
   begin
      Put("Mata in pucklar på de tre ""dromedarerna"": "); 
      Get(P1);
      Get(P2);
      Get(P3);

   end Inmat;
   
   ------------------
   procedure En_Dromedar (P: in integer) is
   begin
      
      for C in 1..P loop --skriver ut en dromedar på varje 
	 Put(" _ "); 
      end loop;
      
      New_Line;
      
      for C in 1..P loop
	 Put("/ \"); 
      end loop;
      
      New_Line;
   end En_Dromedar;   
   
   ------------------
   procedure Fler_Dromedarer (P1,P2,P3: in integer) is 
      Sum: Integer := 0;
   begin
      
      En_Dromedar(P1);       
      En_Dromedar(P2);
      En_Dromedar(P3);
      
      New_Line;
      Sum:= P1 + P2 + P3;
      Put_Line("Alla ""dromedarers"" pucklar på led: ");
      En_Dromedar(Sum);
      
   end Fler_Dromedarer;   
   
   ------------------

   P1,P2,P3: Integer;
   
Begin

   Inmat(P1,P2,P3);
   Fler_Dromedarer(P1,P2,P3);         
   
end Underp;

----------------

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
-----------------------
