--  Some
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library gaisler;
use gaisler.noelv.all;
use gaisler.noelvint.all;
library std;
use std.env.all;


entity tb_mul is
	-- port(
       
	-- );
end tb_mul;

architecture tb of tb_mul is
    signal clk      :   std_ulogic;       
    signal rstn     :   std_ulogic;
    signal holdn    :   std_ulogic;
    signal ctrl     :   std_logic_vector(2 downto 0);
    signal op1      :   wordx;
    signal op2      :   wordx;
    signal nready   :   std_ulogic;
    signal mresult  :   wordx;
    signal testen   :   std_ulogic := '0';
    signal testrst  :   std_ulogic := '1';
begin

    clk_generation : process
    begin
        clk <= '1';
        wait for 20 ns;
        clk <= '0';
        wait for 20 ns;
    end process clk_generation;

    STOP_PROC : process
    begin
        wait for 200000 ns;
        report "Calling 'finish'";
        stop;
    end process;



    UUT : entity gaisler.mul64 port map (clk, rstn, holdn, ctrl, op1, op2, nready, mresult, testen, testrst);
      
end tb ;








