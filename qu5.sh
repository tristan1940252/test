#!/bin/bash/
# filename: qu5.sh
# Description: Regarde si des nombres aléatoires sont des id de processus
# Arguments: Aucun
# Auteur: Tristan Brault Ouellette
# Variable modifiable: Le nombres de nombres aléatoires 
#################################

array=()
erreur="false"
read -p "Nombres d'éléments à ajouter dans l'array? (chaîne vide pour terminer) " nb
    if [[ -z $nb ]]; then
        erreur= "true"
	echo "vide"
    fi
    if [[ ! ( $nb =~ [0-9]+ ) ]]; then
        erreur= "true"
	echo "chiffre"
    fi
if [[ $erreur -eq "false"  ]]; then
    for ((i=0; i < $nb; i++)); do
        array+=($RANDOM)
    done

	for i in ${array[@]}; do
	j=$(ps -o pid= $i)
	if [[ !  ( -z $j ) ]]; then
	echo "$i est un processus"
	else echo "$i n'est pas un processus"
	fi
done
fi