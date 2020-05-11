> sortie9.txt
for u in $PWD/*;do
j=$(find . -type f -name ${u##*/} -printf "%p-")

IFS='-'

read -ra ADDR <<< "$j"

if [[ ${#ADDR[@]} -gt 1 ]]; then
	echo " " >> sortie9.txt
	echo "${u##*/}:" >> sortie9.txt
	for i in "${ADDR[@]}"; do
		echo "$i" >> sortie9.txt
	done
fi
done

