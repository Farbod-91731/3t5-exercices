# Exercice 2: Commandes PowerShell

# Trouvez la commande PowerShell et leurs arguments permettant de faire ce qui est demandé.

# Utilisez la vraie commande PowerShell, pas un alias ni une commande externe.



# 1. Obtenir la liste des fichiers et répertoires contenus dans le répertoir courant (équivalent à dir).
Get-ChildItem -File

# 2. Obtenir la liste des fichiers seulement contenus directement sous C:\Windows.
Get-ChildItem C:\Windows -File

# 3. Obtenir la liste des répertoires seulement contenus directement sous C:\Program Files.
Get-ChildItem "C:\Program Files" -Directory

# 4. Obtenir la liste des processus actifs dont le nom commence par "V" (vous pouvez utiliser les wildcards).
Get-Process -Name V*
Get-Process V*
# 5. Obtenir de l'information sur le volume C: (comme sa taille, l'espace restant, le format du système de fichiers, etc.)
Get-Volume 

# 6. Créer un nouveau répertoire nommé Minou à la racine du volume C:\.
New-Item -Path C:\Minou -ItemType Directory

# 7. Définir ce répertoire comme répertoire de travail (répertoire de travail, équivalent à cd C:\Minou).
Set-Location -Path C:\Minou

# 8. Obtenir la liste des adapteurs réseau installés sur l'ordinateur.
Get-NetAdapter

# 9. Obtenir la liste des utilisateurs locaux configurés sur l'ordinateur.
Get-LocalUser

# 10. Obtenir l'adresse IP numérique du serveur www.cegepmontpetit.ca.
Resolve-DnsName www.cegepmontpetit.ca

# 11. Vérifier si le serveur www.cegepmontpetit.ca répond sur le port 443 à l'aide de Test-NetConnection.
Test-NetConnection www.cegepmontpetit.ca -Port 443

# 12. Obtenez la date (et l'heure) de maintenant.
Get-Date 

# 13. <DÉFI> Obtenez la date et l'heure dans le format suivant: 2025-08-26 14:55. Consultez l'aide en ligne (Get-Help -Online) pour plus de détails sur l'utilisation de cette commande.
Get-Date -Format "yyyy/MM/dd HH:mm"

