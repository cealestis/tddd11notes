----------
with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

procedure Lab03 is  
   
    -----------------------------------------------------------------------------
  type Matrix_Type is
    array (-2 .. 0, 3 .. 7) of Character; --inre, yttre
  
  -----------------------------------------------------------------------------
  M : Matrix_Type;
  
begin
  Put_Line("Mata in data: ");
  for Y in Matrix_Type'Range(2) loop --yttre
    for X in Matrix_Type'Range(1) loop  --inre
      Get(M(X,Y));  --skriver X,Y ist för (X)(Y) här
    end loop;
    Skip_Line;  
  end loop;
  
  
  Put_Line("Följande data finns i fältet: ");
  for Y in Matrix_Type'Range(2) loop
    for X in Matrix_Type'Range(1) loop
      Put(M(X,Y));
    end loop;
    New_Line;
  end loop;
   
end Lab03;

----------
with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

procedure Lab03 is  
   type Inner_Array is 
     array (1..4) of String(1..7);
   
   type Array_A is 
     array (-6..1) of Inner_Array; --8x4 matris
   
   P: Array_A;
   C: Character;
begin
   
   Put_Line("Mata in data: ");
   
   for X in Array_A'Range loop
      for Y in Inner_Array'Range loop
	 Get(P(X)(Y));
	 if Y < Inner_Array'Last then
	    Get(C);
	 end if;
      end loop;
   end loop;
   
   New_Line;
   Put_Line("Följande data finns i fältet:");
   
   for X in Array_A'Range loop
      for Y in Inner_Array'Range loop 	 
	 Put(P(X)(Y));
	 Put(C);
      end loop;
      New_Line;
   end loop;
   
end Lab03;


----------
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab03 is
   
   type Two_Dim_Type is
     array (1..5) of String(1..2);
   
   Two_Dim: Two_Dim_Type;
begin
   
   Put("Mata in 10 tecken: ");
   for Index in Two_Dim_Type'Range loop
      Get(Two_Dim(Index));
   end loop;
             
   New_Line;
   Put("Bram fältet innehåller din mamma: ");
   
   for Index in Two_Dim_Type'Range loop     
      Put(Two_Dim(Index));
       Put(' ');
   end loop;
   
end Lab03;


----------- 2Dfält

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab03 is
   
   type Inner_Arr_Type is
     array (1..3) of Integer; --ex. 1,2,3
   
   type Two_Dim_Type is                 --index:1, 2...
     array (1..5) of Inner_Arr_Type; --ex. (1 2 3), (4 5 6),...
   
   Arr: Two_Dim_Type;
begin
   
   Put("Mata in 5 rader med 3 heltal: ");
   
   for Index in Two_Dim_Type'Range loop 
      --1..5, på Index:1 lagrar den då efter att I lagrat grejjer en hel sträng (1 2 3) från 1..3-loopen 5 gånger
      
      for I in Inner_Arr_Type'Range loop
	 --1..3, på I:1 lagrar den ex. 1, på I:2 lagrar den 2 upp till 3 vilket är loopens range. 
	 
	 Get(Arr(Index)(I));  --avser platsen i matrisen, ex. 1,1 och 1,2 osv. 
      end loop;
   end loop;
   
   New_Line;   
   Put_Line("I fältet finns nu: ");
   for Index in 1..5 loop --kan skriva 'Range också såklart
      for I in 1..3 loop
	 Put(Arr(Index)(I),3);
      end loop;
      New_Line;
   end loop;           
   
end Lab03;



------------- SLUMPADE TAL
with Ada.Numerics.Discrete_Random;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab03 is
   
   subtype Integer_Range is
     Integer range 1..100;

   package Integer_Range_Package is
      new Ada.Numerics.Discrete_Random(Result_Subtype => Integer_Range);
   
   type Slump_Arr_Type is
     array (1..23) of Integer;
   
   G: Integer_Range_Package.Generator; 
   I: Integer;
   Slump_Arr: Slump_Arr_Type;

begin
   Integer_Range_Package.Reset(G);
   
   for Index in Slump_Arr_Type'Range loop
      Slump_Arr(Index):= Integer_Range_Package.Random(G);
   end loop;      

   Put_Line("Slumpade tal: ");
   
   for J in Slump_Arr_Type'Range loop
      I := Integer_Range_Package.Random(G);
      Put(I, Width => 0);
      New_Line;
   end loop;
   
end Lab03;

-------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab03 is
   
   type String_Array_Type is
     array (-10..-1) of String(1..6);       
   
   type Month_Array_Type is
     array (1..12) of Integer;
   
   type Bool_Array_Type is
     array (0..1) of Boolean;
   
   St_Var: String_Array_Type;
   Days_In_Month: Month_Array_Type;
   Bl_Var: Bool_Array_Type;
begin
   
   Days_In_Month := (31,28,31,30,31,30,30,30,31,31,30,31);
   
   Bl_Var(0) := False;
   Bl_Var(1) := True;
   if Bl_Var(1) then
      for I in St_Var'Range loop
	 St_Var(I) := "Testar";
      end loop;
   end if; 

   if Days_In_Month(2) = 28 then
      St_Var(-1) := "Feb28d";
   end if;
   
end Lab03;



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
