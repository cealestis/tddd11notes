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
