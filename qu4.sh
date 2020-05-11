content="<html>\n<head>\n<title>Empty</title>\n</head>\n<body>\nFichier squelette\n</body>\n</html>"
for i in $PWD/*; do
	if [[ -d $i ]]; then
		echo -e $content > $i/index.html
	fi
done

