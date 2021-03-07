with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

procedure P2 is      
   
   procedure Put_C_N_Times (Ch: in Character; N: in Integer) is
   begin
      
      for C in 1..N loop
	 Put(Ch);
      end loop;
      
   end Put_C_N_Times;   

   procedure Sticks (N, Counter: in Integer) is
   begin
      
      Put_C_N_Times(' ',N-Counter);
      Put_C_N_Times('-',Counter);
      Put("|");
      Put_C_N_Times('-',Counter); 
      New_Line;
      
   end Sticks;
   
   procedure Top (N: in Integer) is
   begin
      
      Put_C_N_Times(' ', N);  
      Put_Line("|");
      
   end Top;
   
   procedure One_Tree (N, I: in Integer) is     
   begin      
      
      Top(N); --denna loopas ju I antal gånger, men mellanrummen är statiska
      
      for Counter in 1..I loop  --N-Counter + 1 för att få första raden till att alltid bli max		
	 Sticks(N,Counter);  -- -|-, --|-- osv  
      end loop;
      
   end One_Tree;
   
   procedure All_Trees (N: in Integer) is
   begin
      
      for I in 1..N loop
	 One_Tree(N,I);
      end loop;
      
   end All_Trees;
   
   N: Integer;
begin
   
   Put("Mata in N: ");
   Get(N);
   
   All_Trees(N);
   
end P2;
