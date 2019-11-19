LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ShiftLeft IS
    PORT (
        A : IN STD_LOGIC_VECTOR (0 TO 31); -- Our data that will be shifted
        X : OUT STD_LOGIC_VECTOR(0 TO 31) -- Where our shifted data will be stored
        );
END ShiftLeft;

ARCHITECTURE SL OF ShiftLeft IS
BEGIN
    X <= A(2 TO 31)& "00" ; -- Concats the first 30 bits of our data with "00"
END;