LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ShiftLeft2_26to28 IS
    PORT (
        A : IN STD_LOGIC_VECTOR (25 DOWNTO 0); -- Our data that will be shifted
        X : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)); -- Where our shifted data will be stored
END ShiftLeft_26to28;

ARCHITECTURE SL OF ShiftLeft_26to28 IS
BEGIN
    X <= A(25 DOWNTO 0) & "00"; -- Concats the first 30 bits of our data with "00"
END;