set  stages  {fetch decode regacc execute memory exception writeback}

set noel_ready 109500
run $noel_ready;
checkpoint hello;

foreach  file_fault  $stages  {
    set outfile [open "results/$file_fault.fout" w+]
    set iter 0;
    set success 0;
    set fileName [lindex "faults/$file_fault.fout" 0]
    set fptr [open $fileName r];
    set contents [read -nonewline $fptr];
    close $fptr;
    set splitCont [split $contents "\n\r"];
    foreach sig_line $splitCont {
        if {[regexp {([._\-:a-z0-9\/\(\)]+)\s+([0-9]+)} $sig_line -> signal time]} {
            restore hello;
            run @[expr { $time }];
            force -deposit $signal [examine ~$signal]
            run @[expr { $noel_ready + 15220 }];
            set gpio1 [examine /testbench/cpu/core0/gpio_o(1)]
            set gpio0 [examine /testbench/cpu/core0/gpio_o(0)]
            if { $gpio1 == 1 && $gpio0 == 1 } {
                incr success;
            } else {
                puts $outfile "$signal $time"
            }
            incr iter
        } else {
            puts "wrong $sig_line"
        }
    }
    puts $outfile "$success/$iter"
    close $outfile
}
quit;
