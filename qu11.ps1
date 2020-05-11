<# 
Filename: qu11.ps1
Description:
Arguments: Aucun
Auteur: Tristan Brault Ouellette
Variable modifiable: Le processus demandé
Entré: Le processus
Sortie: Les infos du processus
#> 
[CmdletBinding()]
Param(
  [Parameter(Mandatory=$true)]$demande
)
if ($demande -Match "^\d+$")
{
    Get-Process | Where-Object {$_.Id -eq "$demande"} | Select-Object ProcessName,Id,VM,Threads
}
else
{
    Get-Process | Where-Object {$_.ProcessName -eq "$demande"} | Select-Object ProcessName,Id,VM,Threads
}