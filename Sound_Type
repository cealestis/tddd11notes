With Ada.Text_IO;          use Ada.Text_IO; --huvudprogramm
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;

with Sound_Hanling; use Sound_Hanling;

procedure Lab04 is
   Sound : Sound_Type;
begin
   Put("Mata in ett ljud: ");
   Get(Sound);
   New_Line;
   
   Put(Sound);

end Lab04;

--adb

With Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;

package body Sound_Hanling is
   
   procedure Get(Sound: out Sound_Type) is
   begin
      Get(Sound.DB);
      Get_Line(Sound.Sound_Text, Sound.Sound_Length);
      
      if Sound.Sound_Length = 10 then
	 Skip_Line;
      end if;
   end Get;
   
   procedure Put(Sound: in Sound_Type) is
   begin
      Put(Sound.Sound_Text(2..Sound.Sound_Length));
      
      for I in 1..Sound.DB loop
	 Put('!');
      end loop;
      
   end Put;
   
end Sound_Hanling;


--ads


package Sound_Hanling is
   
   type Sound_Type is private;
   
   procedure Get(Sound: out Sound_Type);
   
   procedure Put(Sound: in Sound_Type);
      
private
   type Sound_Type is
      record
	 DB: Integer;
	 Sound_Text: String(1..10);
	 Sound_Length: Integer;
      end record;
   
end Sound_Hanling;

