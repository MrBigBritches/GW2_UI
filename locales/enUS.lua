-- enUS localization
local _, GW = ...
GW.L = {}

local function GWUseThisLocalization()
    local L = GW.L
    --Fonts
    L["FONT_NORMAL"] = "Interface/AddOns/GW2_UI/fonts/menomonia.ttf"
    L["FONT_BOLD"] = "Interface/AddOns/GW2_UI/fonts/headlines.ttf"
    L["FONT_NARROW"] = "Interface/AddOns/GW2_UI/fonts/menomonia.ttf"
    L["FONT_NARROW_BOLD"] = "Interface/AddOns/GW2_UI/fonts/menomonia.ttf"
    L["FONT_LIGHT"] = "Interface/AddOns/GW2_UI/fonts/menomonia-italic.ttf"
    L["FONT_DAMAGE"] = "Interface/AddOns/GW2_UI/fonts/headlines.ttf"

    --Strings
    L["ACTION_BAR_FADE"] = "Fade Action Bars"
    L["ACTION_BAR_FADE_DESC"] = "Fade the additional action bars when out of combat."
    L["ACTION_BARS_DESC"] = "Use the GW2 UI improved action bars."
    L["ADV_CAST_BAR"] = "Advanced Casting Bar"
    L["ADV_CAST_BAR_DESC"] = "Enable or disable the advanced casting bar."
    L["AMOUNT_LOAD_ERROR"] = "Amount could not be loaded"
    L["RAID_AURAS"] = "Raid Auras"
    L["RAID_AURAS_DESC"] = "Edit which buffs and debuffs are shown."
    L["RAID_AURAS_IGNORED"] = "Ignored Auras"
    L["RAID_AURAS_IGNORED_DESC"] = "A list of auras that should never be shown."
    L["RAID_AURAS_MISSING"] = "Missing Buffs"
    L["RAID_AURAS_MISSING_DESC"] = "A list of buffs that should only be shown when they are missing."
    L["RAID_AURAS_TOOLTIP"] = "Show or hide auras and edit raid aura indicators."
    L["BANK_COMPACT_ICONS"] = "Compact Icons"
    L["BANK_EXPAND_ICONS"] = "Large Icons"
    L["BUTTON_ASSIGNMENTS"] = "Action Button Labels"
    L["BUTTON_ASSIGNMENTS_DESC"] = "Enable or disable the action button assignment text"
    L["CASTING_BAR_DESC"] = "Enable the GW2 style casting bar."
    L["CHARACTER_NEXT_RANK"] = "NEXT"
    L["CHARACTER_PARAGON"] = "Paragon"
    L["CHAT_BUBBLES_DESC"] = "Replace the default UI chat bubbles. (Only in not protected areas)"
    L["CHAT_FADE"] = "Fade Chat"
    L["CHAT_FADE_DESC"] = "Allow the chat to fade when not in use."
    L["CHAT_FRAME_DESC"] = "Enable the improved chat window."
    L["CHRACTER_WINDOW_DESC"] = "Replace the default character window."
    L["CLASS_COLOR_DESC"] = "Display the class color as the health bar."
    L["CLASS_COLOR_RAID_DESC"] = "Use the class color instead of class icons."
    L["CLASS_POWER"] = "Class Power"
    L["CLASS_POWER_DESC"] = "Enable the alternate class powers."
    L["COMPACT_ICONS"] = "Compact Icons"
    L["COMPASS_TOGGLE"] = "Toggle Compass"
    L["COMPASS_TOGGLE_DESC"] = "Enable or disable the quest tracker compass."
    L["DEBUFF_DISPELL_DESC"] = "Only displays the debuffs that you are able to dispell."
    L["DYNAMIC_HUD"] = "Dynamic HUD"
    L["DYNAMIC_HUD_DESC"] = "Enable or disable the dynamically changing HUD background."
    L["EXP_BAR_TOOLTIP_EXP_RESTED"] = "Rested "
    L["EXP_BAR_TOOLTIP_EXP_RESTING"] = " (Resting)"
    L["EXPAND_ICONS"] = "Large Icons"
    L["FOCUS_DESC"] = "Modify the focus frame settings."
    L["FOCUS_FRAME_DESC"] = "Enable the focus target frame replacement."
    L["FOCUS_TARGET_DESC"] = "Display the focus target frame."
    L["FOCUS_TOOLTIP"] = "Edit the focus frame settings."
    L["FONTS"] = "Fonts"
    L["FONTS_DESC"] = "Replace the default fonts withGw2 UI fonts."
    L["GROUND_MARKER"] = "WM"
    L["GROUP_DESC"] = "Edit the party and raid options to suit your needs."
    L["GROUP_FRAMES"] = "Group Frames"
    L["GROUP_FRAMES_DESC"] = "Replace the default UI group frames."
    L["GROUP_TOOLTIP"] = "Edit the group settings."
    L["HEALTH_GLOBE"] = "Health Globe"
    L["HEALTH_GLOBE_DESC"] = "Enable the health bar replacement."
    L["HEALTH_PERCENTAGE_DESC"] = "Display health as a percentage. Can be used as well as, or instead of Health Value."
    L["HEALTH_VALUE_DESC"] = "Show health as a numerical value."
    L["HIDE_EMPTY_SLOTS"] = "Hide Empty Slots"
    L["HIDE_EMPTY_SLOTS_DESC"] = "Hide the empty action bar slots."
    L["HUD_DESC"] = "Edit the modules in the Heads-Up Display for more customization."
    L["HUD_MOVE_ERR"] = "You can not move elements during combat!"
    L["HUD_SCALE"] = "HUD Scale"
    L["HUD_SCALE_DESC"] = "Change the HUD size."
    L["HUD_SCALE_TINY"] = "Tiny"
    L["HUD_TOOLTIP"] = "Edit the HUD modules."
    L["INDICATORS"] = "Raid Indicators"
    L["INDICATORS_DESC"] = "Edit raid aura indicators."
    L["INDICATORS_ICON"] = "Show Spell Icons"
    L["INDICATORS_ICON_DESC"] = "Show spell icons instead of monochrome squares."
    L["INDICATORS_TIME"] = "Show Remaining Time"
    L["INDICATORS_TIME_DESC"] = "Show the remaining aura time as an animated overlay."
    L["INDICATOR_TITLE"] = "%s Indicator"
    L["INDICATOR_DESC"] = "Edit %s raid aura indicator."
    L["INDICATOR_BAR"] = "progress bar"
    L["INVENTORY_FRAME_DESC"] = "Enable the unified inventory interface."
    L["LEVEL_REWARDS"] = "Upcoming Level Rewards"
    L["MAP_CLOCK_LOCAL_REALM"] = "Left Click to switch between Local and Realm time"
    L["MAP_CLOCK_MILITARY"] = "Shift-Click to toggle military time format"
    L["MAP_CLOCK_STOPWATCH"] = "Right Click to open the Stopwatch"
    L["MAP_CLOCK_TIMEMANAGER"] = "Shift-Right Click to open the Time Manager"
    L["MAP_COORDINATES_TITLE"] = "Map Coordinates"
    L["MAP_COORDINATES_TOGGLE_TEXT"] = "Left Click to toggle higher precision coordinates."
    L["MINIMAP_DESC"] = "Use the GW2 UI Minimap frame."
    L["MINIMAP_HOVER"] = "Minimap details"
    L["MINIMAP_HOVER_TOOLTIP"] = "Always show Minimap details."
    L["MINIMAP_SCALE"] = "Minimap Scale"
    L["MINIMAP_SCALE_DESC"] = "Change the Minimap size."
    L["MODULES_CAT"] = "MODULES"
    L["MODULES_CAT_1"] = "Modules"
    L["MODULES_CAT_TOOLTIP"] = "Enable and disable components"
    L["MODULES_DESC"] = "Enable or disable the modules you need and don't need."
    L["MODULES_TOOLTIP"] = "Enable or disable UI modules."
    L["MOUSE_TOOLTIP"] = "Cursor Tooltips"
    L["MOUSE_TOOLTIP_DESC"] = "Anchor the tooltips to the cursor."
    L["MOVE_HUD_BUTTON"] = "Move HUD"
    L["NAME_LOAD_ERROR"] = "Name could not be loaded"
    L["PET_BAR_DESC"] = "Use the GW2 UI improved Pet bar."
    L["PLAYER_AURAS_DESC"] = "Move and resize the player auras."
    L["POWER_BARS_RAID_DESC"] = "Display the power bars on the raid units."
    L["PROFILES_CAT"] = "PROFILES"
    L["PROFILES_CAT_1"] = "Profiles"
    L["PROFILES_CREATED"] = "Created: "
    L["PROFILES_CREATED_BY"] = "\nCreated by: "
    L["PROFILES_DEFAULT_SETTINGS"] = "Default Settings"
    L["PROFILES_DEFAULT_SETTINGS_DESC"] = "Load the default addon settings to the current profile."
    L["PROFILES_DEFAULT_SETTINGS_PROMPT"] = "Are you sure you want to load the default settings?\n\nAll previous settings will be lost."
    L["PROFILES_DELETE"] = "Are you sure you want to delete this profile?"
    L["PROFILES_DESC"] = "Profiles are an easy way to share your settings across characters and realms."
    L["PROFILES_LAST_UPDATE"] = "\nLast updated: "
    L["PROFILES_LOAD_BUTTON"] = "Load"
    L["PROFILES_MISSING_LOAD"] = "Text has not loaded."
    L["PROFILES_TOOLTIP"] = "Add and remove profiles."
    L["QUEST_REQUIRED_ITEMS"] = "Required Items:"
    L["QUEST_TRACKER_DESC"] = "Enable the revamped and improved quest tracker."
    L["QUEST_VIEW_SKIP"] = "Skip"
    L["QUESTING_FRAME"] = "Immersive Questing"
    L["QUESTING_FRAME_DESC"] = "Enable the immersive questing view."
    L["RAID_ANCHOR"] = "Set Raid Anchor"
    L["RAID_ANCHOR_DESC"] = "Set where the raid frame container should be anchored.\n\nBy position: Always the same as the container's position on screen.\nBy growth: Always opposite to the growth direction."
    L["RAID_ANCHOR_BY_POSITION"] = "By position on screen"
    L["RAID_ANCHOR_BY_GROWTH"] = "By growth direction"
    L["RAID_BAR_HEIGHT"] = "Set Raid Unit Height"
    L["RAID_BAR_HEIGHT_DESC"] = "Set the height of the raid units."
    L["RAID_BAR_WIDTH"] = "Set Raid Unit Width"
    L["RAID_BAR_WIDTH_DESC"] = "Set the width of the raid units."
    L["RAID_CONT_HEIGHT"] = "Set Raid Frame Container Height"
    L["RAID_CONT_HEIGHT_DESC"] = "Set the maximum height that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next column."
    L["RAID_CONT_WIDTH"] = "Set Raid Frame Container Width"
    L["RAID_CONT_WIDTH_DESC"] = "Set the maximum width that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next row."
    L["RAID_GROW"] = "Set Raid Growth Direction"
    L["RAID_GROW_DESC"] = "Set the grow direction for raid frames."
    L["RAID_GROW_DIR"] = "%s and then %s"
    L["RAID_MARKER_DESC"] = "Displays the Target Markers on the Raid Unit Frames"
    L["RAID_PARTY_STYLE_DESC"] = "Style the party frames like the raid frames."
    L["RAID_PREVIEW"] = "Preview Raid Frames"
    L["RAID_PREVIEW_DESC"] = "Click to toggle raid frame preview and cycle through different group sizes."
    L["RAID_SORT_BY_ROLE"] = "Sort Raid Frames by Role"
    L["RAID_SORT_BY_ROLE_DESC"] = "Sort raid unit frames by role (tank, heal, damage) instead of group."
    L["RAID_AURA_TOOLTIP_IN_COMBAT"] = "Show Aura Tooltips in Combat"
    L["RAID_AURA_TOOLTIP_IN_COMBAT_DESC"] = "Show tooltips of buffs and debuffs even when you are in combat."
    L["RAID_UNIT_FLAGS"] = "Show Country Flag"
    L["RAID_UNIT_FLAGS_2"] = "Different Than Own"
    L["RAID_UNIT_FLAGS_TOOLTIP"] = "Display a country flag based on the unit's language"
    L["RAID_UNITS_PER_COLUMN"] = "Set Raid Units per Column"
    L["RAID_UNITS_PER_COLUMN_DESC"] = "Set the number of raid unit frames per column or row, depending on grow directions."
    L["RESOURCE_DESC"] = "Replace the default mana/power bar."
    L["SETTING_LOCK_HUD"] = "Lock HUD"
    L["SETTINGS_BUTTON"] = "GW2 UI Settings"
    L["SETTINGS_NO_LOAD_ERROR"] = "Some text has not loaded, please try refreshing the interface."
    L["SETTINGS_RESET_TO_DEFAULT"] = "Reset to Default."
    L["SETTINGS_SAVE_RELOAD"] = "Save and Reload"
    L["SHOW_ALL_DEBUFFS_DESC"] = "Display all of the target's debuffs."
    L["SHOW_BUFFS_DESC"] = "Display the target's buffs."
    L["SHOW_DEBUFFS_DESC"] = "Display the target's debuffs that you have inflicted."
    L["SHOW_ILVL"] = "Display Average Item Level"
    L["SHOW_ILVL_DESC"] = "Display the average item level instead of prestige level for friendly units."
    L["TARGET_DESC"] = "Modify the target frame settings."
    L["TARGET_FRAME_DESC"] = "Enable the target frame replacement."
    L["TARGET_OF_TARGET_DESC"] = "Enable the target of target frame."
    L["TARGET_TOOLTIP"] = "Edit the target frame settings."
    L["TOOLTIPS"] = "Tooltips"
    L["TOOLTIPS_DESC"] = "Replace the default UI tooltips."
    L["TRACKER_RETRIVE_CORPSE"] = "Retrieve your corpse"
    L["UPDATE_STRING_1"] = "New update available for download."
    L["UPDATE_STRING_2"] = "New update available containing new features."
    L["UPDATE_STRING_3"] = "A |cFFFF0000major|r update is available.\nIt's strongly recommended that you update."
    L["UNEQUIP_LEGENDARY"] = "You must unequip that item in order to upgrade it."
    L["NOT_A_LEGENDARY"] = "You cannot upgrade that item."
    L["BAG_SORT_ORDER_FIRST"] = "Sort to First Bag"
    L["BAG_SORT_ORDER_LAST"] = "Sort to Last Bag"
    L["BAG_NEW_ORDER_FIRST"] = "New Items to First Bag"
    L["BAG_NEW_ORDER_LAST"] = "New Items to Last Bag"
    L["BAG_ORDER_NORMAL"] = "Normal Bag Order"
    L["BAG_ORDER_REVERSE"] = "Reverse Bag Order"
    L["STG_RIGHT_BAR_COLS"] = "Right Bar Width"
    L["STG_RIGHT_BAR_COLS_DESC"] = "Number of columns in the two extra right-hand action bars."
    L["DISABLED_MA_BAGS"] = "MoveAnything bag handling disabled."
    L["FADE_MICROMENU"] = "Fade Menu Bar"
    L["FADE_MICROMENU_DESC"] = "The main menu icons will fade when you move your cursor away."
    L["TALENTS_BUTTON_DESC"] = "Enable the talents, specialization, and spellbook replacement."
    L["ALL_BINDINGS_SAVE"] = "All key bindings have been saved."
    L["ALL_BINDINGS_DISCARD"] = "All newly set key bindings have been discarded."
    L["BINDINGS_DESC"] = "Hover your mouse over any action button to bind it. Press the esc key or right click to clear the current action button's keybinding."
    L["BINDINGS_TRIGGER"] = "Trigger"
    L["BINGSINGS_KEY"] = "Key"
    L["BINGSINGS_CLEAR"] = "All key bindings cleared for"
    L["BINGSINGS_BIND"] = "bound to"
    L["MINIMAP_POS"] = "Minimap Position"
    L["MINIMAP_COORDS"] = "Coordinates"
    L["WORLD_MARKER_DESC"] = "Show menu for placing world markers when in raids."
    L["UP"] = "Up"
    L["DOWN"] = "Down"
    L["LEFT"] = "Left"
    L["RIGHT"] = "Right"
    L["TOP"] = "Top"
    L["BOTTOM"] = "Bottom"
    L["CENTER"] = "Center"
    L["RAID_UNIT_LOST_HEALTH_PREC"] = "Remaining Health Percentage"
    L["SHOW_THREAT_VALUE"] = "Show Threat"
    L["MINIMAP_FPS"] = "Show FPS on minimap"
    L["TARGET_COMBOPOINTS"] = "Show Combo Points on Target"
    L["TARGET_COMBOPOINTS_DEC"] = "Show combo points on target, below the health bar."
    L["PIXEL_PERFECTION"] = "Pixel Perfect Mode"
    L["PIXEL_PERFECTION_DESC"] = "Scales the UI into a Pixel Perfect Mode. This is dependent on screen resolution."
    L["WELCOME_SPLASH_HEADER"] = "Welcome to GW2 UI"
    L["CHANGELOG"] = "Changelog"
    L["WELCOME"] = "Welcome"
    L["PIXEL_PERFECTION_ON"] = "Turn Pixel Perfect Mode On"
    L["PIXEL_PERFECTION_OFF"] = "Turn Pixel Perfect Mode Off"
    L["WELCOME_SPLASH_WELCOME_TEXT"] = "GW2 UI is a full user interface replacement. We have built the user interface with a modular approach, this means that if you dislike a certain part of the addon - or have another you prefer for that function - you can just disable that part, while keeping the rest of the interface intact.\nSome of the modules available to you are an immersive questing window, a full inventory replacement, as well as a full character window replacement. There are many more that you can enjoy, just take a look in the settings menu to see what's available to you!"
    L["WELCOME_SPLASH_WELCOME_TEXT_PP"] = "What is 'Pixel Perfect'?\n\nGW2 UI has a built-in setting called 'Pixel Perfect Mode'. What this means for you is that your user interface will look as was intended, with crisper textures and better scaling. Of course, you can toggle this off in the settings menu should you prefer."
    L["DISCORD"] = "Join Discord"
    L["STANCEBAR_POSITION"] = "Stance Bar Position"
    L["STANCEBAR_POSITION_DESC"] = "Set the position of the stance bar (left or right from the main action bar)."
    L["CURSOR_ANCHOR_TYPE"] = "Cursor Anchor Type"
    L["CURSOR_ANCHOR_TYPE_DESC"] = "Only takes effect if the option 'Cursor Tooltips' is activated"
    L["CURSOR_ANCHOR"] = "Cursor Anchor"
    L["ANCHOR_CURSOR_LEFT"] = "Cursor Anchor Left"
    L["ANCHOR_CURSOR_RIGHT"] = "Cursor Anchor Right"
    L["ANCHOR_CURSOR_OFFSET_X"] = "Cursor Anchor Offset X"
    L["ANCHOR_CURSOR_OFFSET_Y"] = "Cursor Anchor Offset Y"
    L["ANCHOR_CURSOR_OFFSET_DESC"] = "Only takes effect if the option 'Cursor Tooltips' is activated and the cursor anchor is NOT 'Cursor Anchor'"
    L["MOUSE_OVER"] = "Only on Mouse Over"
    L["PLAYER_BUFFS_GROW"] = "Player Buff Growth Direction"
    L["PLAYER_DEBUFFS_GROW"] = "Player Debuffs Growth Direction"
    L["RED_OVERLAY"] = "Red Overlay"
    L["MAINBAR_RANGE_INDICATOR"] = "Main Bar Range Indicator"
    L["PLAYER_ABSORB_VALUE_TEXT"] = "Show Shield Value"
    L["PLAYER_DESC"] = "Modify the player frame settings."
    L["GRID_BUTTON_SHOW"] = "Show grid"
    L["GRID_BUTTON_HIDE"] = "Hide grid"
    L["GRID_SIZE_LABLE"] = "Grid Size:"
    L["HIDE_SETTING_IN_COMBAT"] = "Settings are not available in combat!"
    L["TARGETED_BY"] = "Targeted by:"
    L["ADVANCED_TOOLTIP"] = "Advanced Tooltips"
    L["ADVANCED_TOOLTIP_DESC"] = "Displays additional information in the tooltip (further information is displayed when the SHIFT key is pressed)"
    L["ADVANCED_TOOLTIP_OPTION_ITEMCOUNT"] = "Item Count"
    L["ADVANCED_TOOLTIP_OPTION_ITEMCOUNT_DESC"] = "Display how many of a certain item you have in your possession."
    L["ADVANCED_TOOLTIP_SPELL_ITEM_ID"] = "Spell/Item IDs"
    L["ADVANCED_TOOLTIP_SPELL_ITEM_ID_DESC"] = "Display the spell or item ID when hovering over a spell or item tooltip."
    L["ADVANCED_TOOLTIP_NPC_ID"] = "NPC IDs"
    L["ADVANCED_TOOLTIP_NPC_ID_DESC"] = "Display the NPC ID when hovering over an NPC tooltip."
    L["ADVANCED_TOOLTIP_SHOW_MOUNT"] = "Current Mount"
    L["ADVANCED_TOOLTIP_SHOW_MOUNT_DESC"] = "Display current mount the unit is riding."
    L["ADVANCED_TOOLTIP_SHOW_TARGET_INFO"] = "Target Info"
    L["ADVANCED_TOOLTIP_SHOW_TARGET_INFO_DESC"] = "When in a raid group, show if anyone in your raid is targeting the current tooltip unit."
    L["ADVANCED_TOOLTIP_SHOW_REALM_ALWAYS"] = "Always Show Realm"
    L["ADVANCED_TOOLTIP_SHOW_PLAYER_TITLES_DESC"] ="Display player titles."
    L["ADVANCED_TOOLTIP_SHOW_GUILD_RANKS"] = "Guild Ranks"
    L["ADVANCED_TOOLTIP_SHOW_GUILD_RANKS_DESC"] = "Display guild ranks if a unit is a member of a guild."
    L["ADVANCED_TOOLTIP_SHOW_ROLE_DESC"] = "Display the unit role in the tooltip."
    L["SHOW_JUNK_ICON"] = "Show Junk Icon"
    L["SHOW_QUALITY_COLOR"] = "Show Quality Color"
    L["SHOW_SCRAP_ICON"] = "Show Scrap Icon"
    L["PROFESSION_BAG_COLOR"] = "Show Profession Bag Coloring"
    L["SHOW_UPGRADE_ICON"] = "Show Upgrade Icon"
    L["AURAS_PER_ROW"] = "Auras per row"
    L["AURA_STYLE"] = "Aura Style"
    L["UP_AND_RIGHT"] = "Up and right"
    L["DOWN_AND_RIGHT"] = "Down and right"
    L["SECURE"] = "Secure"
    L["VENDOR_GRAYS"] = "Sell junk automatically"
    L["SELLING_JUNK"] = "Selling junk"
    L["SELLING_JUNK_FOR"] = "Sold junk for: %s"
    L["NO_GUILD"] = "No Guild"
    L["AFK_MODE"] = "AFK Mode"
    L["AFK_MODE_DESC"] = "When you go AFK, display the AFK screen."
    L["REPAIRD_FOR"] = "Your items have been repaired for: %s"
    L["REPAIRD_FOR_GUILD"] = "Your items have been repaired using guild bank funds for: %s"
    L["AUTO_REPAIR"] = "Auto Repair"
    L["AUTO_REPAIR_DESC"] = "Automatically repair using the following method when visiting a merchant."
    L["FADE_GROUP_MANAGE_FRAME"] = "Fade Group Manage Button"
    L["FADE_GROUP_MANAGE_FRAME_DESC"] = "The Group Manage Button will fade when you move the cursor away."
    L["HUD_BACKGROUND"] = "Show HUD background"
    L["HUD_BACKGROUND_DESC"] = "The HUD background changes color in the following situations: In Combat, Not In Combat, In Water, Low HP, Ghost"
    L["RAID_SHOW_IMPORTEND_RAID_DEBUFFS"] = "Dungeon & Raid Debuffs"
    L["RAID_SHOW_IMPORTEND_RAID_DEBUFFS_DESC"] = "Show important Dungeon & Raid debuffs"
    L["ALERTFRAMES"] = "Alert Frames"
    L["PLAYER_GROUP_FRAME"] = "Player frame in group"
    L["PLAYER_GROUP_FRAME_DESC"] = "Show your player frame as part of the group"
    L["PLAYER_BUFF_SIZE"] = "Buff size"
    L["PLAYER_DEBUFF_SIZE"] = "Debuff size"
    L["ASCENDING"] = "Ascending"
    L["DESCENDING"] = "Descending"
    L["CLASS_TOTEMS"] = "Class Totems"
    L["TOTEMBAR_GROW_DIRECTION"] = "Class Totems Growth Direction"
    L["TOTEMBAR_SORTING"] = "Class Totems Sorting"
    L["HORIZONTAL"] = "Horizontal"
    L["VERTICAL"] = "Vertical"
    L["DISPLAY_PORTRAIT_DAMAGED"] = "Display Portrait Damage"
    L["DISPLAY_PORTRAIT_DAMAGED_DESC"] = "Display Portrait Damage on this frame"
    L["IMPORT"] = "Import"
    L["DECODE"] = "Decode"
    L["IMPORT_SUCCESSFUL"] = "Import string successfully imported!"
    L["IMPORT_FAILED"] = "Error importing profile: Invalid or corrupt string!"
    L["IMPORT_DECODE_FALIED"] = "Error decoding profile: Invalid or corrupt string!"
    L["IMPORT_DECODE:SUCCESSFUL"] = "Import string successfully decoded!"
    L["EXPORT_PROFILE"] = "Export Profile"
    L["EXPORT_PROFILE_DESC"] = "Profile string to share your settings:"
    L["IMPORT_PROFILE"] = "Import Profile"
    L["IMPORT_PROFILE_DESC"] = "Paste your profile string here to import the profile."
    L["IMPORT_POFILE_BUTTON"] = "Import Profile"
    L["EXPORT"] = "Export"
    L["SMALL_SETTINGS_DEFAULT_DESC"] = "Right click on a moverframe to show extra frame options"
    L["SMALL_SETTINGS_NO_SETTINGS_FOR"] = "No extra frame options for '%s'"
    L["SMALL_SETTINGS_HEADER"] = "Extra Frame Options"
    L["SMALL_SETTINGS_OPTION_SCALE"] = "Scale"
    L["INSTALL_START_HEADER"] = "Installation"
    L["INSTALL_DESCRIPTION_HEADER"] = "GW2 UI installation"
    L["INSTALL_DESCRIPTION_DSC"] = "This short installation process will help you to set up all of the necessary settings used by GW2 UI."
    L["INSTALL_START_BTN"] = "Start installation"
    L["INSTALL_CHAT_DESC"] = "This part sets up your chat window names, positions, and colors."
    L["INSTALL_CHAT_BTN"] = "Setup Chat"
    L["INSTALL_CVARS_DESC"] = "This part sets up your World of Warcraft default options."
    L["INSTALL_CVARS_BTN"] = "Setup CVars"
    L["INSTALL_FINISHED_HEADER"] = "Installation Complete"
    L["INSTALL_FINISHED_DESC"] = "You have now finished installing GW2 UI!"
    L["INSTALL_FINISHED_BTN"] = "Complete"
    L["SIZER_HERO_PANEL"] = "Scale with Right Click"
    L["APPLY_SCALE_TO_ALL_SCALEABELFRAMES"] = "Apply UI scale to all scaleable frames"
    L["APPLY_SCALE_TO_ALL_SCALEABELFRAMES_DESC"] = "Applies the UI scale to all frames, which can be scaled in 'Move HUD' mode."
    L["SEPARATE_BAGS"] = "Separate bags"
    L["ADVANCED_TOOLTIP_SHOW_GENDER"] = "Gender"
    L["ADVANCED_TOOLTIP_SHOW_GENDER_DESC"] = "Displays the player character's gender."
    L["SEPARATE_BAGS_CHANGE_HEADER_TEXT"] = "New Bag Name"
    L["EXTRA_AB_NAME"] = "Boss Button"
    L["ZONE_ANILITY_AB_NAME"] = "Zone Ability"
    L["SEPARATE_BAGS_CHANGE_HEADER_TOOLTIP"] = "Right click to customize the bag title."
    L["REVERSE_NEW_LOOT_TEXT"] = "Loot to leftmost Bag"
    L["GW_COMBAT_TEXT_BLIZZARD_COLOR"] = ": Use Blizzard colors"
    L["GW_COMBAT_TEXT_COMMA_FORMAT"] = ": Show numbers with commas"
    L["PLAYER_DODGEBAR_SPELL"] = "Dodge Bar Ability"
    L["PLAYER_DODGEBAR_SPELL_DESC"] = "Enter the spell ID which should be tracked by the dodge bar.\nIf no ID is entered, the default abilities based on your specialization and talents are tracked."
	
	--Composite
    L["TOPLEFT"] = ("%s %s"):format(L["TOP"], L["LEFT"])
    L["TOPRIGHT"] = ("%s %s"):format(L["TOP"], L["RIGHT"])
    L["BOTTOMLEFT"] = ("%s %s"):format(L["BOTTOM"], L["LEFT"])
    L["BOTTOMRIGHT"] = ("%s %s"):format(L["BOTTOM"], L["RIGHT"])
end

local Locale = GetLocale()
if Locale == "enGB" or Locale == "enUS" then
    GWUseThisLocalization()
end

-- After using this localization or deciding that we don"t need it, remove it from memory.
GWUseThisLocalization = nil
