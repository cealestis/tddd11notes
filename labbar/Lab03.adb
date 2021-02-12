--------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab03 is
   
   type Int_Arr_Type is
     array (1..5) of Integer;
   
   Int_Arr: Int_Arr_Type;
begin      
   
   Put("Mata in 5 tal: ");
   
   for Index in Int_Arr_Type'Range loop
      Get(Int_Arr(Index));
      
      if Index = Int_Arr'First then
	 New_Line;
	 Put("Du matade in fältet:");
      end if;      
      
      Put(Int_Arr(Index),3);
      
   end loop;
   
   New_Line;
   
   Put("Den första siffran i fältet är:");
   Put(Int_Arr(1),3);  
   
   New_Line;
   
   Put("Den ligger på index:");
   Put(1,2);
   
   New_Line;
   
   Put("Den sista siffran i fältet är:");
   Put(Int_Arr(5),3);
   
   New_Line;
   Put("Den ligger på index:");
   Put(5,2);
      
end Lab03;


-------------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab03 is
   
   type Int_Arr_Type is
     array (1..5) of Integer;
   
   Int_Arr: Int_Arr_Type;
begin      
   
   Put("Mata in 5 tal: ");
   
   for Index in reverse Int_Arr_Type'Range loop
      Get(Int_Arr(Index));
   end loop;
   
   New_Line;
   
   Put("I fältet finns nu:");
   
   for Index in Int_Arr_Type'Range loop
      Put(Int_Arr(Index),2);
   end loop;
      
end Lab03;


--------------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab03 is
   
   ------
   type Boolean_Arr_Type is     
     array (1..5) of Boolean;
   
   ------
   procedure Get_Convert(C: out Character; B: out Boolean) is
   begin
      
      Get(C);
      
      if C = 'Y' then
	 B:= True;
      elsif C = 'N' then
	 B:= False;
      end if;      
            
   end Get_Convert;   
   ------
   
   C:Character;
   BA: Boolean_Arr_Type;
begin      
   
   Put("Mata in 5 tecken: ");
      
   for Index in Boolean_Arr_Type'Range loop
      Get_Convert(C, BA(Index));
            
      if Index = Boolean_Arr_Type'First then
	 New_Line;
	 Put_Line("Fältet innehåller: ");
	 Put_Line("Index:Värde");
      end if;      
      
      Put(Index,2);
      Put(':');
      
      if BA(Index) = True then
	 Put("Sant");
      else
	 Put("Falskt");
      end if;      
      
      New_Line;      
   end loop;      
   
end Lab03;


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
