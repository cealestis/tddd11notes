with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Float_Text_IO;			use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;
with Ada.Numerics.Elementary_Functions;	use Ada.Numerics.Elementary_Functions;

procedure P2 is
  
  -----------------------------------------------------------------------------
  procedure Get(X, Y, Z : out Integer) is
    
  begin
    Get(X);
    Get(Y);
    Get(Z);
  end Get;
      
  -----------------------------------------------------------------------------
  function Calc_Distance(X, Y, Z : in Integer) return Float is
    
  begin
    return Sqrt(Float(X) * Float(X) + Float(Y) * Float(Y) + Float(Z) * Float(Z)); --kan stoppa i floats sådär
  end Calc_Distance;
  
  ----------------------------------------------------------------------------
  procedure Calc_Distance(X, Y, Z : in     Integer;
			  Dist    :    out Float) is
    
  begin
    Dist := Calc_Distance(X, Y, Z);
  end Calc_Distance;
  
  -----------------------------------------------------------------------------
  procedure Print(X, Y : in Integer) is
    
    Xx : Integer := Integer(Float(X)/10.0); --tbx till integer och delat på 10 för graderna på koordinaten
    Yy : Integer := Integer(Float(Y)/10.0); 
    
  begin
     for Yaxeln in -10 .. 10 loop  --dessa räknar ju antal prickar, och när de är på den countern 
					   --som är samma som floaten delat på tio, ex. om float är 100 blir det 10, 
					   --så kommer den sätta sig längst bort vid 10an
	-- Y axeln går 10 till -10 i reverse då position 10 är högst upp, dvs positivt upp negativt ner
	for Xaxeln in reverse -10 .. 10 loop   
	if (Xaxeln = Xx) and (Yaxeln = Yy) then --X axeln går som vanligt, -10 till 10
	  Put(" K");
	elsif (Xaxeln = 0) and (Yaxeln = 0) then
	  Put(" O");
	else
	  Put(" .");
	end if;
      end loop;
      New_Line;
    end loop;
  end Print;

  -----------------------------------------------------------------------------
  X, Y, Z : Integer;
  Dist    : Float;
  
begin
  Put("Mata in en koordinat (x, y, z): ");
  Get(X, Y, Z);
  
  Calc_Distance(X, Y, Z, Dist);
  Put("Detta ligger på avstånd ");
  Put(Dist,0,2,0);
  Put_Line(" från origo (enligt proceduren).");
  
  Put("Detta ligger på avstånd ");
  Put(Calc_Distance(X, Y, Z),0, 2,0);
  Put_Line(" från origo (enligt funktionen).");
  
  Print(X, Y);
end P2;
