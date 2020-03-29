set terminal X11 0 title "#ZONE#"

set label "Totale casi: #0#" at screen 1,0.92
set label "Del totale:\nPositivi: #1# (#2#%)\nDimessi: #3# (#4#%)\nDeceduti: #5# (#6#%)" at screen 1,0.88
set label "Dei positivi:\nOspedalizzati: #7# (#8#%)\nIsolamento: #9# (#10#%)" at screen 1,0.77
set label "Degli ospedalizzati:\nRicoverati: #11# (#12#%)\nTerapia intensiva: #13# (#14#%)" at screen 1,0.68

set multiplot layout 1,2 title "#ZONE#"

set size 0.62,0.95
plot "#FILE#" using 1:2 ti "Nuovi positivi",\
     '' u 1:2:2 w labels notitle offset char 2,0,\
     '' u 1:3 ti "Nuovi tamponi",\
     '' u 1:3:3 w labels notitle offset char 2,0

set size 0.42,0.95
set origin 0.58,0
set label "* rapporto in percentuale tra\n  positivi e tamponi" at screen 1,0.1
plot "#FILE#" u 1:4 ti "Incremento giornaliero*",\
     '' u 1:4:4 w labels notitle offset char 1,0
unset multiplot