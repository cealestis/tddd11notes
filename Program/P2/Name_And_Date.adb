with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure P2 is
   ------------------------
   procedure Get_Date (Year: out String; Int_Month, Int_Day: out Integer) is
      Month: String(1..2);
      Day: String(1..2);
      
   begin
      
      --man får in ÅÅÅÅMMDD, ska dela upp de i strängar och sen omvandla varje sträng till integer för att kolla så att de ej är = 0 eller > 31, annars felmeddelande.
      
      loop
	 
	 Put("Mata in födelsedatum: ");
	 Get(Year); 	 
	 Get(Month); 
	 Get(Day);
	 Skip_Line;
	 
	 --ok gjorde fel, ta in hela talet och sen omvandla till delsträngar som omvandlas till integers för att lägga intervallet mellan 19000101 och 20991231. 
	 
	 Int_Month:= Integer'Value(Month); --gör om integers i strängen till integers
	   Int_Day:= Integer'Value(Day);
	 
	 if Int_Month = 0 or Int_Month > 12 or Int_Day > 31 or Int_Day = 0 then
	    Put_Line("FEL: Inte korrekt datum!");
	 else
	    exit;
	 end if;
	 
      end loop; 
      
   end Get_Date;
   ------------------------
   
   Name: String(1..6);
   Year: String(1..4);
   Int_Month, Int_Day: Integer;
begin
   
   Put("Mata in förnamn: ");
   Get(Name);
   Skip_Line;
   
   Get_Date(Year, Int_Month, Int_Day);
   New_Line;
   Put(Name);
   Put(" fyller år ");
   Put(Year);
   Put('-');
   Put(Int_Month,0);
   Put('-');
   Put(Int_Day,0);
   
end P2;
