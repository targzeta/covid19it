set title "#ZONE# (dati al #UPDATE#)"
plot "#FILE#" using 1:2 ti "Casi",\
     '' u 1:2:2 w labels notitle offset char 1,0,\
     '' u 1:3 ti "Totale casi",\
     '' u 1:3:3 w labels notitle offset char -1,0