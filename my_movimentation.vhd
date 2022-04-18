LIBRARY ieee;

USE ieee.std_logic_1164.all;
 
ENTITY my_movimentation IS
	PORT( 
		SF, SD, SE: IN STD_LOGIC; 
		FRENTE, DIREITA, ESQUERDA, SAIDA: out STD_LOGIC
		);

END my_movimentation;
 
ARCHITECTURE behavior OF my_movimentation IS
 
	BEGIN 
		FRENTE <= (((SD AND SE) AND (NOT SF)) OR ((SE NOR SF) AND SD));
		DIREITA <= (((SF AND (NOT SD))AND SE) OR (SF AND SD AND SE) OR ((SD NOR SE) AND SF) OR ((SF NOR SD) AND SE));
		ESQUERDA <= ((SF AND SD) AND (NOT SE));
		SAIDA <= (NOT((SF OR SD) OR SE));

END behavior;

-- teste