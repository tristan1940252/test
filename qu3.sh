for i in $1; do
if [[ $i =~ "*.html" ]]; then
    head -10 $i >> ./entete.txt
fi
done