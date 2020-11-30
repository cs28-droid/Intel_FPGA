library IEEE ;
use IEEE.std_logic_1164.all ;
entity half_adder_struct is 
	port (	A,B : in bit; --input ports
		Sum, Carry : out bit); --output ports
end half_adder_struct;

library IEEE;
use IEEE.std_logic_1164.all;
entity not_gate is
  port(I : in bit; O : out bit);
end not_gate;
architecture behavioral of not_gate is
begin
  O <= not(I) after 10 ns;
end behavioral;

library IEEE ;
use IEEE.std_logic_1164.all ;
entity and_gate is
  port(I1, I2:in bit;
  O:out bit);
end and_gate;
architecture behavioral of and_gate is
  begin
    O <= (I1 and I2) after 10 ns;
end behavioral;

library IEEE ;
use IEEE.std_logic_1164.all ;
entity or_gate is
  port(I1, I2:in bit;
  O:out bit);
end or_gate;
architecture behavioral of or_gate is
  begin
  O <= (I1 or I2) after 10 ns;
end behavioral;

library IEEE ;
use IEEE.std_logic_1164.all ;
-- Structure view of Half Adder
architecture structure_view of half_adder_struct is 

component not_gate
	port(I : in bit; O : out bit);
end component;

component and_gate
	port(I1,I2 : in bit; O: out bit);
end component;

component or_gate 
	port(I1,I2 : in bit; O : out bit);
end component;

signal w,x,y,z : bit;

begin 
	G1: not_gate port map (A,x);
	G2: not_gate port map (B,y);
	G3: and_gate port map (x,B,z);
	G4: and_gate port map (A,y,w);	
	G5: or_gate  port map (z,w,Sum);	
	G6: and_gate port map (A,B,Carry);
end structure_view;