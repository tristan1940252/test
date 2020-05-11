#!/bin/bash/
# filename: qu7.sh
# Description: Convertis les images en .jpg de taille souhaité 
# Arguments: 1= le répertoire a traiter, 2= taile de l'image, 3= le répertoire des nouvelles images
# Auteur: Tristan Brault Ouellette
# Variable modifiable: Arguments + Nb d'images a traiter
#################################

for i in $1/*; do
if [[ $i == *.png || $i == *.gif || $i == *.jpg ]]; then
echo $i en traitement...
convert $i -resize $2x$2 $3/${i%.*}.jpg
fi
done