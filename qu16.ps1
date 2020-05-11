<#
Filename: qu16.ps1
Description: Nous dis toute les récurences des fichiers du répertoire en cours
Arguments: Aucun
Auteur: Tristan Brault Ouellette
Variable modifiable: $already est un array des items déjà traiter,$array est l'array de tout les fichiers
$item est la premiere occurence, $item2 les autres $length est la longueur de l'array à traiter,
$alrExist est si l'item est deja dans $already donc deja traiter
Sortie: Une liste des récurences des fichiers (sortie.txt)
#> 
Clear-Content .\sortie.txt
foreach ($i in Get-ChildItem){
    $array= Get-ChildItem -Recurse | Select-Object Name,FullName | Where-Object Name -Match $i
    if ($array.Length -gt 1){
        Add-Content .\sortie.txt ($i.name + ":")
        foreach ($j in $array){
            Add-Content .\sortie.txt $j.fullname
        }
        Add-Content .\sortie.txt "....`n"
    }
}