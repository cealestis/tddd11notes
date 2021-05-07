with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics, Ada.Numerics.Elementary_Functions, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics, Ada.Numerics.Elementary_Functions, Ada.Float_Text_IO;

procedure Tentis is
   
   procedure Inmat (Start, Steg, Slut : out Integer) is
   begin 
      loop
	 Put ("Mata in startvärde, steglängd och slutvärde: ");
	 Get (Start);
	 Get (Steg);
	 Get (Slut);
	 
	 if Slut < Start then
	    Put_Line ("FEL! Slutvärdet mindre än startvärdet.");
	 elsif (Slut - Start) mod Steg /= 0 then
	    Put_Line ("FEL! Steglängden går inte jämnt upp med gränserna!");
	 else
	    exit;
	 end if;
	 
      end loop;
      
   end Inmat;
   ---------------------------------
   
   function Omvandla (I : in Integer) return Float is
   begin
      return Float(I) * (2.0 * Pi / 360.0);
   end Omvandla;
   ---------------------------------
   
   function Rakna_Sinus (Rad : in Float) return Integer is
      Sin_Value : Float;
   begin
     
      Sin_Value := Sin(Rad) * 10.0;
      
      return 10 + Integer (Sin_Value);
     
   end Rakna_Sinus;
   ---------------------------------
   
   function Antal_Tecken (File : in File_Type) return Integer is
      Antal : Integer := 0;   
      Ch : Character;
   begin
      
      while not End_Of_File(File) loop
	 while not End_Of_Line(File) loop
	    Get (File, Ch);
	    Antal := Antal + 1;
	 end loop;
	 Skip_Line(File);
      end loop;
      
      return Antal; 
      
   end Antal_Tecken;
   
   ---------------------------------
   
   F1: File_Type;
   
   Start, Steg, Slut, Antal_Prick, Antal_Ch : Integer;
   
   Rad : Float;
   
begin
   
   Inmat (Start, Steg, Slut);
   
   Create (F1, Out_File, "SINUS.TXT");
   
   Put (F1, "Grad Radian Kurva");
   New_Line (F1);
   
   loop 
      Put (F1, Start, 3);
      Put (F1, "  ");
      
      Rad := Omvandla (Start);
      
      Put (F1, Rad, 1,3,0);
      
      Put (F1, "  ");
      
      Antal_Prick := Rakna_Sinus (Rad);
      
      for C in 1..Antal_Prick loop
	 Put (F1, '.');
      end loop;
      
      Put (F1, '0');
      New_Line (F1);
      
      Start := Start + Steg;
      
      if Start > Slut then
	 exit;
      end if;
      
   end loop;
   
   Close (F1);
   
   Open (F1, In_File, "SINUS.TXT");
   
   Antal_Ch := Antal_Tecken(F1);
   
   Put ("Figuren innehåller ");
   Put (Antal_Ch, 0);
   Put (" tecken.");
   
end Tentis;
