LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Mux_2to1_32b IS
    GENERIC (DATA_SIZE : INTEGER := 32); -- Generic data size to ensure that we can receive any size data
    PORT (
        CONTROL : IN STD_LOGIC; -- Controller to select the desired data
        A : IN STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1); -- The first data option
        B : IN STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1); -- The second data option
        X : OUT STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1)); -- Will be the selected data
END Mux_2to1_32b;

ARCHITECTURE MUX OF Mux_2to1_32b IS
BEGIN
    -- If control equals 0 then A, else B
    X <= A WHEN (CONTROL = '0') ELSE B;
END;