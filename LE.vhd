library IEEE;
use IEEE.std_logic_1164.all;

entity LE is
	port(A,B, S0, S1, S2: in std_logic;
		  Z: out std_logic);
end LE;

architecture estrutural of LE is
	component portanot
		port (i: in std_logic;
				o_not: out std_logic);
	end component;
	component portaand
		port (i1,i2: in std_logic;
				o_and: out std_logic);
	end component;
	component portaand4
		port (i6,i7,i8,i9: in std_logic;
				o_and4: out std_logic);
	end component;
	component portaor
		port (j1,j2: in std_logic;
				o_or: out std_logic);
	end component;
	component portaor4
		port (j3,j4,j5,j6: in std_logic;
				o_or4: out std_logic);
	end component;
	
	signal snot1, snot2, snot3, snot4, sor, sand1, sand2, sand3, sand4: std_logic;
begin
	U0: portanot port map (S0,snot1);
	U1: portanot port map (S1,snot2);
	U2: portanot port map (S2,snot3);
	U3: portanot port map (A, snot4);
	U4: portaor port map (S0, B, sor);
	U5: portaand port map (A, S2, sand1);
	U6: portaand port map (A, snot1, sand2);
	U7: portaand port map (A, snot2, sand3);
	U8: portaand4 port map (snot4, sor, S1, snot3, sand4);
	U9: portaor4 port map (sand1, sand2, sand3, sand4, Z);
end estrutural;