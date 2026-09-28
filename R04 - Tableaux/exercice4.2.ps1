## Exercice 2: Les services

# 4.2.1. Obtenir la liste de tous les services dont le nom commence par W et afficher les 
#        propriétés Name, Status et StartType dans un tableau.
Get-Service | Where-Object Name -Like "W*" | Select-Object Name, Status, StartType | Format-Table


# 4.2.2. Même chose, mais montrer seulement les services en cours d'exécution.
Get-Service | Where-Object Name -Like "W*" | Where-Object Status -EQ "Running" | Select-Object Name, Status, StartType | Format-Table
Get-Service | Where-Object {$_.Name -like "W*" -and $_.Status -eq "Running" } |Select-Object Name, Status, StartType | Format-Table

# 4.2.3. Même chose, mais montrer seulement les services en cours d'exécution qui 
#        s'exécutent automatiquement.

Get-Service | Where-Object Name -Like "W*" | Where-Object Status -EQ "Running" | Where-Object StartType -EQ "Automatic"  |Select-Object Name, Status, StartType | Format-Table
Get-Service | Where-Object {$_.Name -like "W*" -and $_.Status -eq "Running" -and $_.StartType -eq "Automatic" } |Select-Object Name, Status, StartType | Format-Table
