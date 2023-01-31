library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_arith.all;
library std;
use std.env.all;
library shomov;
use shomov.all;


entity tb_mul is
end tb_mul;

architecture tb of tb_mul is
    signal clk      :   std_ulogic;       
    signal rstn     :   std_ulogic;


begin

    clk_generation : process
    begin
        clk <= '0';
        wait for 20 ns;
        clk <= '1';
        wait for 20 ns;
    end process clk_generation;

    STOP_PROC : process
    begin
        wait for 200000 ns;
        report "Calling 'finish'";
        stop;
    end process;


end tb;
