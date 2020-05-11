<#
Filename: qu10.ps1
Description:
Arguments: La date de Début et la date de Fin
Auteur: Tristan Brault Ouellette
Variable modifiable: Les 2 dates
Sortie: Fichier .csv contenant les logs applications entre les 2 dates
#> 

[CmdletBinding()]
Param(
  [Parameter(Mandatory=$true)]
   [datetime]$dateDebut,
  [Parameter(Mandatory=$true)]
   [datetime]$dateFin
)

Get-EventLog Application -After $dateDebut -Before $dateFin | ConvertTo-Csv | Out-File .\sortie.csv