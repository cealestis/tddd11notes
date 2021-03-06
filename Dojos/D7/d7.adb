with Ada.Text_IO; use Ada.Text_IO;
with Ada.Command_Line;

--*.txt inmatning i terminalen kmr söka efter allt som slutar på *.txt --./process_files är filnamnet

--gör en checklista med allt man ska göra i komprimerad form
--börja med huvudprogrammet och skriv in det som om du hade all info
--med underprogramm, skriv in allt du vill skicka in i det och skriv det sen
--börja ej med deklarationsdelen
--låtsas att vi har ett underprogramm som fixar allt liksom

--End_Of_Line är för varje rad, End_Of_File är slutet på filen
--måste nolla en gång för varje fil som man gör in på longest length liksom, så att den inte går in i en ny loop med longest length från förra filen
--annars om man vill ha längsta längden i alla filer funkar ju det
--
