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
library shomov;
use shomov.all;


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
    signal nready   :   std_logic_vector(2 downto 0);
    type   tmr_out_word is array (0 to 2) of wordx;
    signal mresult : tmr_out_word;
    -- signal mresult  :   wordx;
    signal testen   :   std_ulogic := '0';
    signal testrst  :   std_ulogic := '1';

    signal mul_res  :   std_logic_vector((3+3*wordx'length)-1 downto 0);
    signal mul_fin  :   std_logic_vector((1+wordx'length)-1 downto 0);

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
        -- stop;

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




    -- mr: for j in 1 to 3 generate
    --     UUT(j) : entity gaisler.mul64 port map (
    --         clk, rstn, holdn, ctrl, op1, op2, nready(j), mresult(j), testen, testrst
    --     );
    -- end generate mr;

    g0: for j in 0 to 2 generate all_mul64: entity gaisler.mul64 
        port map (clk, rstn, holdn, ctrl, op1, op2, nready(j), mresult(j), testen, testrst);
    end generate;
    
    mul_res <= nready(0) & mresult(0) & nready(1) & mresult(1) & nready(2) & mresult(2);

    UUT : entity shomov.nmr_voter generic map (
            N_reserving => 3,
            io_ports => (1+wordx'length)
        )
        port map(
            -- clk    => clk,
            data_i => mul_res,
            data_o => mul_fin
        );
end tb ;








