library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_arith.all;
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
    signal holdn    :   std_ulogic := '0';
    signal ctrl     :   std_logic_vector(2 downto 0) := ext("0", 3);
    signal op1      :   wordx := ext("0", 32);
    signal op2      :   wordx := ext("0", 32);
    signal nready   :   std_ulogic;
    signal mresult  :   wordx;
    signal testen   :   std_ulogic := '0';
    signal testrst  :   std_ulogic := '1';

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

    mul_signals : process
    variable control : natural range 0 to 7;
    variable seed1 : positive := 1;
    variable seed2 : positive := 2;
    variable seed3 : positive := 3;
    variable seed4 : positive := 4;
    variable rand1 : real;
    variable rand2 : real;
    begin
        rstn <= '1';
        
        wait for 60 ns;
        holdn <= '1';
        if (control = 7) then
            control := 0;
            else
                control := control + 1;
        end if;
        ctrl <= conv_std_logic_vector(control, ctrl'length);
        uniform(seed1, seed2, rand1);
        uniform(seed3, seed4, rand2);
        op1 <= conv_std_logic_vector(integer(floor(rand1 * (8000.0 * 65535.0))), op1'length);
        op2 <= conv_std_logic_vector(integer(floor(rand2 * (8000.0 * 65535.0))), op2'length);
       
        wait for 100 ns;
        holdn <= '0';
        ctrl <= conv_std_logic_vector(0, ctrl'length);
        op1 <= conv_std_logic_vector(0, op1'length);
        op2 <= conv_std_logic_vector(0, op2'length);
    end process mul_signals;


    UUT : entity gaisler.mul64 generic map  (
            split => 1
        ) port map (
            clk, rstn, holdn, ctrl, op1, op2, nready, mresult, testen, testrst
        );
      
end tb ;








