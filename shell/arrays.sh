# Zuweisung 
TIERE[0]=Hund
TIERE[1]=Katze
TIERE[2]="Eine Maus"
TIERE[3]=Trundle

#Indexzugriff

echo ${TIERE[2]}

#Anzahl belegter Positionen:
echo ${#TIERE[*]}


#Typische Abarbeitung:
for i in "${TIERE[@]}"; do
        echo $i
done

#Komplettzuweisung (bash)
TIERE=(Hund Katze "Eine Maus")

#Komplettzuweisung (ksh)
set -A TIERE Hund Katze "Eine Maus"

#Kopie des arrays (bash) 
VIECHER="${TIERE[@]}")
