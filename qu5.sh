array=()

while read -p "Nombres d'éléments à ajouter dans l'array? (chaîne vide pour terminer) " nb; do
    if [ -z $nb]; then
        break
    fi
    if [ ! ($nb =~ [0-9]+) ]; then
        break
    fi
    for (( i=0; i < $nb; i++)); do
        array+=($RANDOM)
    done    
done

for (( i=0; i < ${#array[@]}; i++ ))
do
  
done

echo ${array[*]}