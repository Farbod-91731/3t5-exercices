## Exercice 1: Les fichiers

# 4.1.1. Obtenir tous les fichiers contenus dans le répertoire C:\Windows.
Get-ChildItem -path "C:\Windows" | Format-Table


# 4.1.2. Obtenir tous les fichiers contenus dans le répertoire C:\Windows, triés par ordre 
#        décroissant de taille.
Get-ChildItem -path "C:\Windows" | Sort-Object Length -Descending


# 4.1.3. Même chose, mais montrer seulement les fichiers plus grands que 1 mégaoctet.
Get-ChildItem -path "C:\Windows" | Where-Object Length -GT 1000000


# 4.1.4. Même chose, mais montrer seulement les fichiers qui pèsent entre 1 et 10 mégaoctets.
Get-ChildItem -path "C:\Windows" | Where-Object Length -ge 1000000 | Where-Object Length -LE 10000000
Get-ChildItem -path "C:\Windows" | Where-Object { $_.Length -ge 1000000 -and $_.Length -le 10000000 }

# 4.1.5. Même chose, mais montrer seulement les fichiers qui pèsent soit plus de 1 mégaoctet 
#        ou moins de 1 kilooctet.
Get-ChildItem -path "C:\Windows" | Where-Object { $_.Length -GT 1000000 -or $_.Length -lt 1000 }

