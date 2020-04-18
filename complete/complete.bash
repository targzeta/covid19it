#!/bin/bash

DATA_DIR=data
FILE_REGIONI=${DATA_DIR}/dati-regioni/dpc-covid19-ita-regioni.csv
FILE_PROVINCE=${DATA_DIR}/dati-province/dpc-covid19-ita-province.csv
COMMAND=covid19it

if [ ! -f $FILE_REGIONI -o ! -f $FILE_PROVINCE ]
then
  echo "Dati non presenti. Eseguire $COMMAND almeno una volta!"
  return
fi

list="Italia"
while read regione
do
  list+=" \"$regione\""
done < <(cut -d',' -f4 data/dati-regioni/dpc-covid19-ita-regioni-latest.csv | sed -n '2,$p')

while read provincia
do
  list+=" \"$provincia\""
done < <(cut -d',' -f6 data/dati-province/dpc-covid19-ita-province-latest.csv | sed '1d;/In fase di definizione/d;p')


complete -W "$list" -P\" -S\" $COMMAND
