  
-- Get_Line r�knar hur m�nga characters den tar in tills entertecknet, deklarerat en str�ng som �r tio tecken noll, g�r s� att den l�ser fram till ett entertecken och 
-- r�knar hur m�nga tecken den har l�st in fr�n bufferten. Om man skriver d� Hem och sen enter s� h�mtar get line str�ngen och r�knar varje tecken i str�ngen och plussar p� ett p� interger. 

-- Integervariabel Int, f�r att skriva om Integer I := Integer(F); avrundar upp�t

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Hand0 is
   I,H: Integer;
   F: Float;
   S: String(1 .. 10);
   C: Character;
   
begin
   Put("Skriv in ett flyttal och en sträng: "); 
   Get(F);
   Get(C);
   Get_Line(S,I);
   
   Put("Du skrev in flyttalet """);
   Put(F, Fore=> 0, Aft=>3, Exp=>0);
   Put('"');
   Put(" och strängen """);
   Put(S(1..I));
   Put('"');
   
   Skip_Line; New_Line;
   
   Put("Skriv in en sträng med max fem tecken: ");
   Get_Line(S,I);
   
   Put("Du skrev in: ");
   Put(S(1..5));
   
   Skip_Line; New_Line;
   
   Put("Skriv in ett heltal/flyttal: ");
   Get(H);
   H:=Integer(F);
   
   Put("Heltalet är: ");
   Put(H, Width=>0); 
   
   Skip_Line; New_Line
   
    Put("Skriv in fem heltal: "); 
   Get(I); 
   Get(C);
   
   Put("Du skrev in talen: ");  
   Put(I,2);  -- 2an betyder Width
   Put(C);
   
   Get(I); 
   Put(I,2);
   
   Put(C); 
   Get(I);
   
   Put(I,2); 
   Put(C); 
   
   Get(I); 
   Put(I,2);
   Put(C);
   
   Get(I); 
   Put(I,2);
   
   New_Line;
   Skip_Line;
   
   Put("Skriv in ett heltal och ett flyttal: ");
   Get(I);
   Get(F);
   
   Put("Du skrev in heltalet: ");
   Put(I,2);
   
   Put(" och flyttalet: ");
   Put(F, Fore=>0, Aft=>3, Exp=>0);
   
   Skip_Line; New_Line; -- detta funkar dock inte med att man kan klicka enter osv vid inmatning som står vid körexempel. Hur?
  
   
   --Dugga O0 Lördag! Man ska skriva in ex. 123ABC 0.6 Saab
   
   with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Hand0 is
   I,X: Integer;
   F: Float;
   S: String(1..10);
   St: String(1..3);
   C: Character;
   
begin
   
   Put("Mata in bilinfo: ");
   Get(I);
   Get(St);
   
   Get(F);
   
   Get(C); --mellanslaget innan bilm�rket
   
   Get_Line(S,X);
   
   Put(S(1..X));
   Put(I,2);
   
   Put("Bilenförbrukning: ");
   Put(F,1,1,0);
   
end Hand0;

   -- lika eller större med: X är =>, lika eller mindre: X är =<.
   
   --konvertera en datatyp till en annan, ex. addera en float och en integer för att få ett heltal:
   Summa, F: Float;
   I:Integer;
    
   Put("Skriv in ett heltal och ett flyttal du vill addera: ");
   Get(I);
   Get(F);
   
   Summa := Float(I) + (F);
   Put(Summa,0,1,0);
   
   -- Integer(F); --kommer avrunda ett flyttal
   
   -- markera och klicka på tab så radar det upp sig snyggt
  
   
   
   

