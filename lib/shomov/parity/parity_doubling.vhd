library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package parity_doubling is

  type doubling_vector is array( integer range <> ) of std_ulogic;

  function xor_reduce(d_in : in std_ulogic_vector) return std_ulogic;
  function get_doubl_data( data : doubling_vector ) return std_ulogic_vector;
  function set_doubl_data( data : std_ulogic_vector ) return doubling_vector;
  
end package;

package body parity_doubling is

    function xor_reduce(d_in : in std_ulogic_vector) return std_ulogic is
        variable result : std_ulogic := '1';
    begin
        for i in d_in'range loop
            result := result xor d_in(i);
        end loop;
        return result;
    end function;

    function get_doubl_data( data : doubling_vector ) return std_ulogic_vector is
        variable result : std_ulogic_vector((data'high+1)/2-1 downto 0);
    begin
        if xor_reduce(std_ulogic_vector(data((data'high+1)/2-1 downto 0))) = data(-1) then
            result := std_ulogic_vector(data((data'high+1)/2-1 downto 0));
        else
            result := std_ulogic_vector(data(data'high downto (data'high+1)/2));
        end if;

        return result;
    end function;

    function set_doubl_data( data : std_ulogic_vector ) return doubling_vector is
        variable result : doubling_vector(data'length*2-1 downto -1);
    begin
        result(-1) := xor_reduce(data);
        for i in 0 to data'high loop
            result(i) := data(i);
            result(i+data'length) := data(i);
        end loop;
        return result;
    end function;

    
end package body;

