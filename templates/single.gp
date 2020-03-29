set terminal X11 3 title "#ZONE#"
set title "#ZONE#"
plot "#FILE#" using 1:2 ti "Nuovi positivi",\
     '' u 1:2:2 w labels notitle offset char 1,0,\
     '' u 1:3 ti "Totale casi",\
     '' u 1:3:3 w labels notitle offset char -1,0