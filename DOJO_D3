--DOJO3 Skapa ett program där du definierar ett fält av typen T som visas ovan. T representerar
--en hjältes pengainnehav och skall vara en post. Låt sedan användaren mata in data i
--denna datastruktur (enligt körexemplet), max 10 stycken. Inmatningen avslutas genom
--att användaren matar in 0 0 0. Programmet ska sedan gå igenom och räkna hur många
--hjältar som har fler kopparmynt än silvermynt och fler silvermynt än guldmynt
--(i exemplet nedan är det bara de två första raderna som uppfyller detta villkor).

-----------------------------------------------------
with Ada.Integer_Text_Io, Ada.Float_Text_Io, Ada.Text_io; 
use Ada.Integer_Text_Io, Ada.Float_Text_Io, Ada.Text_io; 

procedure Heroes is
 ---------------------------------------
   type Hero_Money_Type is record.  -- record/post, vi skapar en egen datatyp mha record. Kan döpa den till vad som, men tydligare om man skriver Type. 
      Gold : Integer := 0;
      Silver: Integer :=0;
      Copper: Float := 0.0;   --behöver konvertera detta sen
   end record;
 ---------------------------------------
   type Hero_Arr_Type is      
     array (1..10) of Hero_Money_Type;                                         --en sträng är massa tecken som bygger på varandra, ex 1-10 characters.                                    
                                       --Men array är istället att man definerar en egen typ av array, på samma sätt som strängar har olika platser med characters har 
                                 --array en längd med data i olika platser. I en array kan man säga att den är 1-10 av integers eller ha det av hero_money_type
                             --så det är som en string med variablar ist för tecken, ex. X= Integer; Y:= Integer := 123; osv i en sån lista.

 ---------------------------------------
 procedure Get(T: out Hero_Arr_Type) is.  --T är lokal variabel i denna procedur också
 
 begin
 --for-loop 1..10, istället för 10 så kan man skriva räckvidden för Hero_Arr_Type hoppar ut om det är en nolla
 
 for I in Hero_Arr_Type'Range loop -- Attribut!! 'Range !! vilket gör det smidigare för att ändra den i definitionen bara
  Get(T(I).Gold);        --vi vill getta Hero_Money_Type guld och silver och koppar. Med punkt hämtar man från poster men för att nå en plats i arrayen så 
  Get(T(I).Silver);       --ex 10 platser, hämta i en plats där kan man använda sig av parenteser istället, dvs Get(T(1)) ger första platsen i arrayen. 
  Get(T(I).Copper);      -- den första platsen är hela posten dvs guld silver och koppar. 
     end loop;           --Man behöver även lägga in I:et från for-loopen kan vi komma åt respektiva plats i varje array, vilket är bra om man vill hämta eller skriva ut data från varje plats i arrayen. 
         
 end Get;
 
 ---------------------------------------
      T:= Hero_Arr_Type;   --ska deklareras här, lokal variabel, så att det inte är en global variabel så att man inte råkar göra nå fel med dess värde
  begin
  Get(T);  --gör en procedure som gettar alla T som är Hero_arr_Type array:en.
