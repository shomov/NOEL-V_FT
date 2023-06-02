library ieee;
use ieee.std_logic_1164.all;

package nmr_common is

    function tmr_voter_vector (
        a    : in std_ulogic_vector;
        b    : in std_ulogic_vector;
        c    : in std_ulogic_vector
    ) return std_ulogic_vector;

    function tmr_voter_vector (
        a    : in std_logic_vector;
        b    : in std_logic_vector;
        c    : in std_logic_vector
    ) return std_logic_vector;

    function tmr_voter (
        a    : in std_ulogic;
        b    : in std_ulogic;
        c    : in std_ulogic
    ) return std_ulogic;

    function tmr_has_error (
        a    : in std_ulogic;
        b    : in std_ulogic;
        c    : in std_ulogic
    ) return boolean;

    function tmr_vector_has_error (
        a    : in std_ulogic_vector;
        b    : in std_ulogic_vector;
        c    : in std_ulogic_vector
    ) return boolean;

end;

package body nmr_common is

    function tmr_voter_vector (
        a    : in std_ulogic_vector;
        b    : in std_ulogic_vector;
        c    : in std_ulogic_vector
        )
        return std_ulogic_vector is
        variable res : std_ulogic_vector(a'length-1 downto 0);
    begin
        for i in 0 to res'length-1 loop
            res(i) :=   (a(i) and b(i)) or
                        (b(i) and c(i)) or
                        (a(i) and c(i));
        end loop;
        return res;
    end;
    function tmr_voter_vector (
        a    : in std_logic_vector;
        b    : in std_logic_vector;
        c    : in std_logic_vector
        )
        return std_logic_vector is
        variable res : std_logic_vector(a'length-1 downto 0);
    begin
        for i in 0 to res'length-1 loop
            res(i) :=   (a(i) and b(i)) or
                        (b(i) and c(i)) or
                        (a(i) and c(i));
        end loop;
        return res;
    end;

    function tmr_voter (
        a    : in std_ulogic;
        b    : in std_ulogic;
        c    : in std_ulogic
        )
        return std_ulogic is
        variable res : std_ulogic;
    begin
        res :=  (a and b) or
                (b and c) or
                (a and c);
        return res;
    end;

    function tmr_has_error (
        a    : in std_ulogic;
        b    : in std_ulogic;
        c    : in std_ulogic
        )
    return boolean is
    begin
        return (a /= b) or (a /= c) or (b /= c);
    end;


    function tmr_vector_has_error (
        a    : in std_ulogic_vector;
        b    : in std_ulogic_vector;
        c    : in std_ulogic_vector
        )
    return boolean is
    begin
        return (a /= b) or (a /= c) or (b /= c);
    end;

end;
