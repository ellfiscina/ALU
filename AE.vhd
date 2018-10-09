library IEEE;
use IEEE.std_logic_1164.all;

entity AE is
	port(B, S0, S1, S2: in std_logic;
		  W: out std_logic);
end AE;

architecture estrutural of AE is
	component portanot
		port (i: in std_logic;
				o_not: out std_logic);
	end component;
	component portaor
		port (j1,j2: in std_logic;
				o_or: out std_logic);
	end component;
	component portaand3
		port (i3,i4,i5: in std_logic;
				o_and3: out std_logic);
	end component;
	component portaand4
		port (i6,i7,i8,i9: in std_logic;
				o_and4: out std_logic);
	end component;
	
	signal snot5, snot6, snot7, sor2, sand5, sand6: std_logic;
begin
	V1: portanot port map (B, snot5);
	V2: portanot port map (S0, snot6);
	V3: portanot port map (S1, snot7);
	V4: portaor port map (snot5, S1, sor2);
	V5: portaand3 port map (sor2, S0, S2, sand5);
	V6: portaand4 port map (B, S2, snot6, snot7, sand6);
	V7: portaor port map (sand5, sand6, W);
end estrutural;