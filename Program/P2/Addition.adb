with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure P2 is  
   ------------------------------
   procedure Komma (Sum: in Integer) is 
   begin
      
      --alla är delbara med 1 så börjar från 2
      for Counter in 2..Sum loop
	 if Sum mod Counter = 0 then
	    Put(", ");
	    Put(Counter,1);
	 end if;   
      end loop;      
      
   end Komma;
   ------------------------------
   function Addition (Tal,Sum: in Integer) return Integer is --går ej att lägga den där
      Summa: Integer;
   begin      
      Summa:= Sum + Tal; 
      Put("Summan är ");
      Put(Summa,0);
      return Summa;        
   end Addition;   
   
   ------------------------------
   function Average (Sum,Counter: in Integer) return Float is 
      Avr,Sum_F,Counter_F: Float;
   begin
      Sum_F:= Float(Sum);
      Counter_F:= Float(Counter);
      Avr:= Sum_F/Counter_F;
      return Avr;      
   end Average;   
   
   ------------------------------
   procedure Inmat (Tal: out Integer) is
      Sum: Integer:= 0;
      Counter: Integer:= 0;
      Medel: Float:= 0.0;
   begin      
      
      Put("Mata in heltal. Avsluta med 0: ");      
      
      loop	 
	 Get(Tal);	
	 exit when Tal = 0;	 	 	 
	 Counter:= Counter + 1; --för medelvärdet, räknar hur många tal som kommit in
	 Sum:= Addition(Tal,Sum);
	 
	 Put(" och denna är jämnt delbart med 1");
	 Komma(Sum);
	 
	 New_Line;	 	 	 	 	 
      end loop;   
      
      Medel:= Average(Sum,Counter); --kan ha utanför för att sum räknar redan alla tal åt en thxx
      
      New_Line;
      Put("Medelvärdet av de inmatade heltalen var ");
      Put(Medel,0,3,0);
      Put('.');
      
   end Inmat;      
   ------------------------------
   Tal: Integer;
begin
   
   Inmat(Tal);
   
end P2;
