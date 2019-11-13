LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY ALU IS
	PORT (
		RS : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Register
		RT : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- Register
		ALU_CODE : IN STD_LOGIC_VECTOR(0 TO 1); -- Code of the arithmetic operation option
		ALU_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- Where we will store the result of the arithmetic operation
END ALU;

ARCHITECTURE ALU_EX OF ALU IS
BEGIN
	PROCESS (RS, RT, ALU_CODE)
	BEGIN
		-- Switch case to do the right operation based in ALU_CODE
		CASE ALU_CODE IS
			WHEN "00" => ALU_OUT <= RS + RT;
			WHEN "01" => ALU_OUT <= RS - RT;
			WHEN "10" => ALU_OUT <= RS AND RT;
			WHEN "11" => ALU_OUT <= RS OR RT;
			WHEN OTHERS => ALU_OUT <= "00000000000000000000000000000000";
		END CASE;
	END PROCESS;
END ALU_EX;