set term png
set title "Relative Humidity in Drying Concrete"
set grid 
set key center left 
set xdata time 
set timefmt "%y-%m
set format x "%y-%m" 
set xtics  
set xtics rotate by -45 
plot "averages.dat" u (timecolumn(1, "%y-%m %H:%M")):2 w l lw 2 t "Humidity r=0 in",\
"averages.dat" u (timecolumn(1, "%y-%m %H:%M")):4 w l lw 2 t "Humidity r=1 in",\
"averages.dat" u (timecolumn(1, "%y-%m %H:%M")):6 w l lw 2 t "Humidity r=2 in"


