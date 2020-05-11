#!/bin/bash/
# filename: qu6.sh
# Description: Trie par ordre de taille les fichiers d'un répertoire
# Arguments: Aucun
# Auteur: Tristan Brault Ouellette
# Variable modifiable: Aucune
#################################

ls --sort=size -s1 $(find -type f) > log.txt