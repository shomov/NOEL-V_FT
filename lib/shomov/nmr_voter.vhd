--  Copyright (C) 2023, Mikhail Shomov
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; version 2.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program; if not, write to the Free Software
--  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
-----------------------------------------------------------------------------  

library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.std_logic_arith.all;


entity nmr_voter is                   
   generic (
    N_reserving     : integer := 3;
    io_ports        : integer := 33
    );
	port(
        data_i      : in    std_logic_vector((N_reserving*io_ports)-1 downto 0);
        data_o      : out   std_logic_vector(io_ports-1 downto 0)
	);
end nmr_voter;

architecture voter of nmr_voter is
begin

    n_reserv : case N_reserving generate
        when 3 =>
            data_o <=   ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)));
        when 5 =>
            data_o <=   ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports))) or 
                        ((data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)));

        when 7 =>
            data_o <=   ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((1*io_ports)-1 downto (1-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((2*io_ports)-1 downto (2-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports))) or 
                        ((data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((3*io_ports)-1 downto (3-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports))) or 
                        ((data_i((4*io_ports)-1 downto (4-1)*io_ports)) and (data_i((5*io_ports)-1 downto (5-1)*io_ports)) and (data_i((6*io_ports)-1 downto (6-1)*io_ports)) and (data_i((7*io_ports)-1 downto (7-1)*io_ports)));

        when others =>
            data_o <=  conv_std_logic_vector(0, data_o'length);
    end generate;
end voter;




