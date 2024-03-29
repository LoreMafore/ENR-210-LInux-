set term png
set title "Temperature in Drying Concrete"
set grid 
set key center left 
set xdata time 
set timefmt "%y-%m" 
set format x "%y-%m" 
set xtics  
set xtics rotate by -45 
plot "averages.dat" u (timecolumn(1, "%y-%m %H:%M")):3 w l lw 2 t "Temperature r=0 in",\
"averages.dat" u (timecolumn(1, "%y-%m %H:%M")):5 w l lw 2 t "Temperature r=1 in",\
"averages.dat" u (timecolumn(1, "%y-%m %H:%M")):7 w l lw 2 t "Temperature r=2 in"
