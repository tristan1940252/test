#!/usr/bin/bash
# filename: qu1.sh
# Description: Trouve le plus gros nombre de la liste d'argument
# Arguments: plusieurs chiffres
# Auteur: Tristan Brault Ouellette
# Variable modifiable: i est le chiffre testé, max est le plus gros chiffre et min le plus petit
#################################

for i in $@; do
    if [[ $i =~ [0-9]+ ]]; then
        if [[ -z $max ]]; then
        max=$i
        min=$i
        fi
        if (( $i > $max )); then max=$i 
        elif (( $i < $min )); then min=$i
        fi
    else echo "Rentrer des chiffres"
    fi
done
echo "Le plus gros: $max, le plus petit: $min"