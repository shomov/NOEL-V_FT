
##tcl_gen2(10000, 109501, 120000)

pkg load io
function tcl_gen2 (iter, start, finish)

  modules = glob ("*.csv");


  for m = 1:length(modules);
    fid = fopen(strcat(strtok(modules(m),'.'), ".fin"){1}, "w");
    signals = csv2cell (modules(m), ";");
      for i = 0:iter-1
        sig_num = randi([1, length(signals)]);
        sig_name = signals(sig_num);
        if (sig_num == length(signals))
          sig_name = signals(sig_num);
        endif
        k = 1;
        while (sig_num + k < length(signals)-1 && strfind(char(signals(sig_num+k)), char(signals(sig_num+k-1))))
          sig_name = signals(sig_num+k);
          if (k < length(signals)-1)
            k = k + 1;
          endif
        endwhile
        fprintf(fid, "%s %d\n", char(sig_name), randi([start, finish]));
      endfor
    fflush(fid);
    fclose(fid);
  endfor

endfunction













