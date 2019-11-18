LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY ControlUnit IS
    PORT (
        -- POSITION: (0: RegWrite, 1: MEMtoREG)
        WB : OUT STD_LOGIC_VECTOR(0 TO 1) := "00";
        -- POSITION: (0: BRANCH, 1: MEMRead, 2: MEMWrite)
        MEM : OUT STD_LOGIC_VECTOR(0 TO 2) := "000";
        -- POSITION: (0: REGDst, 1,2,3: ALUop, 4: ALUsrc)
        EX : OUT STD_LOGIC_VECTOR(0 TO 4) := "00000";
        -- SIGNAL FOR ChOOSE PC INPUT
        SIGNAL_JUMP : OUT STD_LOGIC_VECTOR(0 TO 1) := "00";

        INSTRUCTION : IN STD_LOGIC_VECTOR(0 TO 31)
    );
END ControlUnit;

ARCHITECTURE UC OF ControlUnit IS
BEGIN
    PROCESS (INSTRUCTION)
    BEGIN
        CASE INSTRUCTION(0 TO 5) IS
                --ok
            WHEN "000001" => --TYPE R
                WB <= "10";
                MEM <= "0X0";
                EX <= "10100";
                --ok
            WHEN "000010" => --TYPE I ADD
                WB <= "10";
                MEM <= "0X0";
                EX <= "10110";
                --ok
            WHEN "000011" => --TYPE I SUB
                WB <= "10";
                MEM <= "0X0";
                EX <= "11000";
                --ok
            WHEN "000100" => --TYPE I AND
                WB <= "10";
                MEM <= "0X0";
                EX <= "11010";
                --ok
            WHEN "000101" => --TYPE I OR
                WB <= "10";
                MEM <= "0X0";
                EX <= "11110";
                --ok
            WHEN "000110" => --LW
                WB <= "11";
                MEM <= "010";
                EX <= "00001";
                --ok
            WHEN "000111" => --SW
                WB <= "0X";
                MEM <= "001";
                EX <= "00001";
                --ok
            WHEN "001000" => --Beq
                WB <= "XX";
                MEM <= "1X0";
                EX <= "X0010";
                --ok
            WHEN "001001" => --Jump
                WB <= "00";
                MEM <= "0X0";
                EX <= "XXXXX";
                SIGNAL_JUMP <= "01";
                --ok
            WHEN "001010" => --Jr
                WB <= "00";
                MEM <= "0X0";
                EX <= "XXXXX";
                SIGNAL_JUMP <= "10";

            WHEN "000000" => -- NOP
                WB <= "X0";
                MEM <= "0X0";
                EX <= "XXXXX";

            WHEN OTHERS =>
                WB <= "00";
                MEM <= "0X0";
                EX <= "XXXXX";

        END CASE;
    END PROCESS;
END UC;