LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY mem IS
    GENERIC (
        N : INTEGER := 8; -- Size of instruction (in bits)
        M : INTEGER := 4); -- Size of memory block to store a (word)
    PORT (
        CPU_CLOCK, MEM_WRITE : IN STD_LOGIC; -- Memory write and CPU_CLOCK
        MEM_ADDRESS : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0); -- Memory address
        WRITE_DATA : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0); -- Write data
        READ_DATA : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)); -- Read data
END mem;

-- This architecture implements a memory position
-- This component mem is used in component instruction memory
ARCHITECTURE Memory OF mem IS
    -- A 4 position memory array containing an 8 bits array (1 byte) in each position
    TYPE MEM_ARRAY IS ARRAY (0 TO M - 1) OF STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL MEM_ARRAY_DATA : MEM_ARRAY;
BEGIN
    PROCESS (CPU_CLOCK)
    BEGIN
        IF (CPU_CLOCK' event AND CPU_CLOCK = '1') THEN
            IF (MEM_WRITE = '1') THEN
                MEM_ARRAY_DATA(to_integer(unsigned(MEM_ADDRESS))) <= WRITE_DATA;
            END IF;
        END IF;
    END PROCESS;
    READ_DATA <= MEM_ARRAY_DATA(to_integer(unsigned(MEM_ADDRESS)));
END Memory;