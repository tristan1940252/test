<#
Filename: qu15.ps1
Description: Ajoute d'en un array (choix) nombre aléatoire et vérifie si un processus à cette id, nous renvoie si oui ou non
Arguments: « Aucun » (le nombre choix)
Auteur: Tristan Brault Ouellette
Variable modifiable: choix dépendant de l'utilisateur
Sortie: Les nombres générées et s'il sont égal a un id de processus
#> 
$choix = Read-Host -Prompt "Combien d'elements? "
$tab = @()
for($i = 0; $i -lt $choix; $i++){
    $tab += Get-Random -Maximum 65536
}
$id = Get-Process | Select-Object Id,Name
foreach($elem in $tab){
    $found = "aucun"
    foreach ($process in $id){
        if ($elem -eq $process.id) {
            $found = $process.name
        }
    }
    if($found -ne "aucun"){
        Write-Host("$elem, $found a ce numero ")
    } 
    else {
        Write-Host("$elem, aucun processus a ce numero")    
    }
}