# run -all
# quit


set iter 0;
set success 0;

set fileName [lindex probe.txt 0]
set fptr [open $fileName r];
set contents [read -nonewline $fptr];
close $fptr;
set splitCont [split $contents "\n\r"];

    # run 40us;
    # checkpoint hello; #optional
    # restart;
        # add wave -position insertpoint sim:/testbench/clk;

foreach sig_line $splitCont {
    if {[regexp {([._\-:a-z0-9\/\(\)]+) ([0-9]+)} $sig_line -> signal time]} {
        puts "this $sig_line"
        set detect 0;
        add wave -position insertpoint $signal;
      
        when -fast { $now = 4.9ms && sim:/testbench/cpu/core0/gpio_o(0) = '1' && sim:/testbench/cpu/core0/gpio_o(0) = '1' } {
            if { $detect == 0 } {
                set detect 1;
                incr success;
            }
        }
        # restore hello; #optional
        force -deposit $signal [examine ~$signal] "@ $time ns"
        # run 4.88ms;
        run 5ms;
        # stop;
        restart;
    } else {
        puts "wrong $sig_line"
    }
    incr iter
}

echo "$success/$iter"

# quit;

# run -all
