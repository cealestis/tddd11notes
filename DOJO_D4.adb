with Ada.Text_IO; use Ada.Text_IO;
with Reg_Plate_Handling; use Reg_Plate_Handling; --måste skapa detta paket

--skapa Get (speciell Get-procedur)
--Då skapar man dessa genom att skapa en ads-fil (klicka på Visit New File och skapa i samma mapp)
--Finns generiska paket på kurshemsidan som går att bygga om och hantera olika. 
--Finns paketets "ads"-fil där saker ska ingå i ett paket. 

R: Reg_Plate_Type;  -- en typ för att lagra ett registrerings6 
                    -- nummer för en bil. Har Tre tecken och
                    -- ett (tresiffrigt) heltal.

begin. --detta är då huvudprogrammet, får ej ändras

  Put("Mata in en regplåt: ");
  Get(R); -- Inmatningsformat "ABC-XYZ" där A, B och C är tecken 
    -- och XYZ är siffror.
  Put_Line("Inmatningen OK.");
  
exception
  when Format_Error =>
    Put_Line("Ogiltigt format för regplåten!");

end Test_Reg_Format;

--ovanstående får aldrig ändras

---underpaket Reg_Plate_Handling i ads filen

package Reg_Plate_Handling is 

type Reg_Plate_Type is record

private --gör att man inte behöver känna till namnet, ändra på saker i paketet i huvudprog. ska ej gå
--lösning på priate/icke-private problemet är att vi fördeklarerar

type Reg_Plate_Type;

--tar tre tecken och ett heltal, så array går ej utan när det är olika typer inuti samma typ 
--så bör det vara en record type!

    ABC: String(1..4); --tar hänsyn till strecket i inmatningen, när vi inte har det formatet ska vi få error
    XYZ: Integer;

end record;

end Reg_Plate_Handling; 


