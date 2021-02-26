
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
