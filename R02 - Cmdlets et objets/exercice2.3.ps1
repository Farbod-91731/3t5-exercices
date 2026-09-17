# Exercice 3: Objets

# Dans cet exercice, trouvez la ligne de commande PowerShell à utiliser pour obtenir l'information demandée. Les 
# questions suivantes doivent être répondue en utilisant les objets.


################################
# Partie 1: Système de fichiers
################################

# 1. Stockez dans la variable $ipconfig un objet représentant le fichier C:\Windows\System32\ipconfig.exe (avec Get-Item).
$ipconfig = Get-Item -path C:\Windows\System32\ipconfig.exe

# 2. Obtenez la liste de toutes les propriétés et méthodes offertes par cet objet (avec Get-Member).
$ipconfig | Get-Member

# 3. À l'aide de la commande Select-Object, obtenez le maximum d'informations contenu dans cet objet.
$ipconfig | Get-Member | Select-Object ?--------------------------------------------------------------------------------------------------------------------------- ???????????
$ipconfig | Select-Object * ?-------------------------------------------------------------------------------------------------------------------------------------- Bonne réponse ????
# 4. Affichez à l'écran le nom complet de ce fichier (C:\Windows\System32\ipconfig.exe), en utilisant les propriétés de cet objet.
$ipconfig.FullName

# 5. Affichez seulement le nom de l'exécutable (ipconfig.exe).
$ipconfig.PSChildName

# 6. Affichez seulement le nom du répertoire dans lequel il se trouve (C:\Windows\System32).
$ipconfig.DirectoryName

# 7. Affichez la taille de ce fichier, en octets.
$ipconfig.Length

# 8. Affichez la date de création de ce fichier.
$ipconfig.CreationTime

# 9. <DÉFI> Affichez la date de création de ce fichier en format yyyy-MM-dd. (Vous aurez besoin de Get-Date).
$ipconfig.CreationTimeUtc.ToString("yyyy-MM-dd")

# 10. <DÉFI> Affichez le nombre de jours qui se sont écoulés depuis la création de ce fichier. (Vous aurez besoin de New-TimeSpan).


##############################
# Partie 2: Objets PSCulture
##############################

# 1. Stockez l'objet produit par Get-Culture dans une variable nommée $Culture.
$Culture = Get-Culture

# 2. Obtenez la liste de toutes les propriétés et méthodes offertes par cet objet
$Culture | Get-Member

# 3. À l'aide de la commande Select-Object, obtenez le maximum d'informations contenu dans cet objet.
$Culture | Select-Object *

# 4. Affichez dans la console seulement la propriété DisplayName.
$Culture.DisplayName

# 5. Dans cet objet se trouve un sous-objet représentant le format des nombres dans cette langue, dans lequel se trouve le symbole de la device monétaire (currency, soit $). Affichez ce symbole dans la console.
$Culture.NumberFormat.CurrencySymbol

# 6. Obtenez la date du jour dans le format de date courte de la langue courante.
