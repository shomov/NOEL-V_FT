library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- library grlib;
-- use grlib.stdlib.log2;



package encoder is
-- TYPES
    type intarr is array (integer range <>) of integer; --integer -> positive

-- FUNCTIONS
    function log2_sh (n: integer) return natural;
    function control_bits_num (len: integer) return positive;
    function control_bits_pos (len: integer) return intarr;
    function get_parity(cntr_bit: integer; data: std_logic_vector) return std_logic;
    -- function encode (data: std_logic_vector) return std_logic_vector;

end package encoder;

package body encoder is
    function log2_sh(n : in integer) return natural is
        variable i : natural := 0;
    begin
        while (2**i <= n) loop
            i := i + 1;
        end loop;
        return i;
    end log2_sh;

    function control_bits_num(len: integer) return positive is
        variable cnt: positive := 2;
        variable v: integer;
    begin
        while (v < len) loop
            cnt := cnt + 1;
            v := 2**cnt - cnt - 1;
        end loop;
        return cnt;
    end function;

    function control_bits_pos(len: integer) return intarr is
        variable res: intarr(0 to control_bits_num(len)-1);
        variable j: integer := 0;
    begin
        for i in 0 to log2_sh(len) loop
            if (2**i <= len) then
                res(j) := 2**i;
            end if;
        end loop;
        return res;
    end function;

    function get_parity(cntr_bit: integer; data: std_logic_vector) return std_logic is
        variable res: std_logic := '0';
    begin
        for i in 0 to data'length-1 loop
            if i >= cntr_bit and i < ((i/cntr_bit+1)*cntr_bit) then
                res := res xor data(i);
            end if;
        end loop;
        return res;
    end function;
    

end package body;
