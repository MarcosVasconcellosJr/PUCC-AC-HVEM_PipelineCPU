LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY ControlUnit IS
    PORT (
        -- POSITION: (0: RegWrite, 1: MEMtoREG)
        WB : OUT STD_LOGIC_VECTOR(0 TO 1):= "00"; -- Write back
		  
        -- POSITION: (0: BRANCH, 1: MEMRead, 2: MEMWrite)
        MEM : OUT STD_LOGIC_VECTOR(0 TO 2):= "000"; -- Memory
		
        -- POSITION: (REGDst, ALUOp(3bits), ALUSrc)
        EX : OUT STD_LOGIC_VECTOR(0 TO 4):= "00000"; -- Exec

        -- SIGNAL FOR COOSE PC INPUT
        SIGNAL_JUMP : OUT STD_LOGIC_VECTOR(0 TO 1):= "00";
		  
        OP_CODE : IN STD_LOGIC_VECTOR(0 TO 5) -- Instruction OP Code
	    ); 
END ControlUnit;

ARCHITECTURE UC OF ControlUnit IS
BEGIN
	PROCESS(OP_CODE)
	BEGIN
    CASE OP_CODE IS
		WHEN "000000" => -- NOP
			EX	<= "XXXXX";
			MEM <= "0X0";
			WB	<= "X0";
        WHEN "000001" => --add
            EX <= "10000";
            MEM <= "0X0";
            WB <= "10";
        WHEN "000010" => --sub
            EX <= "10010";
            MEM <= "0X0";
            WB <= "10";
        WHEN "000011" => --add imed
            EX <= "10001";
            MEM <= "0X0";
            WB <= "10";
        WHEN "000100" => --sub imed
            EX <= "10011";
            MEM <= "0X0";
            WB <= "10";
        WHEN "000111" => --And
            EX <= "10100";
            MEM <= "0X0";
            WB <= "10";
        WHEN "001000" => --And imed
            EX <= "10101";
            MEM <= "0X0";
            WB <= "10";
        WHEN "001001" => --Or
            EX <= "10110";
            MEM <= "0X0";
            WB <= "10";     
        WHEN "001010" => --Or imed
            EX <= "10111";
            MEM <= "0X0";
            WB <= "10"; 
		 WHEN "000101" => --LW
            EX <= "00001";
            MEM <= "010";
            WB <= "11";
        WHEN "000110" => --SW
            EX <= "00001";
            MEM <= "001";
            WB <= "0X";
        WHEN "001011" => --Beq
            EX  <="X0010";
            MEM <="1X0";
            WB  <="XX";
        WHEN "001100" => --Jump
            SIGNAL_JUMP <="01";
            EX	 <="XXXXX";
			MEM <="0X0";
			WB	 <="00";
        WHEN "001101" => --Jr
            SIGNAL_JUMP <="10";
            EX	 <="XXXXX";
            MEM <="0X0";
            WB	 <="00";
       WHEN OTHERS =>
			EX	 <="XXXXX";
			MEM <="0X0";
			WB	 <="00";
			
    END CASE;
	 END PROCESS;
END UC;