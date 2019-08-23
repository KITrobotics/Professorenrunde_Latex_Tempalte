#!/bin/bash

input="03_Adressen_Professorenrunde.csv"
output="../latex_adressen_professorenrunde.tex"

echo "" > $output

while IFS=";" read -r name anrede titel vorname hochschule institut lehrstuhl campus gebaeude raum strasse plz ort hauspost
do
    address="$hochschule\\\\$institut\\\\$titel $vorname $name"
    if [ "$hauspost" == "X" ]
    then
        address="$address\\\\Campus $campus, Geb. $gebaeude, Raum $raum\\\\-- Hauspost --"
    else
        address="$address\\\\$strasse\\\\$plz $ort"
    fi
    anrede_suffix="er"
    if [[ $anrede == Frau* ]]
    then
        anrede_suffix="e"
    fi

    echo "\profadddress{$address}{Sehr geehrt$anrede_suffix $anrede $name}{$titel $vorname $name\\\\$institut}" >> $output
done < <(tail -n +11 $input)
