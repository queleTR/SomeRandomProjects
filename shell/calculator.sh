#!/bin/bash


# A U F G A B E 
# Schreibe ein Skript dem drei Zahlen übergeben werden. Die Zahlen sollen zwischen 5 und 25 liegen. Speichere die übe>
# werden. Prüfe die korrekte Anzahl der übergebenen Argumente. Wenn die erste Zahl kleiner als die zweite Zahl ist, m>
# Wenn das Ergebnis der Addition größer als 40 ist multipliziere das Ergebnis mit der dritten Zahl

int1=$1
int2=$2
int3=$3
ergebnis=0
if [ "$#" -ne 3 ]; then
echo "Es müssen genau 3 Argumente übergeben werden."
exit 1
fi


if (($1 >= 5 && $1 <= 25) && ($2 >= 5 && $2 <= 25) && ($3 >= 5 && $3 <= 25)); then
        echo "Zahlen müssen zwischen 5 und 25 liegen."
exit 1
fi


if [ "$int1" -lt "$int2" ]; then
ergebnis=$((int1 * int2))
else
ergebnis=$((int1 * int2))
fi

if [ "$int1" < "$int2" ]; then
ergebnis=$((int1 * int2))
else
ergebnis=$((int1 + int2))
fi

if [ "$ergebnis" > 40 ]; then
ergebnis=$((ergebnis * int3))
fi


echo "Das Ergebnis ist: $ergebnis"

