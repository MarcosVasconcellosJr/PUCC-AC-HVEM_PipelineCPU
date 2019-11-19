library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package allRegisterType is
    type allRegister is array(0 to 31) of std_logic_vector (0 TO 31);
    TYPE REGISTER_TYPE IS ARRAY(0 TO 31) OF STD_LOGIC_VECTOR(0 TO 31);
end package allRegisterType;