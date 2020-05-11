#!/bin/bash/
# filename: qu3.sh
# Description: Parcourt les fichiers html et affiche les 10 premieres lignes
# Arguments: Répertoire choisie
# Auteur: Tristan Brault Ouellette
# Variable modifiable: i = fichiers en cours
#################################

> ./entete.txt
for i in $1/*; do
if [[ $i =~ ".html" ]]; then
    echo -e "\n${i##*/}:" >> ./entete.txt
    head -10 $i >> ./entete.txt
fi
done