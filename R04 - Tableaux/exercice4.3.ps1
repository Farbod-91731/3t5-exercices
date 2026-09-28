## Exercice 3: Défis

# 4.3.1. 🏆 Créer 10 fichiers nommés "Fichier 1.txt" à "Fichier 10.txt" dans le répertoire 
#        du profil de l'utilisateur.
1..10 | ForEach-Object { New-Item -name "Fichier $_.txt" -Type "File" }


# 4.3.2. 🏆 Dressez la liste de tous les fichiers .EXE dans C:\Windows, sous forme d'un 
#         tableau montrant le nom du fichier en majuscules ainsi que la taille approximative 
#         en kilooctets, arrondi à l'entier près.
Get-ChildItem -path "C:\Windows" | Where-Object Name -like "*.exe" | Select-Object Name,Length | Format-Table @{Label="Nom"; Expression={$_.Name.ToUpper()}}, @{Label="Taille (Ko)"; Expression={[math]::Round($_.Length / 1KB)}}


# 4.3.3. 🏆🏆 À partir de votre ligne de commande à la question 4.2.3, créez un fichier nommé 
#        "Service_nomduservice.txt" pour chaque service dans le répertoire courant. Chaque 
#        fichier doit contenir la liste détaillée de toutes les propriétés de ce service.

