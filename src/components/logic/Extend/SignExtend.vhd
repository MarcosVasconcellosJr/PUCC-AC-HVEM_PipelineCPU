LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY SignExtend IS
    PORT (
        A : IN STD_LOGIC_VECTOR (0 TO 15); -- Data that will be extended
        X : OUT STD_LOGIC_VECTOR(0 TO 31)); -- Where the extended data will be stored
END SignExtend;

ARCHITECTURE SE OF SignExtend IS
BEGIN
    -- Resize our data (16 bits) to the X lenght (32 bits) and stores it in X
    X <= STD_LOGIC_VECTOR(RESIZE(SIGNED(A), X'LENGTH));
END;