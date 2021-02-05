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
                             -- rangen är 1..10 för Hero_Arr_Type, vi har satt alla till i posten till 0, så vi undviker att det blir extra random värden i array:en.
                             --säg att man skriver in 5 olika och bara vill ha för I till antalet man skrivit in istället för att ha skrivit noll i början. 
                             --Ifall jag bara matade in en hjälte kommer det alltid bara göra 10 jämförelser, hur kan man ändra antalet jämförelser?
                             --Då kan man använda sig av Get-proceduren, att i den så kan vi säga istället för exit when villkoret, lägger till en parameter i parameterlistan
                             --ex ; Length: out Integer), och byter exit when till if T(I).GOld = 0 osv så säger vi att Length:= I;  alltså for loopens varv-räknare så få rvi hur många 
                             --hjältar vi matat in. Length:= I - 1; då sista är en nollrad.
                             --Säg att den aldrig går in i villkoret och man matat in 10 hjältar måste vi ha ett defaultvärde om allt uppfylls, så det är bra att tilldela Length:= 10;

 ---------------------------------------
 procedure Get(T: out Hero_Arr_Type) is.  --T är lokal variabel i denna procedur också
 
 begin
 
 Put_Line("Mata in hjältarnas pengar i ordningen guld, silver och koppar");
 
 --for-loop 1..10, istället för 10 så kan man skriva räckvidden för Hero_Arr_Type hoppar ut om det är en nolla
 
 for I in Hero_Arr_Type'Range loop -- Attribut!! 'Range !! vilket gör det smidigare för att ändra den i definitionen bara
  Get(T(I).Gold);        --vi vill getta Hero_Money_Type guld och silver och koppar. Med punkt hämtar man från poster men för att nå en plats i arrayen så 
  Get(T(I).Silver);       --ex 10 platser, hämta i en plats där kan man använda sig av parenteser istället, dvs Get(T(1)) ger första platsen i arrayen. 
  Get(T(I).Copper);      -- den första platsen är hela posten dvs guld silver och koppar. 
                      --Man behöver även lägga in I:et från for-loopen kan vi komma åt respektiva plats i varje array, 
                      --vilket är bra om man vill hämta eller skriva ut data från varje plats i arrayen.
     
     exit when T(I).Gold = 0 and T(I).Silver = 0 and T(I).Copper = 0.0;   --måste skriva ut alla grejjer i arrayan
     end loop;              
   
 end Get;
  ---------------------------------------
  function Compare (T: in Hero_Arr_Type) is --behöver berätta vad den ska returnera
  return integer is
  
  Hero_Amount: Integer:= 0;   --räknaren för hur många hjältar som uppfyller kravet
  
  for I in Hero_Arr_Type'Range loop    --för varje hjälte så ska vi kolla om de har mer koppar än silver osv
            --för varje I vi har kommer vi se platserna dvs records för varje hjälte, om det är så, så kan vi också kolla om det är mer silver än guld
  if T(I).Gold < T(I).Silver and Float(T(I).Silver) < T(I).Copper then    --två olika datatyper, koppar är float. Måste konvertera
                                           --Göra om silver/integer till float bäst, lägger ba till en nolla
                                          
     Hero_Amount := Hero_Amount + 1;
  end if;
 end loop;
     
     return Hero_Amount;
 end Compare;
 ---------------------------------------
      T:= Hero_Arr_Type;   --ska deklareras här, lokal variabel, så att det inte är en global variabel så att man inte råkar göra nå fel med dess värde
      Antal_Hjaltar: Integer;  --denna kommer från Compare, behövs ej tilldelas men kan spara Length i denna från out Integer från procedure Get! 
      
      --Vi kan lägga in denna i Compare och Get istället för att använda Hero_Arr_Range så lägger vi Antal_Hjaltar istället! då byter vi till att ha en if sats ist.
      
  begin
  Get(T,Antal_Hjaltar);  --gör en procedure som gettar alla T som är Hero_arr_Type array:en.
  
  --andra delen ska jämföra man har mer koppar än silver och mer silver än guld
  --kan göra antingen function eller procedur för detta, kan ej ha out på functions så man kan inte returnera fler värden
  --om man ska returnera en string och en float ex går det ej med en funktion. 
  --vi ska returnera hur många hjältar det är som uppfyller detta krav
  --Compare(T);   --vi returnerar en integer till huvudprogrammet och huvudprogrammet måste fånga upp det,
                 --behöver ingen variabel som fångar upp då functionen returnerar något som sedan blir hela funktionen
  Put(Compare(T, Antal_Hjaltar, Width => 0));
  Put(" hjältar har fler kopparmynt än silvermynt och fler silvermynt än guldmynt");
  
  
  end Heroes;
