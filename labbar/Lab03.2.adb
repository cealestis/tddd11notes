with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

procedure Lab03 is   
   
   ----------------------------------------------------------------
   Type Person_Name_Type is
      record
	 First : String(1 .. 20) := (others => ' ');
	 Last : String(1 .. 20) := (others => ' ');
	 Extra : String(1 .. 20) := (others => ' ');
      end record;
   
   -----------
   
   type Person_Data_Type is
      record
	 Length : Integer;
	 Weight : Float;
	 Attr : Boolean;  --anställd	 
      end record;
   -------------------------
   type Person_Type is
      record
	 Name : Person_Name_Type;
	 Data : Person_Data_Type;
      end record;
   ----------------
   
   procedure Get(item : out Person_Type) is

      Len : Integer;

   begin
      Put("Ange fullständigt förnamn: ");
      Get_Line(Item.Name.First, Len);
      if Len = 20 then
	 Skip_Line;
      end if;
      
      Put("Ange efternamn: ");
      Get_Line(Item.Name.Last, Len);
      if Len = 20 then
	 Skip_Line;
      end if;
      
      Put("Ange smeknamn (ENTER om saknas): ");
      Get_Line(Item.Name.Extra, Len);
      if Len = 20 then
	 Skip_Line;
      end if;     
      
      Put("Ange längd: ");
      Get(Item.Data.Length);
      Skip_Line;
      
      
   end Get;
   
   -----------------------------------------------------------------------------
   P: Person_Type;
   
begin
   Get(P);
   Put(P.Name.First); --wihoo
   
end Lab03;
