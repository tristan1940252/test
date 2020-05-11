<#
Filename: qu14.ps1
Description: recherche dans le répertoire en cours et enfant tous les fichiers et inscrire en ordre décroissant
Arguments: Aucun
Auteur: Tristan Brault Ouellette
Variable modifiable: Aucune
#> 
Get-ChildItem . -Recurse -File | Sort-Object -Descending Length | Select-Object Length,Name