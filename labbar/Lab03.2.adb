with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Lab032 is         
   -----------------------------------------------------------------------------
   type Person_Attr_Type is
      record
	 Colour : String (1..10);
	 Colour_Len: Integer;
	 Length: Integer;
      end record;
   -----------------------------------------------------------------------------
   type Person_Data_Type is
      record
	 Arms : Integer;
	 Heads  : Integer;
	 Is_4D : Boolean;
	 Attr : Person_Attr_Type;
      end record;    
  -----------------------------------------------------------------------------
 
  procedure Inmat(item : out Person_Data_Type) is
     Is_4D_S: String(1..10);
     Is_4D_Length: Integer;
  begin
    
    Put_Line("Ange dina egenskaper");
    Put("- Antal huvuden: ");
    Get(Item.Heads);
    Put("- Antal armar: ");
    Get(Item.Arms);
    Skip_Line;
    Put("- Är din dimension i 4D? ");   
    Get_Line(Is_4D_S, Is_4D_Length);
    if Is_4D_Length = 10 then
       Skip_Line;
    end if;    
    
    if Is_4D_Length = 3 then
       Item.Is_4D:= False;
    elsif Is_4D_Length = 2 then
       Item.Is_4D:= True;
    end if;
    
    Put_Line("Ange hur din T-shirt skall vara: ");
    Put("- Färg: ");
    Get_Line(Item.Attr.Colour, Item.Attr.Colour_Len);
    if Item.Attr.Colour_Len = 10 then
       Skip_Line;
    end if;    
    
    Put("- Längd: ");
    Get(Item.Attr.Length);
    
  end Inmat;
  
  -----------------------------------------------------------------------------
  
  P: Person_Data_Type;
begin
   
   Put_Line("Välkommen till Intergalactic T-shirt Store.");
   Inmat(P);   
   
   New_Line;
   Put("Du har ");
   Put(P.Heads,0);
   Put(" huvud(en), ");
   Put(P.Arms,0);   
   Put(" arm(ar).");
   
   if P.Is_4D then
      Put(" Du är i dimension 4D.");
   end if;
   
   New_Line;
   
   Put("Du har just beställt en '");
   Put(P.Attr.Colour (1..P.Attr.Colour_Len));
   Put("' T-shirt med längd ");
   Put(P.Attr.Length,0);
   Put(" cm.");
     
end Lab032;

------------------------------------------------------

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
