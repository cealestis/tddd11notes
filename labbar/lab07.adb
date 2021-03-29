

---------------------
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics, Ada.Numerics.Elementary_Functions;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics, Ada.Numerics.Elementary_Functions;

procedure Lab07 is
   
   procedure Inmat (Slut: out Integer) is 
   begin
      
      Put("Mata in slutvärde: ");
      Get(Slut);
      
      Skip_Line;
      
   end Inmat;
   
   function Grad_To_Rad (Grad: in Float) return Float is
   begin
      
      return (Pi*Grad)/180.0;
      
   end Grad_To_Rad; 
   
   function Calc_Sinus (Rad: in Float) return Integer is
      Sinus_Value: Float;
   begin
      
      Sinus_Value := Sin(Rad)*10.0; --ampl. är 10	      
      
      return 10 + Integer(Sinus_Value);
      
   end Calc_Sinus; 
   
   procedure Sinus_Kurwa (File: in out File_Type; Slut: in Integer) is
      Start: Float := 0.0;           
      Dots: Integer;
      Slut_F: Float;
      Steg: Float := 10.0; 
      Start_Rad: Float;  
   begin      
      
      Slut_F:= Float(Slut);
      
      loop
	 
	 Start_Rad:= Grad_To_Rad(Start);
	 
	 Dots:= Calc_Sinus(Start_Rad);
	 
	 for C in 1..Dots loop
	    Put(File, '.');
	 end loop;
	 
	 Put(File, '0');
	 
	 New_Line(File);
	 
	 Start:= Start + Steg;      
	 
	 exit when Start > Slut_F;	  
	 
      end loop;   


   end Sinus_Kurwa;
   
   Slut: Integer;
   File: File_Type;
   Filename: constant String := "SINUS.TXT";
begin   
   
   Inmat(Slut);         
   
   Create(File, Out_File, Filename);
   
   Sinus_Kurwa(File, Slut);
   
   Close(File);
   
end Lab07;


---------------------
with Ada.Text_IO, Ada.Integer_Text_IO; 
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab07 is
   
   File: File_Type;
   Filename: constant String := "PARENTESER.TXT";
   Ch: Character;
   Rad_Counter, Ch_Line, Vart, Vart_Line: Integer;
   Ch_Counter: Integer:= 0;
   
begin   
   
   Open(File, In_File, Filename);
   
   Rad_Counter:= 0;
   Ch_Line:= 0;

   while not End_Of_File(File) loop
      Rad_Counter:= Rad_Counter + 1;
      Ch_Line:= 0;

      while not End_Of_Line(File) loop
	 Get(File, Ch);
	 Ch_Line:= Ch_Line + 1;
	 if Ch in '(' then
	    Ch_Counter := Ch_Counter + 1;
	    if Ch_Counter = 1 then
	       Vart:= Rad_Counter;
	       Vart_Line:= Ch_Line;
	       exit;
	    end if;
	 elsif Ch in ')' then
	    Ch_Counter := Ch_Counter - 1;
	    if Ch_Counter = -1 then
	       Vart:= Rad_Counter;
	       Vart_Line:= Ch_Line;
	       exit;
	    end if;
	 end if;	 	 
      end loop;
      Skip_Line(File);
   end loop; 
   
   if Ch_Counter = 0 then     
      Put_Line("Det stämmer med antalet parenteser.");
   elsif Ch_Counter > 0 or Ch_Counter < 0 then
      Put_Line("Det stämmer INTE med antalet parenteser.");
      Put_Line("Fel på rad " & Integer'Image(Vart) & ", position " & Integer'Image(Vart_Line));
   end if;
   
   Close(File);   
      
exception
   when Name_Error =>
      Put_Line("FEL: Det stämmer med antalet parenteser.");  
      raise Name_Error;    
      
end Lab07;



---------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure Lab07 is
   
   File        : File_Type;
   Filename    : String(1 .. 20);
   Len         : Integer;
   Ch          : Character;
   N_Integer   : Integer := 0;
   N_Character : Integer := 0;
   
begin
   Put("Mata in ett filnamn: ");
   Get_Line(Filename, Len);
   
   Open(File, In_File, Filename(1 .. Len));
   
   while not End_Of_File(File) loop
      while not End_Of_Line(File) loop
	 Get(File, Ch);
	 if Ch in '0' .. '9' then
	    N_Integer := N_Integer + 1;
	 elsif Ch in 'A' .. 'Z' then
	    N_Character := N_Character + 1;
	 end if;
      end loop;
      Skip_Line(File);
   end loop;
   
   Close(File);
   
   Put_Line("Det finns" & Integer'Image(N_Character) & " bokstÃ¤ver och" &
	      N_Integer'Image(Integer) & " Siffror.");
   
end Lab07;
