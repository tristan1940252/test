> ./entete.txt
for i in $1/*; do
if [[ $i =~ ".html" ]]; then
    echo -e "\n${i##*/}:" >> ./entete.txt
    head -10 $i >> ./entete.txt
fi
done
