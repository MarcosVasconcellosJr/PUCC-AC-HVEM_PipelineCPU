LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY mem IS
    GENERIC (
        N : INTEGER := 8; -- Size of instruction (bits)
        M : INTEGER := 4); -- Size of memory block (array) to store a word
    PORT (
        CPU_CLOCK, MEM_WRITE : IN STD_LOGIC; -- Memory write and CPU_CLOCK
        MEM_ADDRESS : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0); -- Memory address
        WRITE_DATA : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0); -- Write data
        READ_DATA : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)); -- Read data
END mem;

-- This architecture implements a position of memory
-- It will be the base memory to implement all other CPU memories
ARCHITECTURE Memory OF mem IS
    -- A 4 position memory array containing an 8 bits array (1 byte) in each position
    TYPE MEM_ARRAY IS ARRAY (0 TO M - 1) OF STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL MEM_ARRAY_DATA : MEM_ARRAY;
BEGIN
    -- Each clock event we verify if we have a mem write request
    PROCESS (CPU_CLOCK)
    BEGIN
        IF (CPU_CLOCK' event AND CPU_CLOCK = '1') THEN
            -- If we have a mem write request we copy the data to the right memory address
            IF (MEM_WRITE = '1') THEN
                MEM_ARRAY_DATA(to_integer(unsigned(MEM_ADDRESS))) <= WRITE_DATA(8 DOWNTO 0) & WRITE_DATA(15 DOWNTO 9) & ;
            END IF;
        END IF;
    END PROCESS;
    READ_DATA <= MEM_ARRAY_DATA(to_integer(unsigned(MEM_ADDRESS))) &
        MEM_ARRAY_DATA(to_integer(unsigned(MEM_ADDRESS)) + 1) &
        MEM_ARRAY_DATA(to_integer(unsigned(MEM_ADDRESS)) + 2) &
        MEM_ARRAY_DATA(to_integer(unsigned(MEM_ADDRESS)) + 3);
END Memory;
-- 000000000000 && INST