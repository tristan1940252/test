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
$already = @()
$array= Get-ChildItem . -Recurse | Select-Object Name,FullName
Clear-Content .\sortie.txt
foreach ($item in $array) {
    $length = 0
    $arr = @($($item.Name + ":"), $item.FullName)
    $alrExist = "false"
    foreach ($item2 in $already){
        if ($item.FullName -eq $item2){
            $alrExist = "true"
        }
    }
    if ($alrExist -eq "false"){
        $already += $item.FullName
        foreach ($item2 in $array){
            if ($item.name -eq $item2.name) {
                if (!($item.FullName -eq $item2.FullName )) {
                    $arr += $item2.FullName
                    $already += $item2.FullName
                    $length++
                }
            }
        }
       
        if ($length -gt 0){
            for ($i = 0; $i -le $($length + 1); $i++){
                Add-Content .\sortie.txt $arr[$i]
            }
        }
    }
}