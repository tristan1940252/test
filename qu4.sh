content="salut"
for i in $pwd; do 
    if [[ -d $i ]]; then
        echo "salut" > "./index.html"
        for j in $i; do
            echo $content > $j/index.html
        done
    fi
    done    