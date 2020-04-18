set multiplot layout 4,2 title "#ZONE# (dati al #UPDATE#)"

set label "Totale casi: #0#" at screen 1,0.95
set label "Del totale:\nPositivi: #1# (#2#%)\nDimessi: #3# (#4#%)\nDeceduti: #5# (#6#%)" at screen 1,0.91
set label "Dei positivi:\nOspedalizzati: #7# (#8#%)\nIsolamento: #9# (#10#%)" at screen 1,0.80
set label "Degli ospedalizzati:\nRicoverati: #11# (#12#%)\nTerapia intensiva: #13# (#14#%)" at screen 1,0.71

set label "* %(casi/tamponi)" at screen 1,0.07
set label "** %(positivi/tamponi)" at screen 1,0.05

set origin 0,0.72
set size 0.61,0.26
plot '#FILE#' u 1:6 ti "Casi" lt rgb "#ff8c00",\
     '' u 1:6:6 w labels notitle offset char 2,0

set origin 0,0.48
set size 0.61,0.26
plot '#FILE#' using 1:5 ti "Positivi" lt rgb "#000080",\
     '' u 1:5:5 w labels notitle offset char 2,0,

set origin 0,0.24
set size 0.61,0.26
plot '#FILE#' u 1:3 ti "Dimessi" lt rgb "#228b22",\
     '' u 1:3:3 w labels notitle offset char 2,0

set origin 0,0
set size 0.61,0.26
plot '#FILE#' u 1:4 ti "Deceduti" lt rgb "#a52a2a",\
     '' u 1:4:4 w labels notitle offset char 2,0

set origin 0.57,0.72
set size 0.45,0.26
plot '#FILE#' u 1:8 ti "Incremento casi*" lt rgb "#ff8c00",\
     '' u 1:8:8 w labels notitle offset char 2,0

set origin 0.57,0.48
set size 0.45,0.26
plot '#FILE#' u 1:7 ti "Incremento positivi**" lt rgb "#000080",\
     '' u 1:7:7 w labels notitle offset char 2,0

set origin 0.57,0
set size 0.45,0.5
plot '#FILE#' u 1:2 ti "Tamponi",\
     '' u 1:2:2 w labels notitle offset char 2,0

unset multiplot