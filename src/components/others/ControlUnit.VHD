LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY ControlUnit IS
    PORT (
        -- POSITION: (RegWrite, MEMtoREG)
        WB : OUT STD_LOGIC_VECTOR(0 TO 1); -- Write back
        -- POSITION: (BRANCH, MENRead, MEMWrite)
        MEM : OUT STD_LOGIC_VECTOR(0 TO 2); -- Memory
        -- POSITION: (REGDst, ALUOp(2bits), ALUSrc)
        EX : OUT STD_LOGIC_VECTOR(0 TO 4); -- Exec
        OP_CODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0)); -- Instruction OP Code
END ControlUnit;

ARCHITECTURE UC OF ControlUnit IS
BEGIN
    CASE OP_CODE IS
        WHEN "000001" => --add
            EX <= "10000";
            MEM <= "0X0";
            WB <= "10";
        WHEN "000010" => --sub
            EX <= "10010";
            MEM <= "0X0";
            WB <= "10";
        WHEN "000011" => --add imed
            
        WHEN "000100" => --sub imed
        WHEN "000101" => --LW
        WHEN "000110" => --SW
        WHEN "000111" => --And
        WHEN "001000" => --And imed
        WHEN "001001" => --Or
        WHEN "001010" => --Or imed
        WHEN "001011" => --Beq
        WHEN "001100" => --Jump
        WHEN "001101" => --Jr
        WHEN OTHERS =>
    END CASE
END UC;