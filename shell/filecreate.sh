#!/bin/bash

schalter="false"
newfile=""

while getopts "ef:" opt; do
    case $opt in
    e)
        schalter="true"
        ;;
    f)
        newfile=$OPTARG
        ;;
    esac
done

newfilename=~/bin/${newfile}.sh

while [ -e "${newfilename}" ]; do
    echo "Dateiname existiert, bitte einen anderen Namen wählen" >&2
    newfile=""
    while [ -z "$newfile" ];do
     read -p "Gebe einen neuen Namen ein: " newfile
    done
    newfilename=~/bin/${newfile}.sh
done

echo "#!/bin/bash" > "$newfilename"
echo "#Der Name von der Datei: $newfile" >> "$newfilename"
chmod +x "$newfilename"

echo "Datei wurde erstellt: $newfilename"
if [[ "$schalter" == "true" ]]; then
        nano "$newfilename"
fi
exit 0 