# run -all
# quit

set faults(0) "faults/fetch.fin"
set faults(1) "faults/decode.fin"
set faults(2) "faults/regacc.fin"
set faults(3) "faults/execute.fin"
set faults(4) "faults/memory.fin"
set faults(5) "faults/exception.fin"
set faults(6) "faults/writeback.fin"
set faults(7) "faults/csr.fin"
set faults(8) "faults/mmu.fin"
set faults(9) "faults/debugmodule.fin"
set faults(10) "faults/evt.fin"
set faults(11) "faults/cevt.fin"
set faults(12) "faults/evtirq.fin"

set result(0) "results/res_fetch.fout"
set result(1) "results/res_decode.fout"
set result(2) "results/res_reg_acc.fout"
set result(3) "results/res_execute.fout"
set result(4) "results/res_memory.fout"
set result(5) "results/res_exception.fout"
set result(6) "results/res_writeback.fout"
set result(7) "results/res_csr.fout"
set result(8) "results/res_mmu.fout"
set result(9) "results/res_debugmodule.fout"
set result(10) "results/res_evt.fout"
set result(11) "results/res_cevt.fout"
set result(12) "results/res_evtirq.fout"

run 109.5us;
checkpoint hello;

for { set file_fault 1 }  { $file_fault < [array size faults] }  { incr file_fault } {
    set outfile [open "$result($file_fault)" w+]

    set iter 0;
    set success 0;

    set fileName [lindex $faults($file_fault) 0]
    set fptr [open $fileName r];
    set contents [read -nonewline $fptr];
    close $fptr;
    set splitCont [split $contents "\n\r"];



    foreach sig_line $splitCont {
        if {[regexp {([._\-:a-z0-9\/\(\)]+)\s+([0-9]+)} $sig_line -> signal time]} {
            restore hello;
            force -deposit $signal [examine ~$signal] "@ $time ns"
            run 15220ns;
            set gpio1 [examine /testbench/cpu/core0/gpio_o(1)]
            set gpio0 [examine /testbench/cpu/core0/gpio_o(0)]
            if { $gpio1 == 1 && $gpio0 == 1 } {
                incr success;
            } else {
                puts $outfile "$signal $time"
            }
        } else {
            puts "wrong $sig_line"
        }
        incr iter
    }
    puts $outfile "$success/$iter"
    close $outfile
}



# quit;
