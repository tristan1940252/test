<#
Filename: qu12.ps1
Description: Indique les programmes associé à l'extension .txt
Arguments: Aucun
Auteur: Tristan Brault Ouellette
Variable modifiable: Aucun
#> 
Get-ItemProperty HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.txt\OpenWithList