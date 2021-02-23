with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure P2 is      
   ------------------------
   procedure Inmat (X,Y,Z: out Float) is
   begin
      
      Put("Mata in en koordinat (x, y, z): ");
      Get(X);
      Get(Y);
      Get(Z);            
      
   end Inmat;   
   ------------------------
   function Kvadrera (I: in Float) return Float is
      Mult: Float;
   begin
      
      Mult:= I*I;
      return Mult;
      
   end Kvadrera;   
   ------------------------
   function Distance (X,Y,Z: in Float) return Float is
      Sum, Rot: Float;
   begin
      
      Sum:= Kvadrera(X) + Kvadrera(Y) + Kvadrera(Z);
      Rot:= Sqrt(Sum);
      
      return Rot;
      
   end Distance;   
   ------------------------
   
   procedure Distancia (X,Y,Z: in Float; Roten: out Float) is
      Sum: Float;
   begin
      
      Sum:= Kvadrera(X) + Kvadrera(Y) + Kvadrera(Z);
      Roten:= Sqrt(Sum);
      
   end Distancia;
   ------------------------
   
   procedure Utmat (X,Y,Z: in Float) is
      Rutis: Float;
   begin
      
      Put("Detta ligger på avstånd ");
      Put(Distance(X,Y,Z),0,2,0);
      Put_Line(" från origo (enligt funktionen)."); 
      
      Put("Detta ligger på avstånd ");
      Distancia(X,Y,Z,Rutis);
      Put(Rutis,0,2,0);
      Put_Line(" från origo (enligt proceduren)."); 
            
   end Utmat;   
   ------------------------
   procedure Koordinatfalt (X,Y,Z: in Float) is
   begin 
      
      for Rader in 1..10 loop
	 Put_Line(". . . . . . . . . . . . . . . . . . . . .");
      end loop;
      
      Put(". . . . . . . . . . ");
      
      if Distance(X,Y,Z) = 0.0 then	
	 Put(" K ");
      else
	 Put(" o ");
      end if;
      
      Put_Line(" . . . . . . . . . ");
      
      for Rader in 1..10 loop
	 Put_Line(". . . . . . . . . . . . . . . . . . . . .");
      end loop;
   end Koordinatfalt;
   ------------------------
   
   X,Y,Z: Float;
begin
   
   Inmat(X,Y,Z);
      
   Utmat(X,Y,Z);   
   
   Koordinatfalt(X,Y,Z);
   
end P2;
