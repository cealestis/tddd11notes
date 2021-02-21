with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Command_Line;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Command_Line;

procedure Lab034 is
   
   I : Integer;
   B : Boolean := False;
   
begin
   
   I := Command_Name'Length - 2;
   
   if Argument (1) = "=" then      
      if I = Argument (2)'Length then
	 B := True;
      end if;            
   elsif Argument (1) = "<" then      
     if I < Argument (2)'Length then
	 B := True;
      end if;             
   elsif Argument (1) = ">" then      
      if I > Argument (2)'Length then
	 B := True;
      end if;            
   end if;
   
   Put ("Det var");   
   if not B then      
      Put (" inte");
   end if;   
   Put (" ok!");      
   
end Lab034; --  Argument_Count : integer, attribut för index för antal argument, varje argument är som strängar
