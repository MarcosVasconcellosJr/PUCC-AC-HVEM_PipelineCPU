LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Generic3to1Mux IS
    GENERIC (DATA_SIZE : INTEGER := 32); -- Generic data size to ensure that we can receive any size data
    PORT (
        JUMP_SIGNAL : IN STD_LOGIC_VECTOR (0 TO 1); -- Controller to select the desired data
        A, B, C : IN STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1); -- The first,second and third data option 
        X : OUT STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1)); -- Will be the selected data
END Generic3to1Mux;

ARCHITECTURE MUX OF Generic3to1Mux IS
BEGIN
    WITH JUMP_SIGNAL SELECT
        -- If control equals 0 then A, If equal 1 then B, else C
        X <= A WHEN "00",
        B WHEN "01",
        C WHEN OTHERS;
END MUX;