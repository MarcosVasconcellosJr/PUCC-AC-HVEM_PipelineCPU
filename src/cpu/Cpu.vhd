LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Cpu IS
    GENERIC (DATA_SIZE : INTEGER := 32); -- Generic data size to map in components
    PORT ();
END Cpu;

ARCHITECTURE CPU OF Cpu IS

    -- Control Unit - PORT MAP
    COMPONENT ControlUnit
        PORT (
            WB : OUT STD_LOGIC_VECTOR(0 TO 1);
            MEM : OUT STD_LOGIC_VECTOR(0 TO 2);
            EX : OUT STD_LOGIC_VECTOR(0 TO 4);
            SIGNAL_JUMP : OUT STD_LOGIC_VECTOR(0 TO 1);
            OP_CODE : IN STD_LOGIC_VECTOR(0 TO 5)
        );
    END COMPONENT;

    -- ShiftLeft - PORT MAP
    COMPONENT ShiftLeft
        PORT (
            A : IN STD_LOGIC_VECTOR (0 TO 31);
            X : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    -- ShiftLeft2_26to28 - PORT MAP
    COMPONENT ShiftLeft2_26to28
        PORT (
            A : IN STD_LOGIC_VECTOR (0 TO 25);
            X : OUT STD_LOGIC_VECTOR(0 TO 27)
        );
    END COMPONENT;

    -- Signal Extend - PORT MAP
    COMPONENT SignalExtend
        PORT (
            A : IN STD_LOGIC_VECTOR (0 TO 15);
            X : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    -- Generic2to1Mux - PORT MAP
    COMPONENT Generic2to1Mux
        PORT (
            CONTROL : IN STD_LOGIC;
            A : IN STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1);
            B : IN STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1);
            X : OUT STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1)
        );
    END COMPONENT;

    --  Generic3to1Mux - PORT MAP
    COMPONENT Generic3to1Mux
        PORT (
            JUMP_SIGNAL : IN STD_LOGIC_VECTOR (0 TO 1);
            A, B, C : IN STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1);
            X : OUT STD_LOGIC_VECTOR (0 TO DATA_SIZE - 1)
        );
    END COMPONENT;

    -- Alu - PORT MAP
    COMPONENT Alu
        PORT (
            RS_DATA : IN STD_LOGIC_VECTOR(0 TO 31);
            RT_DATA : IN STD_LOGIC_VECTOR(0 TO 31);
            ALU_CODE : IN STD_LOGIC_VECTOR(0 TO 1);
            ALU_OUT : OUT STD_LOGIC_VECTOR(0 TO 31);
            ZERO : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Data Memory - PORT MAP
    COMPONENT DataMemory
        PORT (
            ADDRESS : IN STD_LOGIC_VECTOR(0 TO 31);
            CLOCK : IN STD_LOGIC;
            MEM_WRITE : IN STD_LOGIC;
            WRITE_DATA : IN STD_LOGIC_VECTOR(0 TO 31);
            MEM_READ : IN STD_LOGIC;
            READ_DATA : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    -- InstructionMemory - PORT MAP
    COMPONENT InstructionMemory
        PORT (
            ADDRESS : IN STD_LOGIC_VECTOR(0 TO 31);
            INSTRUCTION : OUT STD_LOGIC_VECTOR(0 TO 31) := "00000000000000000000000000000000"
        );
    END COMPONENT;

    -- PCIncrement - PORT MAP
    COMPONENT PCIncrement
        PORT (
            PC : IN STD_LOGIC_VECTOR (0 TO 31);
            X : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    -- Reg_Pipe_EXMEM - PORT MAP
    COMPONENT Reg_Pipe_EXMEM
        PORT (
            CLOCK : IN STD_LOGIC;
            EXMEM_IN_ZERO : IN STD_LOGIC;
            EXMEM_IN_WB : IN STD_LOGIC_VECTOR(0 TO 1);
            EXMEM_IN_MEM : IN STD_LOGIC_VECTOR(0 TO 2);
            EXMEM_IN_RESULT_ADDER : IN STD_LOGIC_VECTOR(0 TO 31);
            EXMEM_IN_RESULT_ULA : IN STD_LOGIC_VECTOR(0 TO 31);
            EXMEM_IN_READ2 : IN STD_LOGIC_VECTOR(0 TO 31);
            EXMEM_IN_REGDST : IN STD_LOGIC_VECTOR(0 TO 4);

            EXMEM_OUT_ZERO : OUT STD_LOGIC;
            EXMEM_OUT_WB : OUT STD_LOGIC_VECTOR(0 TO 1);
            EXMEM_OUT_MEM : OUT STD_LOGIC_VECTOR(0 TO 2);
            EXMEM_OUT_RESULT_ADDER : OUT STD_LOGIC_VECTOR(0 TO 31);
            EXMEM_OUT_RESULT_ULA : OUT STD_LOGIC_VECTOR(0 TO 31);
            EXMEM_OUT_READ2 : OUT STD_LOGIC_VECTOR(0 TO 31);
            EXMEM_OUT_REGDST : OUT STD_LOGIC_VECTOR(0 TO 4)
        );
    END COMPONENT;

    -- Reg_Pipe_IDEX - PORT MAP
    COMPONENT Reg_Pipe_EXMEM
        PORT (
            CLOCK : IN STD_LOGIC;
            IDEX_IN_WB : IN STD_LOGIC_VECTOR(0 TO 1);
            IDEX_IN_MEM : IN STD_LOGIC_VECTOR(0 TO 2);
            IDEX_IN_EX : IN STD_LOGIC_VECTOR(0 TO 4);
            IDEX_IN_PC : IN STD_LOGIC_VECTOR(0 TO 31);
            IDEX_IN_READ1 : IN STD_LOGIC_VECTOR(0 TO 31);
            IDEX_IN_READ2 : IN STD_LOGIC_VECTOR(0 TO 31);
            IDEX_IN_IMED : IN STD_LOGIC_VECTOR(0 TO 31);
            IDEX_IN_RT : IN STD_LOGIC_VECTOR(0 TO 4);
            IDEX_IN_RD : IN STD_LOGIC_VECTOR(0 TO 4);
            IDEX_OUT_WB : OUT STD_LOGIC_VECTOR(0 TO 1);
            IDEX_OUT_MEM : OUT STD_LOGIC_VECTOR(0 TO 2);
            IDEX_OUT_EX : OUT STD_LOGIC_VECTOR(0 TO 4);
            IDEX_OUT_PC : OUT STD_LOGIC_VECTOR(0 TO 31);
            IDEX_OUT_READ1 : OUT STD_LOGIC_VECTOR(0 TO 31);
            IDEX_OUT_READ2 : OUT STD_LOGIC_VECTOR(0 TO 31);
            IDEX_OUT_IMED : OUT STD_LOGIC_VECTOR(0 TO 31);
            IDEX_OUT_RT : OUT STD_LOGIC_VECTOR(0 TO 4);
            IDEX_OUT_RD : OUT STD_LOGIC_VECTOR(0 TO 4)
        );
    END COMPONENT;

    -- Reg_Pipe_IFID - PORT MAP
    COMPONENT Reg_Pipe_IFID
        PORT (
            IN_PC_MAIS_4 : IN STD_LOGIC_VECTOR(0 TO 31);
            IN_INSTR_MEM : IN STD_LOGIC_VECTOR(0 TO 31);
            OUT_PC_MAIS_4 : OUT STD_LOGIC_VECTOR(0 TO 31);
            OUT_INSTR_MEM : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    -- Reg_Pipe_MEMWB - PORT MAP
    COMPONENT Reg_Pipe_MEMWB
        PORT (
            CLOCK : IN STD_LOGIC;
            MEMWB_IN_WB : IN STD_LOGIC_VECTOR(0 TO 1);
            MEMWB_IN_RESULT_ULA : IN STD_LOGIC_VECTOR(0 TO 31);
            MEMWB_IN_REGDST : IN STD_LOGIC_VECTOR(0 TO 4);
            MEMWB_IN_READ_DATA : IN STD_LOGIC_VECTOR(0 TO 31);

            MEMWB_OUT_WB : OUT STD_LOGIC_VECTOR(0 TO 1);
            MEMWB_OUT_RESULT_ULA : OUT STD_LOGIC_VECTOR(0 TO 31);
            MEMWB_OUT_REGDST : OUT STD_LOGIC_VECTOR(0 TO 4);
            MEMWB_OUT_READ_DATA : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

    -- FileRegister - PORT MAP
    COMPONENT FileRegister
        PORT (
            REGWRITE : IN STD_LOGIC;
            CLOCK : IN STD_LOGIC;
            READ_REGISTER_1 : IN STD_LOGIC_VECTOR(0 TO 4);
            READ_REGISTER_2 : IN STD_LOGIC_VECTOR(0 TO 4);
            WRITE_REGISTER : IN STD_LOGIC_VECTOR(0 TO 4);
            WRITE_DATA : IN STD_LOGIC_VECTOR(0 TO 31);
            READ_DATA_1 : OUT STD_LOGIC_VECTOR(0 TO 31);
            READ_DATA_2 : OUT STD_LOGIC_VECTOR(0 TO 31)
        );
    END COMPONENT;

END;