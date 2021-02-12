---------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab03 is
   
   type Heltal_Type is     
     array (-2..7) of Integer;
   
   H: Heltal_Type;
begin      
   
   Put("Mata in: ");
   
   
   for I in Heltal_Type'Range loop
      Get(H(I));
            
      if I = Heltal_Type'First then
	 New_Line;
	 Put_Line("I fältet finns nu: ");
	 Put_Line("Index:Värde");
      end if;
      
      Put(I,3); Put(':');
      Put(H(I),3);
      New_LIne;
      
   end loop;
      
end Lab03;


--------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;   -- vanlig array som inmatas 10 heltal och puttar dem enligt if-sats i for-loop.

procedure Lab03 is
   
   type Heltal_Type is     
     array (1..10) of Integer;
   
   H: Heltal_Type;
begin
   
   Put("Mata in tio heltal: ");
   
   for I in Heltal_Type'Range loop
      Get(H(I));
      
      if I = 1 then
	 New_Line;
	 Put("Du matade in: ");
      end if;  
      
      Put(H(I),1);
      Put(' ');
   end loop;
   
   
end Lab03;
