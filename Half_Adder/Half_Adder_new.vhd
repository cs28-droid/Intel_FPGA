library IEEE ;
use IEEE.std_logic_1164.all ;
entity half_adder_new is 
	port (	A,B : in bit; --input ports
		Sum, Carry : out bit); --output ports
end half_adder_new;

library IEEE;
use IEEE.std_logic_1164.all;
entity not_gate1 is
  port(I : in bit; O : out bit);
end not_gate1;
architecture behavioral of not_gate1 is
begin
  O <= not(I) ;
end behavioral;

library IEEE ;
use IEEE.std_logic_1164.all ;
entity and_gate1 is
  port(I1, I2:in bit;
  O:out bit);
end and_gate1;
architecture behavioral of and_gate1 is
  begin
    O <= (I1 and I2) ;
end behavioral;

library IEEE ;
use IEEE.std_logic_1164.all ;
entity or_gate1 is
  port(I1, I2:in bit;
  O:out bit);
end or_gate1;
architecture behavioral of or_gate1 is
  begin
  O <= (I1 or I2) ;
end behavioral;

library IEEE ;
use IEEE.std_logic_1164.all ;
-- Structure view of Half Adder
architecture structure_view of half_adder_new is 

component not_gate1
	port(I : in bit; O : out bit);
end component;

component and_gate1
	port(I1,I2 : in bit; O: out bit);
end component;

component or_gate1 
	port(I1,I2 : in bit; O : out bit);
end component;

signal w,x,y,z : bit;

begin 
	G1: not_gate1 port map (A,x);
	G2: not_gate1 port map (B,y);
	G3: and_gate1 port map (x,B,z);
	G4: and_gate1 port map (A,y,w);	
	G5: or_gate1  port map (z,w,Sum);	
	G6: and_gate1 port map (A,B,Carry);
end structure_view;