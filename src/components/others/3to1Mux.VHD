LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Generic2to1Mux IS
    GENERIC (DATA_SIZE : INTEGER := 32); -- Generic data size to ensure that we can receive any size data
    PORT (
        JUMP_SIGNAL :IN STD_LOGIC_VECTOR (0 TO 1); -- Controller to select the desired data
        A : IN STD_LOGIC_VECTOR (DATA_SIZE - 1 DOWNTO 0); -- The first data option 
        B : IN STD_LOGIC_VECTOR (DATA_SIZE - 1 DOWNTO 0); -- The second data option
        C : IN STD_LOGIC_VECTOR (DATA_SIZE - 1 DOWNTO 0); -- The third data option
        X : OUT STD_LOGIC_VECTOR (DATA_SIZE - 1 DOWNTO 0)); -- Will be the selected data
END Generic2to1Mux;

ARCHITECTURE MUX OF Generic2to1Mux IS
BEGIN
    -- If control equals 0 then A, If equal 1 then B, else C
    X <= A WHEN (JUMP_SIGNAL = '00') 
         B WHEN (JUMP_SIGNAL = '01')ELSE C;
END;