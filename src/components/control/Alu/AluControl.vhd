LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY AluControl IS
    PORT (
        ALU_OP : IN STD_LOGIC_VECTOR(0 TO 1);
        FUNCT : IN STD_LOGIC_VECTOR(0 TO 5);
        ULA_CODE : OUT STD_LOGIC_VECTOR(0 TO 1)
    );
END AluControl;

ARCHITECTURE AC OF AluControl IS
BEGIN
    PROCESS (ALU_OP, FUNCT)
    BEGIN
        -- I-TYPE - LW and SW
        IF (ALU_OP = "000") THEN
            ULA_CODE <= "00";
        END IF;

        -- I-TYPE - BEQ
        IF (ALU_OP = "001") THEN
            ULA_CODE <= "01";
        END IF;

        -- R-TYPE
        IF (ALU_OP = "010") THEN
            IF (FUNCT = "100000") THEN
                ULA_CODE <= "00";
            END IF;

            IF (FUNCT = "100010") THEN
                ULA_CODE <= "01";
            END IF;

            IF (FUNCT = "100100") THEN
                ULA_CODE <= "10";
            END IF;

            IF (FUNCT = "100101") THEN
                ULA_CODE <= "11";
            END IF;
        END IF;

        -- I-TYPE ARITHMETHIC
        -- SOMA
        IF (ALU_OP = "011") THEN
            ULA_CODE <= "00";
        END IF;
        -- SUB
        IF (ALU_OP = "100") THEN
            ULA_CODE <= "01";
        END IF;
        -- AND
        IF (ALU_OP = "101") THEN
            ULA_CODE <= "10";
        END IF;
        -- OR
        IF (ALU_OP = "111") THEN
            ULA_CODE <= "11";
        END IF;
    END;
END;