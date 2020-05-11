<#
Filename: qu9.ps1
Description: trouve les services en cours d’exécution contenant la lettre e ou la lettre c.
Arguments: Aucun
Auteur: Tristan Brault Ouellette
Variable modifiable: Aucune
Sortie: les services qui respecte les conditions
#> 
Get-Service | where Status -Match "Running" | where Name -Match "e | c"