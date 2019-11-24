LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ShiftLeft2_26to28 IS
    PORT (
        A : IN STD_LOGIC_VECTOR (0 TO 25); -- Our data that will be shifted
        X : OUT STD_LOGIC_VECTOR(0 TO 27) -- Where our shifted data will be stored
    );
END ShiftLeft2_26to28;

ARCHITECTURE SL OF ShiftLeft2_26to28 IS
BEGIN
    X <= A(0 TO 25) & "00"; -- Concats the first 30 bits of our data with "00"
END;