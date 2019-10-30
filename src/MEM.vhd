LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE iee.numeric_std.ALL;

ENTITY mem IS
    GENERIC (
        N : INTEGER := 8; -- Size of instruction
        M : INTEGER := 4); -- Size of memory array
    PORT (
        clock, mem_w : in_std_logic; -- Memory write
        address : IN std_logic_vector(N - 1 DOWNTO 0); -- Memory address
        w_data : IN std_logic_vector(N - 1 DOWNTO 0); -- Write data
        r_data : OUT std_logic_vector(N - 1 DOWNTO 0)); -- Read data
END mem;

ARCHITECTURE behaviour OF mem IS
    -- A 4 position memory array containing an 8 bits array (1 byte) in each position
    TYPE mem_array IS ARRAY (0 TO M - 1) OF std_logic_vector(N - 1 DOWNTO 0);
    SIGNAL mem : mem_array;
BEGIN
    PROCESS (clock)
    BEGIN
        IF (clock event AND clock = '1') THEN
            IF (mem_w = '1') THEN
                mem(to_integer(unsigned(address))) <= w_data;
            END IF;
        END IF;
    END PROCESS;
    r_data <= mem(to_integer(unsigned(address)));
END behaviour