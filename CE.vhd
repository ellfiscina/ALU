library IEEE;
use IEEE.std_logic_1164.all;

entity CE is
	port(S0, S1, S2: in std_logic;
		  C: out std_logic);
end CE;

architecture estrutural of CE is
	component portaxor
		port (k1,k2: in std_logic;
				o_xor: out std_logic);
	end component;
	component portaand
		port (i1,i2: in std_logic;
				o_and: out std_logic);
	end component;
	
	signal sxor: std_logic;
begin
	T1: portaxor port map (S0, S1, sxor);
	T2: portaand port map (sxor, S2, C);
end estrutural;