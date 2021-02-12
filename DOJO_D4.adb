with Ada.Text_IO; use Ada.Text_IO;
with Reg_Plate_Handling; use Reg_Plate_Handling;

R: Reg_Plate_Type;  -- en typ för att lagra ett registrerings6 
                    -- nummer för en bil. Har Tre tecken och
                    -- ett (tresiffrigt) heltal.

begin

  Put("Mata in en regplåt: ");
  Get(R); -- Inmatningsformat "ABC-XYZ" där A, B och C är tecken 
    -- och XYZ är siffror.
  Put_Line("Inmatningen OK.");
  
exception
  when Format_Error =>
    Put_Line("Ogiltigt format för regplåten!");

end Test_Reg_Format;

--ovanstående får aldrig ändras
