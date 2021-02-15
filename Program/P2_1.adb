with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Fir_Tree is
   
   -- Underprogram för inmatning och felhantering av N
   --   N: Heltal som skall läsas in och felhanteras
   procedure Get_Positive_Size(N: out Integer) is
   begin
      loop
	 Put("Mata in N: ");
	 Get(N);
	 exit when N > 0;
	 Put_Line("N måste vara positivt!");
      end loop;
   end Get_Positive_Size;
   
   
   -- Underprogram för att skriva ut N stycken tecken C
   --   N: heltal för antalet teckn som skall skrivas ut
   --   C: Tecknet att skriva ut N gånger
   procedure Print_N_Characters(N: in Integer; C: in character) is
   begin
      for I in 1..N loop
	 Put(C);
      end loop;
   end Print_N_Characters;
   
   
   -- Underprogram för att skriva ut en enskilld rad av en minigran
   --   S: Heltal som berättar hur många mellanrum raden ska börja med
   --   HL: Heltal som berättar hur många horisontella streck ("Horizontal Lines")
   --       som skall skriva ut av vardera sida av |-tecknet
   procedure Print_Minitree_Row(S, HL: in Integer) is
   begin
      Print_N_Characters(S, ' ');
      Print_N_Characters(HL, '-');
      Put('|');
      Print_N_Characters(HL, '-');
   end Print_Minitree_Row;
   
   
   -- Underprogram för att skriva ut en minigran
   --   Size: Heltal osm berättar storleken av en gran. Size på 1 ger en 
   --         gran på 2 rader och 1 '-' på vardera sida av '|' på sista raden.
   --   Spaces_Before: Heltal som berättar hur långt "högerjusterad" granen
   --                  skall vara (alltså, antal "extra" mellanrum till vänster om granen).
   procedure Print_Minitree(Size, Spaces_Before: in Integer) is  
      Spaces: Integer;
      Horizontal_Lines: Integer;
   begin
      for I in 1..Size + 1 loop
	 Spaces           := Spaces_Before + Size - I + 1;
	 Horizontal_Lines := I-1;
	 Print_Minitree_Row(Spaces, Horizontal_Lines);
	 New_Line;
      end loop;
   end Print_Minitree;
   
   -- Underprogram för att skriva ut en hel gran
   --   Size: Heltal som berättar storleken av hela granen.
   --         För exempelvis Size = 3 fås en gran som innehåller
   --         5 minigranar (av växande storlek) där sista minigranen
   --         har storlek 5.
   procedure Print_Tree(Size: in Integer) is
   begin      
      for I in 1..Size loop
	 Print_Minitree(I, Size-I);
      end loop;
   end Print_Tree;
   
   
   N: Integer;
begin
   Get_Positive_Size(N);
   Print_Tree(N);
end Fir_Tree;
