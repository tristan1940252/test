#!bin\bash
# filename: qu2.sh
# Description: Menu offrant plusieurs choix d'action
# Arguments: Aucun
# Auteur: Tristan Brault Ouellette
# Variable modifiable: Choix est le choix d'action de l'utilisateur
#################################

(( loop= 1 ))
while [[ $loop -eq 1 ]]; do
(( loop =2 ))
read -p "a) apt-get install
b) apt-get upgrade
c) apt-get dist-upgrade
d) apt-get clean
e) quitter
Choisissez lettre: " choix
if [[ -n $choix ]]; then
    if [[ $choix == "a" ]]; then
    yes | apt-get install $1
    elif [[ $choix == "b" ]]; then
    yes | apt-get upgrade $1
    elif [[ $choix == "c" ]]; then
    yes | apt-get dist-upgrade $1
    elif [[ $choix == "d" ]]; then
    yes | apt-get clean $1
    elif [[ $choix == "e" ]]; then
    echo "Bye"
    else echo "Faites un choix valide (a,b,c,d,e)"; (( loop=1 ));
    fi
else echo "Faites un choix"; (( loop=1 ));
fi
done
