# TCL Generator with fault injections
# Model/Questa Sim syntax
# Mikhail Shomov 2023
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

# file    - path
# area    - fault area on ns (1 - start, 2 - end)
# faults  - faults on area
# signals - enumeration of signals (vsim name dimension, vsim name dimension...)

# Example: tcl_gen ("faults.tcl", [0 1000], 3, "/testbench/cpu/core0/noelv0/cpuloop(0)/core/u0/mgen/mul0/ctrl 3, /testbench/cpu/core0/noelv0/cpuloop(0)/core/u0/mgen/mul0/op1 32")

function tcl_gen (file, area, faults, signals)
  FAULT_LENGTH = 10; #ns

  [signal, dimension] = strread (signals, "%s %d");

  fid = fopen(file, "w");

  for f = 1:faults
      for s = 1:rows(signal)
        sig_line = randi([0, dimension(s)-1]);
        sig_name = sprintf("%s(%d)", char(signal(s)), sig_line);
        fprintf(fid, "when { $now = %dns } {\n", randi([area(1), area(2)]));
        fprintf(fid, "\tforce -drive %s %d 0 -cancel %dns\n", sig_name, randi([0, 1]), FAULT_LENGTH);
        fprintf(fid, "}\n");
      endfor
  endfor
  fprintf(fid, "\nrun -all\n");

  fflush(fid);
  fclose(fid);
endfunction








