library IEEE;
use IEEE.std_logic_1164.all;

entity ULA is
	port(A, B: in std_logic_vector (3 downto 0);
		  S: in std_logic_vector (2 downto 0);
		  F: out std_logic_vector (3 downto 0);
		  C_out_signed, C_out_unsigned: out std_logic);
end ULA;

architecture estrutural of ULA is
	component LE
		port(A,B, S0, S1, S2: in std_logic;
			  Z: out std_logic);
	end component;
	component AE
		port(B, S0, S1, S2: in std_logic;
			  W: out std_logic);
	end component;
	component CE
		port(S0, S1, S2: in std_logic;
			  C: out std_logic);
	end component;
	component FA
		port(l1, l2, Cin: in std_logic;
			  Cout, Sum: out std_logic);
	end component;
	component portaxor
		port (k1,k2: in std_logic;
				o_xor: out std_logic);
	end component;
	
	signal X, Y, C_in: std_logic_vector (3 downto 0);
	signal C_out: std_logic;
begin
	M1: LE port map (A(0), B(0), S(0), S(1), S(2), X(0));
	M2: LE port map (A(1), B(1), S(0), S(1), S(2), X(1));
	M3: LE port map (A(2), B(2), S(0), S(1), S(2), X(2));
	M4: LE port map (A(3), B(3), S(0), S(1), S(2), X(3));
	M5: AE port map (B(0), S(0), S(1), S(2), Y(0));
	M6: AE port map (B(1), S(0), S(1), S(2), Y(1));
	M7: AE port map (B(2), S(0), S(1), S(2), Y(2));
	M8: AE port map (B(3), S(0), S(1), S(2), Y(3));
	M9: CE port map (S(0), S(1), S(2), C_in(0));
	M10: FA port map (X(0), Y(0), C_in(0), C_in(1), F(0));
	M11: FA port map (X(1), Y(1), C_in(1), C_in(2), F(1));
	M12: FA port map (X(2), Y(2), C_in(2), C_in(3), F(2));
	M13: FA port map (X(3), Y(3), C_in(3), C_out, F(3));
	M14: portaxor port map (C_out, C_in(3), C_out_signed);
	C_out_unsigned <= C_out;
end estrutural;