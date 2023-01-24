library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
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
    begin
        rstn <= '1';
        
        wait for 140 ns;
        holdn <= '1';
        if (control = 7) then
            control := 0;
            else
                control := control + 1;
        end if;
        ctrl <= conv_std_logic_vector(control, ctrl'length);
        op1 <= conv_std_logic_vector(16#4#, 32);
        op2 <= conv_std_logic_vector(16#2#, 32);
        wait for 160ns;
        holdn <= '0';
        if (control = 7) then
            control := 0;
            else
                control := control + 1;
        end if;
        ctrl <= conv_std_logic_vector(control, ctrl'length);
        op1 <= conv_std_logic_vector(0, 32);
        op2 <= conv_std_logic_vector(0, 32);
        wait for 160ns;
        holdn <= '1';
        if (control = 7) then
            control := 0;
            else
                control := control + 1;
        end if;
        ctrl <= conv_std_logic_vector(control, ctrl'length);
        op1 <= conv_std_logic_vector(45, 32);
        op2 <= conv_std_logic_vector(2, 32);
        wait for 160ns;
        holdn <= '0';
        if (control = 7) then
            control := 0;
            else
                control := control + 1;
        end if;
        ctrl <= conv_std_logic_vector(control, ctrl'length);
        op1 <= conv_std_logic_vector(0, 32);
        op2 <= conv_std_logic_vector(0, 32);
        wait for 160ns;
        holdn <= '1';
        if (control = 7) then
            control := 0;
            else
                control := control + 1;
        end if;
        ctrl <= conv_std_logic_vector(control, ctrl'length);
        op1 <= conv_std_logic_vector(65536, 32);
        op2 <= conv_std_logic_vector(2, 32);
        wait for 160ns;
        holdn <= '0';
        if (control = 7) then
            control := 0;
            else
                control := control + 1;
        end if;
        ctrl <= conv_std_logic_vector(control, ctrl'length);
        op1 <= conv_std_logic_vector(0, 32);
        op2 <= conv_std_logic_vector(0, 32);
        wait for 20 ns;
    end process mul_signals;


    UUT : entity gaisler.mul64 generic map  (
            split => 1
        ) port map (
            clk, rstn, holdn, ctrl, op1, op2, nready, mresult, testen, testrst
        );
      
end tb ;








