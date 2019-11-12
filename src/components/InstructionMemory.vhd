LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY inst_mem IS
    GENERIC ();
    PORT ();
END inst_mem;

ARCHITECTURE memory OF inst_mem IS
    --mem component
    COMPONENT mem
        PORT (
            CPU_CLOCK, MEM_WRITE : IN STD_LOGIC;
            MEM_ADDRESS : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            WRITE_DATA : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
            READ_DATA : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0));
    END COMPONENT;

BEGIN
    PROCESS (CPU_CLOCK)
    BEGIN

    MEM_ROW_DATA : mem PORT MAP (CPU_CLOCK);

        IF (CPU_CLOCK' event AND CPU_CLOCK = '1') THEN

        END IF;
    END PROCESS;

END memory;