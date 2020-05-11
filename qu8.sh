#!/bin/bash/
# filename: qu8.sh
# Description: Trouve les fichiers ayant le meme nom
# Arguments: Aucun
# Auteur: Tristan Brault Ouellette
# Variable modifiable: Aucune
#################################

> sortie9.txt
for u in $PWD/*;do
j=$(find . -type f -name ${u##*/} -printf "%p-")

IFS='-'

read -ra array <<< "$j"

if [[ ${#array[@]} -gt 1 ]]; then
	echo " " >> sortie9.txt
	echo "${u##*/}:" >> sortie9.txt
	for i in "${array[@]}"; do
		echo "$i" >> sortie9.txt
	done
fi
done