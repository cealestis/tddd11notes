----------
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO; 
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Lab05 is
   
   function D (N: in Integer) return Integer is
   begin
      
      if N = 1 then
	 return 1;
      else
	 return 2*D(N-1)+1;
      end if;
      
   end D;
   
   N: Integer;
begin
   
   Put("Mata in antalet skivor i ditt torn: ");
   Get(N);
   
   Put("Minsta antalet drag som krävs för denna storlek är: ");
   Put(D(N),0);

end Lab05;

-------
With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO; 
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Lab05 is
   
   function Put_Number_But_Make_It_Smaller(I : in Integer) return Integer is
      
   begin
      
      if I <= 1 then	 
	 return I;	
      else 
	Put(I,0);
	New_Line;
	return Put_Number_But_Make_It_Smaller(I/10);
      end if;      
      
   end Put_Number_But_Make_It_Smaller;

   I : Integer;

begin
   Put("Mata in ett lagom stort tal: ");
   Get(I); 
   Put(Put_Number_But_Make_It_Smaller(I),1);
   
end Lab05;

------------

With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO; 
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Lab05 is
   
   function Power(X : in Float; N : in Integer) return Float is
   begin
      
      if N = 1 then
	 return X;
      else
	return X * Power(X,N-1);
      end if;      
      
   end Power;
   
   X: Float; N: Integer;
begin
   
   X:= 2.0;
   N:= 3; --X^N = Power(2,2) = 2^2 = 2*2 = 2 * 2*1 = X * Power(2, 2-1) = Power(2,1)
   
   Put(Power(X,N),0,1,0);
   
end Lab05;



----------
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab05 is 
   
   function Fib (N: in Natural) return Natural is 
   begin
      
      if N = 1 then  --vill ha någonstans där den ska sluta, 
	 --genom if-sats returnerar konstant
	 return 1;
      elsif N = 2 then
	 return 1;	 
      else
	 return Fib(N - 1) + Fib(N - 2);
      end if;      
      
   end Fib; 
   
   N: Natural;
begin
   
   Put("Mata in vilket N:te tal du vill se i Fibonacci-serien: ");
   Get(N);
   
   Put("Det ");
   Put(N,0);
   Put(":e/a talet i Fibonacci serien är: ");
   Put(Fib(N),0);  
   
end Lab05;
