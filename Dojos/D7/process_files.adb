with Ada.Command_Line; use Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Process_Files is
   
   -- parametermoden på filmoden är out ENDAST om vi kör
   -- Open eller Close!
   
   procedure Calculate_File(File : in File_Type;
			    Longest_Word, Shortest_Word : out String;
			    Longest_Length, Shortest_Length : out Integer;
			    Average_Length : out Float) is
      
      Word : String(1..100);
      Word_Length : Integer;
      
      Total_Length, Number_Of_Words : Integer := 0;
      
   begin
      Longest_Length := 0;
      Shortest_Length := 101;
      
      while not End_Of_File(File) loop
	 Get_Line(File, Word, Word_Length);
	 
	 if Word_Length > Longest_Length then
	    Longest_Length := Word_Length;
	    Longest_Word := Word;
	 end if;
	 
	 if Word_Length < Shortest_Length then
	    Shortest_Length := Word_Length;
	    Shortest_Word := Word;
	 end if;
	 
	 Number_Of_Words := Number_Of_Words + 1;
	 Total_Length := Total_Length + Word_Length;
	 
      end loop;
      
      Average_Length := Float(Total_Length) / Float(Number_Of_Words);
      
   end Calculate_File;
   
   procedure Skriv_Till_Fil(File_Name : in String;
			    Longest_Word, Shortest_Word : in String;
			    Longest_Length, Shortest_Length : in Integer;
			    Average_Length : in Float) is
      -- filinformation.info
      
      File : File_Type;
   begin
      
      Open(File, Append_File, "filinformation.info");
      
      Put_Line(File, "--------------------------------------------------------------");
      Put(File, "Längsta ordet (");
      Put(File, Longest_Word(1..Longest_Length));
      Put(File, ") är ");
      Put(File, Longest_Length, Width => 0);
      Put(File, " tecken långt");
      New_Line(File);
      
      -- osv.....
      
      Close(File);
      
   end Skriv_Till_Fil;
   
   File : File_Type;
   
   
   Longest_Word, Shortest_Word : String(1..100);
   Longest_Length, Shortest_Length : Integer;
   Average_Length : Float;
   
   
begin 
   Create(File, Out_File, "filinformation.info");
   Close(File);
   
   for I in 1..Argument_Count loop
      Open(File, In_File, Argument(I));
      
      
      Calculate_File(File,
		     Longest_Word, Shortest_Word,
		     Longest_Length, Shortest_Length,
		     Average_Length);
      
      
      Put("Detta är filen: ");
      Put_Line(Argument(I));
      Put_Line(Longest_Word(1..Longest_Length));
      Put_Line(Shortest_Word(1..Shortest_Length));
      New_Line;
    
      Skriv_Till_Fil(Argument(I), 
		     Longest_Word, Shortest_Word, Longest_Length,
		      Shortest_Length,
		     Average_Length);
      Close(File);
   end loop;
end Process_Files;
