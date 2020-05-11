<#
Filename: qu13.ps1
Description: Liste les disques et leurs infos
Arguments: Aucun
Auteur: Tristan Brault Ouellette
Variable modifiable: Aucun
#> 
Get-PsDrive | Select-Object Name,Free,@{Name = "Total"; Expression = {$_.free + $_.used}},@{Name="Pourcentage"; Expression = {$_.used / ($_.free + $_.used) * 100}} | ConvertTo-Html | Out-File fichier.html