#!/bin/bash/
# filename: qu4.sh
# Description: pour chaque répertoire situé sous le répertoire actuel, crée le fichier index.html avec le contenu ($content)
# Arguments: Aucun
# Auteur: Tristan Brault Ouellette
# Variable modifiable: i = fichiers enfants
#################################

content="<html>\n<head>\n<title>Empty</title>\n</head>\n<body>\nFichier squelette\n</body>\n</html>"
for i in $PWD/*; do
	if [[ -d $i ]]; then
		echo -e $content > $i/index.html
	fi
done