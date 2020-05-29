set terminal postscript color eps enhanced "Helvetica" 20
#set key at 1,5.5
#unset key 
set key box lw 2
#set key borderwidth 4
set xlabel "U"  #offset 0,-1.,0 font "Helvetica,30"; 
set ylabel  "T" #offset -2,0,0  font "Helvetica,30";
#set xrange[0:2*pi];
set tics font ", 30"
set border linewidth 2

plot   for[i=0:0] 'Khmf_diff_amp.dat' every:::i::i u 2:4 w p ps 1 pt 7 title "a=0.01"
replot for[i=1:1] 'Khmf_diff_amp.dat' every:::i::i u 2:4 w p ps 1 pt 7 title "a=0.10"
replot for[i=2:2] 'Khmf_diff_amp.dat' every:::i::i u 2:4 w p ps 1 pt 7 title "a=0.50"
replot for[i=3:3] 'Khmf_diff_amp.dat' every:::i::i u 2:4 w p ps 1 pt 7 title "a=0.80"
replot for[i=4:4] 'Khmf_diff_amp.dat' every:::i::i u 2:4 w p ps 1 pt 7 title "a=1.00"
replot for[i=5:5] 'Khmf_diff_amp.dat' every:::i::i u 2:4 w p ps 1 pt 7 title "a=1.50"
replot for[i=6:6] 'Khmf_diff_amp.dat' every:::i::i u 2:4 w p ps 1 pt 7 title "a=2.00"
set output 'Diff_amp_M.eps'
replot for[i=7:7] 'Khmf_diff_amp.dat' every:::i::i u 2:4 w p ps 1 pt 7 title "a=5.00"
