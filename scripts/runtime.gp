reset
set title 'Wall-clock time - using clock_gettime'
set xlabel 'Number of times'
set ylabel 'Time (sec)'
set style data lines
set term png enhanced font 'Verdana,10'
set datafile separator ","
set output 'runtime.png'

plot[:][:]'result_clock_gettime.csv' using 1:2 title 'Baseline', \
'' using 1:3 title 'OpenMP(2 threads)', \
'' using 1:4 title 'OpenMP(4 threads)', \
'' using 1:5 title 'AVX', \
'' using 1:6 title 'AVX + Unroll looping'
