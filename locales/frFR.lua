-- frFR localization
local L = LibStub("AceLocale-3.0"):NewLocale("GW2_UI", "frFR")
if not L then return end

--Fonts
L["FONT_NORMAL"] = "Interface/AddOns/GW2_UI/fonts/menomonia.ttf"
L["FONT_BOLD"] = "Interface/AddOns/GW2_UI/fonts/headlines.ttf"
L["FONT_NARROW"] = "Interface/AddOns/GW2_UI/fonts/menomonia.ttf"
L["FONT_NARROW_BOLD"] = "Interface/AddOns/GW2_UI/fonts/menomonia.ttf"
L["FONT_LIGHT"] = "Interface/AddOns/GW2_UI/fonts/menomonia-italic.ttf"
L["FONT_DAMAGE"] = "Interface/AddOns/GW2_UI/fonts/headlines.ttf"

--classic ones
L["FPS "] = "FPS "
L["Latency (Home) "] = "Latence (Locale): "
L["Latency (World) "] = "Latence (Monde): "
L["Bandwidth (Download) "] = "Bande passante (Aval): "
L["Bandwidth (Upload) "] = "Banque passante (amont): "
L["Memory for Addons: "] = "Mémoire dédiée aux Addons: "
L["Future Spells"] = "Future Spells"
L["Ranged"] = "À distance"
L["5 secound rule: display remaning time"] = true
L["Energy/Mana Ticker"] = true
L["Show Energy/Mana Ticker only in combat"] = true
L["All key bindings have been saved."] = true
L["All newly set key bindings have been discarded."] = true
L["Hover your mouse over any action button to bind it. Press the esc key or right click to clear the current action button's keybinding."] = true
L["Trigger"] = true
L["Key"] = true
L["All key bindings cleared for"] = true
L["bound to"] = true
L["Sold Junk for: %s"] = true
L["Show Quest XP on Quest Tracker"] = true

--Strings
L[" (Resting)"] = " (Au repos)"
L["\nCreated by: "] = "\nCréé par: "
L["\nLast updated: "] = "\nDernière mise à jour: "
L["%s and then %s"] = "%s puis %s"
L["%s Indicator"] = "Indicateur %s"
L[": Show numbers with commas"] = ": Montrer les chiffres avec virgules"
L[": Use Blizzard colors"] = ": Utiliser les couleurs de Blizzard"
L["A |cFFFF0000major|r update is available.\nIt's strongly recommended that you update."] = "Une mise à jour |cFFFF0000majeure|r est disponible.\nIl vous est fortement conseillé de la télécharger."
L["A list of auras that should never be shown."] = "Une liste d'auras qui ne devraient jamais être affichées."
L["A list of buffs that should only be shown when they are missing."] = "Une liste d'améliorations qui ne devraient être affichées que lorsqu'elles sont manquantes."
L["Action Button Labels"] = "Affectations des boutons d'action."
L["Add and remove profiles."] = "Ajouter et retirer des profils."
L["Adjust Skin settings."] = "Ajuste les paramètres d'habillage."
L["Advanced Casting Bar"] = "Barre de lancement de sort avancé"
L["Advanced Tooltips"] = "Infobulle détaillée"
L["AFK Mode"] = "Mode ABS"
L["Alert Frames"] = "Cadres d'alerte"
L["Allow the chat to fade when not in use."] = "Autorise l'occultation du chat lorsqu'il n'est pas utilisé."
L["Always show Minimap details."] = "Toujours afficher les détails de la mini carte."
L["Always Show Realm"] = "Toujours montrer le royaume"
L["Anchor the tooltips to the cursor."] = "Accroche l'info-bulle sur le curseur"
L["Applies the UI scale to all frames, which can be scaled in 'Move HUD' mode."] = "Appliquer l'échelle de l'ATH à toutes les fenêtres qui peuvent être ajustées en mode \" Déplacer l'ATH\"."
L["Apply UI scale to all scaleable frames"] = "Appliquer l'échelle de l'ATH à toutes les fenêtres ajustables"
L["Are you sure you want to delete this profile?"] = "Êtes vous certain de vouloir supprimer ce profil ?"
L["Are you sure you want to load the default settings?\n\nAll previous settings will be lost."] = "Êtes-vous sur de vouloir charger les paramètres par défaut?\n\nTous les réglages précédent seront perdus."
L["Ascending"] = "Ascendant"
L["Aura Style"] = "Style de l'aura"
L["Auras per row"] = "Nombre d'auras par rangée"
L["Auto Repair"] = "Réparation Auto"
L["Automatically repair using the following method when visiting a merchant."] = "Réparation automatique lors de la visite à marchand en utilisant la méthode suivante "
L["Bar"] = "Barre"
L["Blizzard Class Colors"] = "Couleurs de classes de Blizzard"
L["Boss Button"] = "Bouton de Boss"
L["Buff size"] = "Taille des améliorations"
L["By growth direction"] = "Par direction de déploiement"
L["By position on screen"] = "Par position sur l'écran"
L["Center"] = "Centre"
L["Change the HUD size."] = "Changer la taille de l'ATH."
L["Change the Minimap size."] = "Changer la taille de la Minimap."
L["Changelog"] = "Changements"
L["Class Power"] = "Ressource de classe"
L["Class Totems"] = "Totems de classe"
L["Class Totems Growth Direction"] = "Direction de déploiement des totems de classe"
L["Class Totems Sorting"] = "Tri des totems de classe"
L["Click to toggle raid frame preview and cycle through different group sizes."] = "Cliquez pour activer l'aperçu des cadres de raid et parcourir les différentes tailles de groupe"
L["Compact Icons"] = "Icônes compactes"
L["Complete"] = "Terminée"
L["Conduits"] = true
L["Coordinates"] = "Coordonnées"
L["Copy of"] = "Copie de"
L["Created: "] = "Créé : "
L["Credits"] = "Crédits"
L["Current Mount"] = "Monture actuelle"
L["Cursor Anchor"] = "Ancrage du curseur"
L["Cursor Anchor Left"] = "Ancrage du curseur à gauche"
L["Cursor Anchor Offset X"] = "Décalage vertical de l'ancrage du curseur"
L["Cursor Anchor Offset Y"] = "Décalage horizontal de l'ancrage du curseur"
L["Cursor Anchor Right"] = "Ancrage du curseur à droite"
L["Cursor Anchor Type"] = "Type d'ancrage du curseur"
L["Cursor Tooltips"] = "Curseur info-bulle"
L["Daily Reset"] = "Reset quotidien"
L["The following addon(s) are loaded, which can cause conflicts. By default, this setting is disabled."] = "Le ou les add-ons suivants sont chargés, ce qui peut causer des conflits. Par défaut, ce réglage est désactivé."
L["Debuff size"] = "Taille des affaiblissements"
L["Decode"] = "Décoder"
L["Default Settings"] = "Paramêtres par défaut"
L["Deficit:"] = "Déficit :"
L["Descending"] = "Descendant"
L["Developed by"] = "Développé par"
L["Different Than Own"] = "Différent du mien"
L["Display a country flag based on the unit's language"] = "Afficher un drapeau de pays basé sur la langue du joueur"
L["Display all of the target's debuffs."] = "Afficher tous les affaiblissements de la cible."
L["Display Average Item Level"] = "Afficher le niveau d'objet moyen"
L["Display current mount the unit is riding."] = "Affiche la monture actuellement utilisée par l'unité"
L["Display guild ranks if a unit is a member of a guild."] = "Afficher le rang de guilde si une unité est membre d'une guilde."
L["Display health as a percentage. Can be used as well as, or instead of Health Value."] = "Affiche la vie en pourcentage. Peut aussi être utilisé en tant que ou à la place de la santé."
L["Display how many of a certain item you have in your possession."] = "Affiche le nombre d'objets en votre possession"
L["Display player titles."] = "Afficher les titres du joueur."
L["Display Portrait Damage"] = "Afficher les dégâts sur le portrait"
L["Display Portrait Damage on this frame"] = "Afficher les dégâts du portrait sur ce cadre"
L["Display the average item level instead of prestige level for friendly units."] = "Afficher le niveau d'objet moyen au lieu du niveau de prestige pour les unités amies."
L["Display the class color as the health bar."] = "Afficher la couleur de la classe comme couleur de barre de vie."
L["Display the focus target frame."] = "Afficher le cadre de la cible du focus"
L["Display the power bars on the raid units."] = "Afficher les barres d'énergie sur les unités du raid."
L["Display the target's buffs."] = "Afficher les améliorations de la cible"
L["Display the target's debuffs that you have inflicted."] = "Afficher les affaiblissements de la cible que vous avez infligés."
L["Display the unit role in the tooltip."] = "Afficher le rôle de l'unité dans l'infobulle"
L["Displays additional information in the tooltip (further information is displayed when the SHIFT key is pressed)"] = "Afficher des informations supplémentaires dans l'infobulle (plus d'informations affichées en appuyant sur la touche MAJ)"
L["Displays the player character's gender."] = "Afficher le genre du personnage du joueur"
L["Displays the Target Markers on the Raid Unit Frames"] = "Afficher le marqueur de cible dans le cadre de raid"
L["Dodge Bar Ability"] = "Barre des sorts de mouvement"
L["Down"] = "Vers le bas"
L["Down and right"] = "Vers la droite puis vers le bas"
L["Dungeon & Raid Debuffs"] = "Affaiblissements de Donjon et de Raid"
L["Dynamic HUD"] = "ATH dynamique"
L["Earned:"] = "Gagné :"
L["Edit %s raid aura indicator."] = "Modifer l'indicteur d'aura de raid %s"
L["Edit raid aura indicators."] = "Modifier les indicateurs d'auras de raid"
L["Edit the group settings."] = "Modifier les paramètres de groupe."
L["Edit the HUD modules."] = "Modifier les modules de l'ATH."
L["Edit the modules in the Heads-Up Display for more customization."] = "Modifier les modules de l'ATH pour plus de personnalisation."
L["Edit the party and raid options to suit your needs."] = "Modifier les options de groupe et de raid pour s'adapter à vos besoins."
L["Edit the target frame settings."] = "Modifier les paramètres de cadre de la cible."
L["Edit which buffs and debuffs are shown."] = "Modifier quels améliorations et affaiblissements sont affichés."
L["Enable and disable components"] = "Activer ou desactiver des composants"
L["Enable or disable the action button assignment text"] = "Activer ou désactiver l’affectation des boutons d'action"
L["Enable or disable the advanced casting bar."] = "Activer ou désactiver la barre de lancement avancée."
L["Enable or disable the dynamically changing HUD background."] = "Activer ou désactiver le changement dynamique de l'arrière plan de l'ATH ."
L["Enable or disable the modules you need and don't need."] = "Activer ou désactiver les modules dont vous avez ou non besoin."
L["Enable or disable the quest tracker compass."] = "Activer ou désactiver la boussole de suivi de quête."
L["Enable the alternate class powers."] = "Activer l'affichage de la seconde ressource de classe."
L["Enable the focus target frame replacement."] = "Autoriser le remplacement du cadre de la cible du focus"
L["Enable the GW2 style casting bar."] = "Activer la barre de lancement de sort GW2"
L["Enable the health bar replacement."] = "Activer le remplacement de la barre de santé."
L["Enable the immersive questing view."] = "Activer la vue immersive pour quêter."
L["Enable the improved chat window."] = "Activer la fenêtre de discussion améliorée."
L["Enable the revamped and improved quest tracker."] = "Activer le suivi de quête amélioré."
L["Enable the talents, specialization, and spellbook replacement."] = "Activer le remplacement des pages de talents, spécialisation et livre de sorts"
L["Enable the target frame replacement."] = "Activer le remplacement de fenêtre de cible"
L["Enable the target of target frame."] = "Activer la fenêtre de la cible de la cible"
L["Enable the unified inventory interface."] = "Activer l'interface d'inventaire unifié."
L["Enter the spell ID which should be tracked by the dodge bar.\nIf no ID is entered, the default abilities based on your specialization and talents are tracked."] = "Entrez le numéro ID du sort qui doit être suivi par la barre de mouvement.\nSi aucun numéro ID n'est entré, c'est le sort par défaut, selon votre spécialisation et vos talents, qui sera suivi."
L["Error decoding profile: Invalid or corrupt string!"] = "Erreur de décodage du profil : Chaîne de caractères invalide ou corrompue !"
L["Error importing profile: Invalid or corrupt string!"] = "Erreur d'importation du profil : Chaîne de caractères invalide ou corrompue !"
L["Export"] = "Exporter"
L["Export Profile"] = "Exporter le profil"
L["Extra Frame Options"] = "Options de cadre supplémentaires"
L["Fade Action Bars"] = "Transparence des barres d'action"
L["Fade Chat"] = "Occulter le chat"
L["Fade Group Manage Button"] = "Effet de fondu sur le bouton de gestion du groupe"
L["Fade Menu Bar"] = "Effet de fondu sur la barre de menu"
L["Fonts"] = "Police d'écriture"
L["Gender"] = "Genre"
L["Gossip Frame"] = "Fenêtre PNJ"
L["Grays"] = "Objets Gris"
L["Grid Size:"] = "Taille de la grille"
L["Group Frames"] = "Cadres de groupe"
L["GW2 UI installation"] = "Installation de GW2 UI"
L["GW2 UI is a full user interface replacement. We have built the user interface with a modular approach, this means that if you dislike a certain part of the addon - or have another you prefer for that function - you can just disable that part, while keeping the rest of the interface intact.\nSome of the modules available to you are an immersive questing window, a full inventory replacement, as well as a full character window replacement. There are many more that you can enjoy, just take a look in the settings menu to see what's available to you!"] = "GW2 UI est un remplacement complet de l'interface utilisateur. Nous avons conçu l'interface utilisateur avec une approche modulaire, ce qui veut dire que si vous n'aimez pas une partie de l'addon - ou que pour une fonction particulière vous préférez un autre addon - vous pouvez simplement désactiver cette partie sans toucher au reste de l'interface.\nParmi les modules mis à votre disposition, on trouve une fenêtre de quête immersive, un remplacement complet de l'inventaire, ainsi qu'un remplacement complet de la fenêtre de personnage. Il y en a beaucoup d'autres que vous pourriez apprécier, jetez simplement un coup d'œil dans le menu des paramètres pour voir ce qui est à votre disposition !"
L["GW2 UI Update"] = "Mise à jour de GW2 UI"
L["Health Globe"] = "Sphère de santé"
L["Hide Empty Slots"] = "Cacher les emplacements vides"
L["Hide grid"] = "Cacher la grille"
L["Hide the empty action bar slots."] = "Cacher les emplacements de barre d'action vide."
L["Horizontal"] = "Horizontale"
L["HUD Scale"] = "Taille de l'ATH"
L["Ignored Auras"] = "Auras ignorées"
L["Immersive Questing"] = "Quêter en immersion"
L["Import"] = "Importer"
L["Import Profile"] = "Importer le profil"
L["Import string successfully decoded!"] = "La chaîne de caractères d'importation a été décodée avec succès !"
L["Import string successfully imported!"] = "Importation de la chaîne de caractères réussie !"
L["Installation"] = true
L["Installation Complete"] = "Installation terminée"
L["Invert focus frame"] = "Inverser la fenêtre de focalisation"
L["Invert target frame"] = "Inverser la fenêtre de cible"
L["Item Count"] = "Nombre d'objets"
L["Join Discord"] = "Rejoindre le Discord"
L["Left"] = "Gauche"
L["Left Click to toggle higher precision coordinates."] = "Clic gauche pour afficher les coordonnées de plus grande précision."
L["Legacy: Sorted by duration but auras can't cancel via right click in combat\\nSecure: Not sorted but auras can cancel via right click in combat"] = "Héritage : Auras classées par durée mais impossible de les annuler en combat par clic droit\\nSecurisée : Auras non classées mais on peut les annuler en combat par clic droit "
L["Load"] = "Charger"
L["Load the default addon settings to the current profile."] = "Charger les paramètres par défaut des addons sur le profil actuel."
L["Localised by"] = "Traduit par"
L["Lock HUD"] = "Verouiller l'ATH"
L["Looking for Group notifications"] = "Notifications de recherche de groupe"
L["Loot to leftmost Bag"] = "Butin dans le sac le plus à gauche"
L["Main Bar Range Indicator"] = "Indicateur de portée sur la barre principale"
L["Map Coordinates"] = "Coordonnées de la carte"
L["Maximum lines of 'Copy Chat Frame'"] = "Lignes maximum de la \"Fenêtre de copie de Chat\""
L["Micro Bar"] = "Micro Barre"
L["Minimap details"] = "Détails de la minicarte"
L["Minimap Scale"] = "Taille de la minicarte"
L["Misc Frames"] = "Fenêtres diverses"
L["Missing Buffs"] = "Amélioration manquantes"
L["Modifier for IDs"] = "Modificateur pour les identifiants"
L["Modify the focus frame settings."] = "Modifier les configurations du cadre du focus."
L["Modify the player frame settings."] = "Modifier les options du cadre du joueur."
L["Modify the target frame settings."] = "Modifier les options du cadre de la cible."
L["Modules"] = true
L["Move and resize the player auras."] = "Déplacer et redimensionner les auras du joueur."
L["Move HUD"] = "Déplacer l'ATH"
L["MoveAnything bag handling disabled."] = "Désactiver la gestion des sacs par MoveAnything"
L["New Bag Name"] = "Nouveau nom de sac"
L["New update available containing new features."] = "Nouvelle mise à jour disponible avec de nouvelles fonctions."
L["New update available for download."] = "Nouvelle mise à jour disponible."
L["No extra frame options for '%s'"] = "Aucune option de cadre supplémentaire pour '% s'"
L["No Guild"] = "Pas de Guilde"
L["Number of columns in the two extra right-hand action bars."] = "Nombre de colonnes pour les deux barres d'actions supplémentaires."
L["Only displays the debuffs that you are able to dispell."] = "Affiche uniquement les affaiblissements que vous pouvez dissiper."
L["Only on Mouse Over"] = "Seulement au passage de la souris"
L["Only takes effect if the option 'Cursor Tooltips' is activated"] = "Ne prend effet que si l'option \"Info-bulles du curseur\" est activée"
L["Only takes effect if the option 'Cursor Tooltips' is activated and the cursor anchor is NOT 'Cursor Anchor'"] = "Ne prend effet que si l'option \"Info-bulles du curseur\" est activée et que l'ancre du curseur n'est PAS \"Ancre du curseur\"."
L["Paragon"] = "Parangon"
L["Paste your profile string here to import the profile."] = "Coller ici la chaîne de caractères de votre profil pour l'importer."
L["Pixel Perfect Mode"] = "Mode résolution-parfaite"
L["Player Buff Growth Direction"] = "Direction de la croissance des amélioration du joueur"
L["Player Debuffs Growth Direction"] = "Direction de la croissance des affaiblissements du joueur"
L["Player frame in group"] = "Cadre du joueur en groupe"
L["Player frame in target frame style"] = "Cadre du joueur dans le style du cadre de la cible "
L["Popup notifications"] = "Notifications pop-up"
L["Preview Raid Frames"] = "Prévisualiser les cadres de Raid "
L["Profile string to share your settings:"] = "Chaîne de caractères pour partager vos paramètres :"
L["PROFILES"] = "PROFILS"
L["Profiles"] = "Profils"
L["Profiles are an easy way to share your settings across characters and realms."] = "Les profils permettent de partager facilement vos paramètres entre vos personnages ou vos serveurs de jeu."
L["Profit:"] = "Bénéfice :"
L["PvP Indicator"] = "Indicateur PvP "
L["QA Testing by"] = "Assurance qualité par"
L["Raid Auras"] = "Auras de Raid"
L["Raid Indicators"] = "Indicateurs de raid"
L["Red Overlay"] = "Masque de superposition rouge"
L["Replace the default character window."] = "Remplace la fenêtre par défaut du personnage."
L["Replace the default fonts withGw2 UI fonts."] = "Remplace les polices par défaut par celles de GW2 UI."
L["Replace the default mana/power bar."] = "Remplacer la barre de mana / ressource par défaut."
L["Replace the default UI chat bubbles. (Only in not protected areas)"] = "Remplace l'interface par défaut des bulles de discussions. (Seulement dans les zones non protégées)"
L["Replace the default UI group frames."] = "Remplace les fenêtres de groupe par défaut."
L["Replace the default UI tooltips."] = "Remplace l'info-bulle par défaut."
L["Required Items:"] = "Objets requis :"
L["Reset Character Data: Hold Shift + Right Click"] = "Remettre à zéro les données de personnage : maintenir Shift + Clic Droit"
L["Reset Session Data: Hold Ctrl + Right Click"] = "Remettre à zéro les données de session : maintenir Ctrl + Clic Droit"
L["Rested "] = "Reposé "
L["Retrieve your corpse"] = "Rejoignez votre corps"
L["Reverse Bag Order"] = "Tri inversé des sacs"
L["Right"] = "Droite"
L["Right Bar Width"] = "Largeur de la barre d'action droite"
L["Right click on a moverframe to show extra frame options"] = "Clic droit sur un cadre mobile pour afficher les options de cadre supplémentaires"
L["Right Click to change Talent Specialization"] = "Clic droit pour changer la spécialisation"
L["Right click to customize the bag title."] = "Clic droit pour modifier le titre du sac"
L["Save and Reload"] = "Sauver et recharger"
L["Saved Dungeon(s)"] = "Instance(s) de Donjon(s)"
L["Saved Raid(s)"] = "Instance(s) de Raid(s)"
L["Scale"] = "Mise à l'échelle"
L["Scale with Right Click"] = "Mettre à l'échelle avec un clic droit"
L["Scales the UI into a Pixel Perfect Mode. This is dependent on screen resolution."] = "Règle l'IU en mode résolution-parfaite. Dépend de la résolution de l'écran."
L["Secure"] = "Sécurisée"
L["Sell junk automatically"] = "Vendre automatiquement les objets gris"
L["Selling junk"] = "Vendre la camelote"
L["Separate bags"] = "Sacs séparés"
L["Session:"] = "Session :"
L["Set Raid Anchor"] = "Configurer l'ancre du Raid"
L["Set Raid Frame Container Height"] = "Configurer la hauteur du cadre de raid"
L["Set Raid Frame Container Width"] = "Configurer la largeur du cadre de raid"
L["Set Raid Growth Direction"] = "Configurer la direction de déploiement du raid"
L["Set Raid Unit Height"] = "Configurer la hauteur des portrait du Raid"
L["Set Raid Unit Width"] = "Configurer la largeur des portrait du Raid"
L["Set Raid Units per Column"] = "Configurer le nombre de portrait du Raid par colonne"
L["Set the grow direction for raid frames."] = "Configurer la direction de déploiement des portrait du Raid"
L["Set the height of the raid units."] = "Configurer la hauteur des portrait du Raid"
L["Set the maximum height that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next column."] = "Définit la hauteur maximale pour le cadre de raid.\n\nLes portraits des unités seront rétrécies ou déplacées à la colonne suivante."
L["Set the maximum number of lines displayed in the Copy Chat Frame"] = "Configurer le nombre maximum de lignes affichées dans la Fenêtre de \"Copie de Chat\""
L["Set the maximum width that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next row."] = "Définit la largeur maximale pour le cadre de raid.\n\nLes portraits des unités seront rétrécies ou déplacées à la colonne suivante."
L["Set the number of raid unit frames per column or row, depending on grow directions."] = "Définit le nombre maximum de portrait d'unité par ligne ou par colonne, selon la direction de déploiement."
L["Set the width of the raid units."] = "Définissez la largeur des unités du raid."
L["Set where the raid frame container should be anchored.\n\nBy position: Always the same as the container's position on screen.\nBy growth: Always opposite to the growth direction."] = "Définir où l'interface de raid devrait être ancrée.\n\nPar position: toujours équivalent à la position de l'interface de raid sur l'écran.\nPar expansion: Toujours à l'opposé de la direction de l'expansion."
L["Settings are not available in combat!"] = "Les réglages ne sont pas disponibles en combat !"
L["Setup Chat"] = "Mise en place de la fenêtre de discussion"
L["Setup CVars"] = "Configurer les CVars."
L["Show Aura Tooltips in Combat"] = "Afficher les infobulles des auras en combat"
L["Show Combo Points on Target"] = "Affiche les points de combo sur la cible"
L["Show combo points on target, below the health bar."] = "Montrer les points de combo sur la cible, sous la barre de vie"
L["Show Coordinates on Minimap"] = "Afficher les coordonnées sur la mini-carte"
L["Show Coordinates on World Map"] = "Afficher les coordonnées sur la carte du monde"
L["Show Country Flag"] = "Montrer le drapeau du pays"
L["Show FPS on minimap"] = "Afficher les IPS sur la minimap"
L["Show grid"] = "Montrer la grille"
L["Show health as a numerical value."] = "Indiquer la santé numériquement."
L["Show HUD background"] = "Montrer l'arrière-plan de l'ATH"
L["Show important Dungeon & Raid debuffs"] = "Afficher les affaiblissements importants de Donjon et Raid"
L["Show Junk Icon"] = "Montrer l'icone de la camelote"
L["Show or hide auras and edit raid aura indicators."] = "Afficher ou masquer les auras et modifier les indicateurs d'aura de raid."
L["Show Profession Bag Coloring"] = "Afficher la couleur du sac de métier"
L["Show Quality Color"] = "Afficher la couleur de qualité"
L["Show Remaining Time"] = "Afficher le temps restant"
L["Show Scrap Icon"] = "Montrer l'icone des déchets"
L["Show Shield Value"] = "Afficher la valeur du bouclier"
L["Show Spell Icons"] = "Afficher les icônes des sorts"
L["Show spell icons instead of monochrome squares."] = "Afficher les icônes des sorts plutot que des carrés monochromes"
L["Show the remaining aura time as an animated overlay."] = "Afficher le temps restant de l'aura en utilisant l'overlay animé"
L["Show Threat"] = "Afficher l'aggro"
L["Show tooltips of buffs and debuffs even when you are in combat."] = "Afficher les infobulles des buffs et debuffs même si vous êtes en combat"
L["Show Upgrade Icon"] = "Afficher l'icône d'amélioration"
L["Show your player frame as part of the group"] = "Afficher votre cadre parmi ceux du groupe"
L["Skins"] = "Habillage"
L["Skip"] = "Passer"
L["Socket Frame"] = "Fenêtre de sertissage"
L["Sort Raid Frames by Role"] = "Trier la fenêtre de raid par role"
L["Sort raid unit frames by role (tank, heal, damage) instead of group."] = "Trier les cadres d'unité du raid par rôle (tank, soigneur, dégats) plutôt que par groupe."
L["Sort to Last Bag"] = "Trier vers le dernier sac"
L["Spent:"] = "Dépensé:"
L["Start installation"] = "Démarrer l'installation"
L["Talking Head"] = "Dialogue flottant"
L["Target Info"] = "Info de la cible"
L["Targeted by:"] = "Ciblé par :"
L["Text has not loaded."] = "Si vous voyez ce message, Nous avons oublié certain texte. Ne vous inquiétez pas, nous avons d'autres textes comme celui-ci pour combler les vides d'informations."
L["The Group Manage Button will fade when you move the cursor away."] = "Effet de fondu sur le bouton de gestion du groupe quand la souris n'est pas proche"
L["The HUD background changes color in the following situations: In Combat, Not In Combat, In Water, Low HP, Ghost"] = "L'arrière-plan de l'ATH change de couleur dans les cas suivants: En combat, Hors combat, Dans l'eau, Vie faible, En fantôme"
L["The main menu icons will fade when you move your cursor away."] = "Effet de fondu sur le micro-menu quand la souris n'est pas proche"
L["This part sets up your chat window names, positions, and colors."] = "Cette partie règle le nom de vos fenêtre de chat, leurs positions et leurs couleurs"
L["This part sets up your World of Warcraft default options."] = "Cette partie règle vos option par défaut de World of Warcraft."
L["This short installation process will help you to set up all of the necessary settings used by GW2 UI."] = "Ce court processus d'installation vous aidera à configurer tous les paramètres nécessaires utilisés par GW2 UI"
L["Toggle Compass"] = "Afficher le compas"
L["Tooltips"] = "Info-bulle"
L["Top"] = "haut"
L["Top Left"] = "Haut Gauche"
L["Top Right"] = "Haut Droite"
L["Turn Pixel Perfect Mode On"] = "Désactiver le mode résolution-parfaite"
L["Up"] = "Vers le haut"
L["Up and right"] = "Vers la droite puis vers le haut"
L["Upcoming Level Rewards"] = "Prochaine récompense de niveau"
L["Use the class color instead of class icons."] = "Utiliser les couleurs de classes à la place des icônes de classes."
L["Use the GW2 UI improved action bars."] = "Utiliser les barres d'actions améliorées de GW2 UI."
L["Use the GW2 UI improved Pet bar."] = "Utiliser l'IU amélioré de GW2 pour la barre du familier."
L["Use the GW2 UI Minimap frame."] = "Utiliser le cadre et l'emplacement de mini-carte de GW2."
L["Vertical"] = "Verticale"
L["Weekly Reset"] = "Reset hebdomadaire"
L["Welcome"] = "Bienvenue"
L["Welcome to GW2 UI"] = "Bienvenue sur GW2 UI"
L["What is 'Pixel Perfect'?\n\nGW2 UI has a built-in setting called 'Pixel Perfect Mode'. What this means for you is that your user interface will look as was intended, with crisper textures and better scaling. Of course, you can toggle this off in the settings menu should you prefer."] = "Qu'est-ce que 'Pixel Perfect' ?\n\nL'interface utilisateur de GW2 possède un paramètre intégré appelé 'Mode Pixel Perfect'. Cela signifie que votre interface utilisateur sera fidèle à ce qui était prévu, avec des textures plus nettes et une meilleure mise à l'échelle. Bien entendu, vous pouvez désactiver ce mode dans le menu des paramètres si vous le souhaitez."
L["When in a raid group, show if anyone in your raid is targeting the current tooltip unit."] = "Lorsque dans un groupe de raid, montre si quelqu'un cible l'unité actuelle de l'infobulle."
L["When you go AFK, display the AFK screen."] = "Quand vous êtes ABS, affiche un écran spécial."
L["With Contributions by"] = "Avec la contribution de"
L["You can not move elements during combat!"] = "Vous ne pouvez pas déplacer ces éléments durant un combat!"
L["You have now finished installing GW2 UI!"] = "L'installation de GW2 UI est maintenant terminée !"
L["Your items have been repaired for: %s"] = "Vos équipements ont été réparés pour : %s"
L["Your items have been repaired using guild bank funds for: %s"] = "Vos objets ont été réparés avec les fonds de la banque de guilde pour : % s"
L["Zone Ability"] = "Capacité de la zone"
L["Stance Bar Growth Direction"] = "Direction de déploiement de la barre spéciale"
L["Set the growth direction of the stance bar"] = "Définit la direction de déploiement de la barre spéciale"
L["Ctrl + Click to toggle override"] = "Ctrl + Click pour activer la priorité à GW2 UI"
L["Incompatible Addons behavior Overridden. Needs a reload to take effect."] = "Comportement d'incompatibilité d'extension remplacé. Un rechargement est nécessaire pour prendre effet."
L["You have overridden this behavior."] = "Ce comportement a été outrepassé par un add-on."
L["Out of combat"] = true
L["Show an additional ressoucebar"] = true
L["Show auras below"] = true
