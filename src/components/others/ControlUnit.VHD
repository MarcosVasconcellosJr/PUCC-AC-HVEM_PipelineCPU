LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY ControlUnit IS
    PORT (
        WB : OUT STD_LOGIC_VECTOR(0 TO 1); -- Write back
        MEM : OUT STD_LOGIC_VECTOR(O TO 2); -- Memory
        EX : OUT STD_LOGIC_VECTOR(O TO 4); -- Exec
        OP_CODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0)); -- Instruction OP Code
END ControlUnit;

ARCHITECTURE UC OF ControlUnit IS
BEGIN
    CASE OP_CODE IS
        WHEN "000001" =>
        WHEN "000010" =>
        WHEN "000011" =>
        WHEN "000100" =>
        WHEN "000101" =>
        WHEN "000110" =>
        WHEN "000111" =>
        WHEN "001000" =>
        WHEN "001001" =>
        WHEN "001010" =>
        WHEN "001011" =>
        WHEN "001100" =>
        WHEN "001101" =>
        WHEN OTHERS =>
    END CASE
END UC;