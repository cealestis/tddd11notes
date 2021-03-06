I := Integer(F); tolkar floaten till integer, typomvandling. Ada är 'hårttypat' språk då datatyperna måste stämma överrens med de dem är. 
           
           Ex. ett heltal är alltid en integer.
           Sedan kan man kopiera som i detta fall och låta en datatyp tolka den andra. 
            
           Fakulteter: Om variabeln 1 har ett startvärde som är 0, så kan man inte säga ta I gånger 1, då måste vi säga att I börjar på något värde ex. 1.
           Odeklarerade variabler: alla har något värde i sig så vi måste se till att de inte har något konstigt värde i sig från början. 
           Avrundning: Kapar bara decimaldelen från ett flyttal och ger en integer/heltal, men det går att bestämma hur den ska avrunda. 
            

F := Float(3 / 2); -- =1 då 3 och 2 är två heltal. 3/2 = 1/2 + 1 så man pockar ut ettan, vid 3 mod 2
                
           7/3 = heltalsdel A + rest/3, A är hur många treor kan man få ut ur 7? och resten är liggande stolen som är kvar som inte gick att dela upp i 3, 
           dvs ettan i detta fall. Blir en decimaldel och gör att man kan räkna det som ett flyttal. Så om I := 3 mod 2 så blir det heltalet i det. 
                
C := '2': är en character, markeras med apostroferna
I := '2': är en integer och inte en character

B := True;      Måste deklarera att bolean är en variabel, men behöver inte ge den någon true eller false. 

B := (I < 8); I jämförs med 8, om I har varit 7 så blir boolean true, om I vore 10 så blir bolean false. Jämförelseberäkning!
           
           Jämförelser: endast en åt gången, dvs (I<8) funkar men inte (1<I<8), dock kan man länka ihop dessa med "and" och "or", så exempelvis
           "4 < I and I < 10"

Operationer:
           ** är upphöjt till
           rem

Strängar:
           Strängen är alltid så lång som man definerar den som. Måste definera längd på den. 
           Get_Line; kommer bara lägga in så många tecken som man matat in, resten av platserna har sina gamla värden i sig. 
           Så vid utskrift kan man begränsa vad som ska skrivas ut, exempelvis Put(S(1 .. L)); där L är integer Längd.

If-satser, Villkor:
Val, selektion, man kan välja olika vägar i sitt program. 

Första varianten: 
           if Villkor then
                      Sekvens_Av_Satser;
           end if;
           
Så procedure Exempel is
           I: Integer;
begin
           -- Satser osm utförs.
           Put("Hur gammal är du? ");
           Get(I);
           
           if I < 15 then
                      Put_Line("Du är ung.");
           end if;
end Exempel;

Variant 2: If-sats men lagt till en else-gren. Om detta villkor inte är sant så utförs den andra sekvensen.
Så procedure Exempel is
           I: Integer;
begin
           -- Satser osm utförs.
           Put("Hur gammal är du? ");
           Get(I);
           
           if I < 15 then
                      Put_Line("Du är ung.");
                     ex. I := 27; kommer inte testas en gång till och hoppar ner till efter if-satsen med värdet på I i behåll.
           else
                      Put_Line("Du är inte ung.");
           end if;

Variant 3: Elseif, elsif och else.
När vi lägger till elseif agerar den som else men man lägger till ytterliggare ett villkor. Så om det första villkoret inte är sant kommer det gå vidare och kolla på nästa villkor och se om det är sant
är sant, om inget är sant kommer inget att utföras. 

Elsif: nytt villkor ifall det första inte gällde
och else gör att man utför det sista som står under den. 

Else: fångar upp resten av fallen som inte föll in under if och elsif villkoren. 

Så procedure Exempel is
           I: Integer;
begin
           -- Satser osm utförs.
           Put("Hur gammal är du? ");
           Get(I);
           
           if I < 15 then
                      Put_Line("Du är ung.");
                     om man lägger till här under ex. I := 27; kommer inte testas en gång till och hoppar ner till efter if-satsen med värdet på I i behåll.
           elsif I < 50 then
                      Put_Line("Du är vis.");
           else
                      Put_Line("Du är inte ung.");
           end if;


Snabbkommandon:
Ctrl + A hoppa fram i raden
ctrl + K (kill) tar bort en helrad
ctrl + Y (yank) ta tbx det man tar bort
ctrl + x + (antal, ex 2) delar man upp emacs i (antal) fönster
ctrl + x + 1 tar bort alla andra rutor utom den man står i nu. 
ctrl + c stoppa en loop
ctrl + x + ex 2,3 för att dela upp skärmen i flera delar för underprogram
null; gör ingenting, ex för provkomp. för underprogram.
U: ** betyder att man inte sparat, snabbkommando ctrl x ctrl s
alt x för linum på linux

Case-satsen: om man har flera sekvenser och val, behövs dock inte i kursen.

Repetition (iteration): upprepning ett antal gånger, ex. om man vill ta in en bokstav Get och Put ett visst antal gånger. 
Tre varianter, välj enligt frågorna nedan:

1. Kommer programmet att vilja köra detta oändligt många gånger?
JA => loop
           ex. while Villkor loop
                 Sekvens_Av_Satser;
           end loop;

2. Vet jag hur många gånger satserna skall utföras?
JA => for
           for I in 1 .. 10 loop            -- I ska inte deklareras då den är en temporär variabel som används endast inne i loopen,
                                            är en konstant i loopen, man får aldrig ändra den variabeln. Så I := 4; felaktigt tänk då man förstör satsen. 
                                            -- finns även reverse 1 .. 2 loop
                                            -- 1 .. 1 skriver bara ut 1, 1 .. 0 om startvärdet är större än slutvärdet kommer for utföras 0 gånger.
                 Put(I);    -- kommer skriva ut upp till 10
           end loop;
3.Vet jag att det som ska utföras ska göras MINST en gång?
JA => loop
då den satsen garanterat kommer gå in och ut i sina satser, men kan lägga till en exit inuti och bland sekvenserna med IF, då om det är sant kan man göra exit.

4. I andra fall:
=> While

           while
           i := 1;               --I kommer testa att i är mindre än ett och skriva ut i, vid end loop så kommer kolla igenom om i är mindre än 3.
                                 -- men om man tilldelar:         så kommer den räkna upp ett steg och så är den klar när i = 3 och inte är i < 3. 
                                           i := i + 1;
           while i < 3 loop
                      Put(i);
           end loop;

Get_Line(S,I); sedan krav på stränglängden typ I < 10
