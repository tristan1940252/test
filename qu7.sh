for i in $1/*; do
if [[ $i == *.png || $i == *.gif || $i == *.jpg ]]; then
echo $i est traité
convert $i -resize $2x$2 $3/${i%.*}.jpg
fi
done
