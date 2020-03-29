list="Italia"
while read regione
do
  list+=" \"$regione\""
done < <(cut -d',' -f4 data/dati-regioni/dpc-covid19-ita-regioni-latest.csv | sed -n '2,$p')

while read provincia
do
  list+=" \"$provincia\""
done < <(cut -d',' -f6 data/dati-province/dpc-covid19-ita-province-latest.csv | sed '1d;/In fase di definizione/d;p')


complete -W "$list" -P\" -S\" covid19
