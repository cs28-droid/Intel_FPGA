-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/06/2020 08:21:19"
                                                            
-- Vhdl Test Bench template for design  :  half_adder_struct
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY half_adder_struct_vhd_tst IS
END half_adder_struct_vhd_tst;
ARCHITECTURE half_adder_struct_arch OF half_adder_struct_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Carry : STD_LOGIC;
SIGNAL Sum : STD_LOGIC;
COMPONENT half_adder_struct
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Carry : BUFFER STD_LOGIC;
	Sum : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : half_adder_struct
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Carry => Carry,
	Sum => Sum
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END half_adder_struct_arch;
