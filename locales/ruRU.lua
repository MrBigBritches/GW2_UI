-- ruRU localization
local L = LibStub("AceLocale-3.0"):NewLocale("GW2_UI", "ruRU")
if not L then return end

--Fonts
L['FONT_NORMAL'] = 'Interface/AddOns/GW2_UI/fonts/menomonia.ttf' 
L['FONT_BOLD'] = 'Interface/AddOns/GW2_UI/fonts/headlines.ttf' 
L['FONT_NARROW'] = 'Interface/AddOns/GW2_UI/fonts/menomonia.ttf'
L['FONT_NARROW_BOLD'] = 'Interface/AddOns/GW2_UI/fonts/menomonia.ttf'
L['FONT_LIGHT'] = 'Interface/AddOns/GW2_UI/fonts/menomonia-italic.ttf'
L['FONT_DAMAGE'] = 'Interface/AddOns/GW2_UI/fonts/headlines.ttf'

--Strings
L["Use the GW2 UI improved action bars."] = "Использовать интерфейс GW2 UI для панелей."
L["Fade Action Bars"] = "Скрывать панели"
L["Advanced Tooltips"] = "Расширенные всплывающие подсказки"
L["Displays additional information in the tooltip (further information is displayed when the SHIFT key is pressed)"] = "Отображение дополнительной информации во всплывающей подсказке (дополнительная информация отображается при нажатии клавиши SHIFT)"
L["Item Count"] = "Количество предметов"
L["Display how many of a certain item you have in your possession."] = "Отображает количество определенного предмета в вашем распоряжении."
L["Gender"] = "Пол"
L["Displays the player character's gender."] = "Отображение пола игровых персонажей."
L["Display guild ranks if a unit is a member of a guild."] = "Отображение рангов гильдии, если цель является членом гильдии."
L["Current Mount"] = "Текущий транспорт"
L["Display current mount the unit is riding."] = "Отображает текущее средство передвижения цели."
L["Display player titles."] = "Отображает звания игроков."
L["Always Show Realm"] = "Всегда показывать мир игрока"
L["Display the unit role in the tooltip."] = "Отображение роли цели во всплывающей подсказке."
L["Target Info"] = "Информация о цели"
L["When in a raid group, show if anyone in your raid is targeting the current tooltip unit."] = "Находясь в рейдовой группе, покажет, нацелен ли кто-либо в вашем рейде на текущую цель во всплывающей подсказке."
L["Advanced Casting Bar"] = "Информативный кастбар"
L["Enable or disable the advanced casting bar."] = "Включить или выключить дополнительную индикацию кастбара."
L["AFK Mode"] = "Режим AFK"
L["When you go AFK, display the AFK screen."] = "Отображение специального экрана, когда вы переходите в состояние 'Отсутствует'."
L["Alert Frames"] = "Фреймы предупреждений"
L["Cursor Anchor Left"] = "Крепление слева от курсора"
L["Only takes effect if the option 'Cursor Tooltips' is activated and the cursor anchor is NOT 'Cursor Anchor'"] = "Действует только в том случае, если активирована опция \"Всплывающие подсказки курсора\" и используется нестандартное крепление к курсору."
L["Cursor Anchor Offset X"] = "Смещение крепления курсора по X"
L["Cursor Anchor Offset Y"] = "Смещение крепления курсора по Y"
L["Cursor Anchor Right"] = "Крепление справа от курсора"
L["Apply UI scale to all scaleable frames"] = "Глобальный масштаб HUD"
L["Applies the UI scale to all frames, which can be scaled in 'Move HUD' mode."] = "Применение масштаба пользовательского интерфейса ко всем элементам интерфейса, которые можно масштабировать в режиме \"Интерфейс\"."
L["Ascending"] = "По возрастанию"
L["Auras per row"] = "Ауры в ряд"
L["Aura Style"] = "Стиль ауры"
L["Auto Repair"] = "Авторемонт"
L["Automatically repair using the following method when visiting a merchant."] = "Автоматическая починка при следующем посещении продавца."
L["Reverse Bag Order"] = "Обратный порядок сумок"
L["Sort to Last Bag"] = "Сортировка c последней сумки"
L["Compact Icons"] = "Уменьшить иконки"
L["Action Button Labels"] = "Отображение назначенных клавиш"
L["Enable or disable the action button assignment text"] = "Включить или выключить отображение назначенных клавиш на кнопках на панели задач."
L["Enable the GW2 style casting bar."] = "Использовать стиль GW2 UI для кастбара."
L["Changelog"] = "Изменения"
L["Paragon"] = "Образец"
L["Replace the default UI chat bubbles. (Only in not protected areas)"] = "Замена стандартных облачков чата. (Работает только в незащищенных местах)"
L["Fade Chat"] = "Затемнение чата"
L["Allow the chat to fade when not in use."] = "Затемнять неактивный чат."
L["Enable the improved chat window."] = "Использовать стиль GW2 UI для окна чата."
L["Replace the default character window."] = "Использовать стиль GW2 UI для окна персонажа."
L["Display the class color as the health bar."] = "Окрасить рамку цели в цвет класса."
L["Use the class color instead of class icons."] = "Использовать цвета вместо иконок классов."
L["Class Power"] = "Индикатор личного ресурса"
L["Enable the alternate class powers."] = "Заменить стандартный индикатор личного ресурса."
L["Class Totems"] = "Классовые тотемы"
L["Toggle Compass"] = "Компас"
L["Enable or disable the quest tracker compass."] = "Включить или отключить компас для заданий."
L["Copy of"] = "Копия"
L["Cursor Anchor"] = "Крепление у курсора"
L["Cursor Anchor Type"] = "Тип крепления у курсора"
L["Only takes effect if the option 'Cursor Tooltips' is activated"] = "Действует только в случае, когда активирована опция \"Всплывающие подсказки у курсора\""
L["Only displays the debuffs that you are able to dispell."] = "Отображает только те дебаффы, которые вы можете рассеять."
L["Decode"] = "Декодировать"
L["Descending"] = "По убыванию"
L["MoveAnything bag handling disabled."] = "Отключить обработку сумок аддоном MoveAnything."
L["Join Discord"] = "Discord"
L["Display Portrait Damage"] = "Отображение урона на портрете"
L["Display Portrait Damage on this frame"] = "Отображение урона внутри портрета персонажа"
L["Down"] = "Bниз"
L["Down and right"] = "Bниз и вправо"
L["Dynamic HUD"] = "Динамические эффекты HUD"
L["Enable or disable the dynamically changing HUD background."] = "Включить или отключить динамические визуальные эффекты интерфейса."
L["Export"] = "Экспорт"
L["Export Profile"] = "Экспортируемый профиль"
L["Profile string to share your settings:"] = "Строка профиля, чтобы поделиться своими настройками:"
L["Rested "] = "Состояние бодрости"
L[" (Resting)"] = "(Вы отдыхаете)"
L["Boss Button"] = "Кнопка Босса"
L["Fade Group Manage Button"] = "Скрыть кнопку управления группой"
L["The Group Manage Button will fade when you move the cursor away."] = "Кнопка управления группой исчезнет, когда вы уберете курсор."
L["Fade Menu Bar"] = "Скрыть панель меню"
L["The main menu icons will fade when you move your cursor away."] = "Панель меню исчезнет, когда вы уберете курсор."
L["Modify the focus frame settings."] = "Настроить рамку запомненной цели."
L["Enable the focus target frame replacement."] = "Использовать стиль GW2 UI для рамки запомненной цели."
L["Display the focus target frame."] = "Отображение рамки запомненной цели."
L["Fonts"] = "Шрифты"
L["Replace the default fonts withGw2 UI fonts."] = "Заменить шрифты по умолчанию на шрифты GW 2 UI"
L["Hide grid"] = "Скрыть сетку"
L["Show grid"] = "Показать сетку"
L["Grid Size:"] = "Размер сетки:"
L["WM"] = "Панель меток"
L["Edit the party and raid options to suit your needs."] = "Настройки окон группы и рейда."
L["Group Frames"] = "Окно группы"
L["Replace the default UI group frames."] = "Использовать стиль GW2 UI для рейд-фреймов."
L["Edit the group settings."] = "Изменить настройки рейд-фреймов."
L[": Use Blizzard colors"] = ": Использовать цветовую схему Blizzard"
L[": Show numbers with commas"] = ": Отображение десятичных чисел"
L["Health Globe"] = "Панель здоровья"
L["Enable the health bar replacement."] = "Использовать стиль GW2 UI для полосы здоровья."
L["Display health as a percentage. Can be used as well as, or instead of Health Value."] = "Отображать здоровье в процентах. Можно использовать вместе с цифровым значением."
L["Show health as a numerical value."] = "Цифровое обозначение здоровья."
L["Hide Empty Slots"] = "Скрыть пустые слоты"
L["Hide the empty action bar slots."] = "Скрыть пустые слоты на панели команд."
L["Settings are not available in combat!"] = "Настройки недоступны в бою!"
L["Horizontal"] = "По горизонтали"
L["Show HUD background"] = "Отображение фона HUD"
L["The HUD background changes color in the following situations: In Combat, Not In Combat, In Water, Low HP, Ghost"] = "Цвет фона интерфейса меняется в зависимости от ситуаций: в бою, не в бою, в воде, низкий уровень HP, призрак"
L["Edit the modules in the Heads-Up Display for more customization."] = "Настройка элементов интерфейса для большей кастомизации."
L["You can not move elements during combat!"] = "Вы не можете перемещать элементы интерфейса в бою!"
L["HUD Scale"] = "Масштаб HUD"
L["Change the HUD size."] = "Изменить размер HUD."
L["Edit the HUD modules."] = "Редактирование HUD модулей"
L["Import"] = "Импорт"
L["Import string successfully decoded!"] = "Импорт успешно завершен!"
L["Error decoding profile: Invalid or corrupt string!"] = "Ошибка в декодирование профиля: недопустимая или поврежденная строка!"
L["Error importing profile: Invalid or corrupt string!"] = "Ошибка импорта профиля: недопустимая или поврежденная строка!"
L["Import Profile"] = "Импортировать профиль"
L["Paste your profile string here to import the profile."] = "Вставьте сюда строки своего профиля, чтобы импортировать его."
L["Import string successfully imported!"] = "Импорт успешно завершен!"
L["Raid Indicators"] = "Индикация в рейде"
L["Edit raid aura indicators."] = "Редактирование индикаторов рейдовых аур."
L["Show Spell Icons"] = "Отображение иконок способностей"
L["Show spell icons instead of monochrome squares."] = "Отображать стандартные иконки способностей."
L["Show Remaining Time"] = "Отобразить отсчет времени"
L["Show the remaining aura time as an animated overlay."] = "Отображать анимацию отсчёта времени."
L["Edit %s raid aura indicator."] = "Настроить %s индикатор ауры."
L["%s Indicator"] = "%s индикатор"
L["Setup Chat"] = "Настройка чата"
L["This part sets up your chat window names, positions, and colors."] = "В этой части настраиваются имена, позиции и цвета окон чата."
L["Setup CVars"] = "Установка CVars"
L["This part sets up your World of Warcraft default options."] = "Эта часть устанавливает параметры World of Warcraft по умолчанию."
L["This short installation process will help you to set up all of the necessary settings used by GW2 UI."] = "Этот короткий процесс установки поможет вам настроить все необходимые настройки, используемые GW2 UI."
L["GW2 UI installation"] = "Установка пользовательского интерфейса GW2"
L["Complete"] = "Завершить"
L["You have now finished installing GW2 UI!"] = "Установка пользовательского интерфейса GW2 успешно завершена"
L["Installation Complete"] = "Установка завершена"
L["Start installation"] = "Начать установку"
L["Installation"] = "Установка"
L["Enable the unified inventory interface."] = "Включить единый стиль интерфейса для инвентаря."
L["Left"] = "Cлева"
L["Upcoming Level Rewards"] = "Награда за уровень"
L["Main Bar Range Indicator"] = "Индикатор проверки расстояния основной панели навыков"
L["Map Coordinates"] = "Координаты карты"
L["Left Click to toggle higher precision coordinates."] = "Щелкните левой кнопкой мыши, чтобы переключить на координаты более высокой точности."
L["Micro Bar"] = "Микроменю"
L["Coordinates"] = "Координаты"
L["Show Coordinates on Minimap"] = "Отображение координат на мини-карте"
L["Use the GW2 UI Minimap frame."] = "Использовать мини-карту в стиле GW2 UI"
L["Show FPS on minimap"] = "Отображение FPS на мини-карте"
L["Minimap details"] = "Элементы миникарты"
L["Always show Minimap details."] = "Постоянное отображение выбранных элементов миникарты."
L["Minimap Scale"] = "Машстаб мини-карты"
L["Change the Minimap size."] = "Изменить размер мини-карты."
L["MODULES"] = "Модули"
L["Modules"] = "Модули"
L["Enable and disable components"] = "Включить или выключить модули"
L["Enable or disable the modules you need and don't need."] = "Включить или выключить модули интерфейса, которые вам нужны."
L["Only on Mouse Over"] = "Только при наведении курсора мыши"
L["Cursor Tooltips"] = "Подсказки под курсором"
L["Anchor the tooltips to the cursor."] = "Прикрепить всплывающие подсказки к курсору."
L["Move HUD"] = "Интерфейс"
L["No Guild"] = "Нет гильдии"
L["Use the GW2 UI improved Pet bar."] = "Использовать интерфейс GW2 UI для панели питомца."
L["Pixel Perfect Mode"] = "Режим Pixel Perfection"
L["Scales the UI into a Pixel Perfect Mode. This is dependent on screen resolution."] = "Масштаб интерфейса под режим Pixel Perfection."
L["Turn Pixel Perfect Mode On"] = "Включить режим Pixel Perfection"
L["Show Shield Value"] = "Отобразить значение щита"
L["Move and resize the player auras."] = "Переместить ауры и бафы игрока."
L["Player Buff Growth Direction"] = "Направление вектора роста баффов игрока"
L["Buff size"] = "Размер баффов"
L["Player Debuffs Growth Direction"] = "Направление вектора роста дебаффов игроков"
L["Debuff size"] = "Размер дебаффов"
L["Modify the player frame settings."] = "Изменение настроек фрейма игрока."
L["Dodge Bar Ability"] = "Способность индикатора уклонения"
L["Enter the spell ID which should be tracked by the dodge bar.\nIf no ID is entered, the default abilities based on your specialization and talents are tracked."] = "Укажите ID навыка, который должен отслеживаться индикатором уклонения.\nВ случае отсутствия ID, навык индикатора будет зависеть от вашей специализации и талантов."
L["Player frame in group"] = "Фрейм игрока в группе"
L["Show your player frame as part of the group"] = "Покажите свой фрейм игрока как часть группы"
L["Display the power bars on the raid units."] = "Отобразить индикаторы личного ресурса в рейд-фрейме."
L["Show Profession Bag Coloring"] = "Отобразить цвет сумок для профессий"
L["PROFILES"] = "Профили"
L["Profiles"] = "Профили"
L["Created: "] = "Создан:"
L["\nCreated by: "] = "\nСоздал:"
L["Default Settings"] = "Настройки по умолчанию"
L["Load the default addon settings to the current profile."] = "Сбросить настройки аддона по умолчанию для текущего профиля."
L["Are you sure you want to load the default settings?\n\nAll previous settings will be lost."] = "Вы уверены, что вы хотите сбросить настройки по умолчанию?\n\nВсе предыдущие настройки будут утеряны."
L["Are you sure you want to delete this profile?"] = "Вы уверены, что вы хотите удалить этот профиль?"
L["Profiles are an easy way to share your settings across characters and realms."] = "Профили помогут легко применять настройки для любых персонажей и серверов."
L["\nLast updated: "] = "\nПоследнее обновление:"
L["Load"] = "Сброс"
L["Text has not loaded."] = "Текст не загрузился."
L["Add and remove profiles."] = "Добавление и удаление профилей."
L["Immersive Questing"] = "Задания с улучшенным погружением"
L["Enable the immersive questing view."] = "Использовать оформление заданий в стиле GW2."
L["Required Items:"] = "Необходимые предметы:"
L["Enable the revamped and improved quest tracker."] = "Использовать интерфейс GW2 UI для отображения заданий."
L["Skip"] = "Продолжить"
L["Set Raid Anchor"] = "Привязка окна рейда"
L["By growth direction"] = "K вектору роста фреймов"
L["By position on screen"] = "K позиции на экране"
L["Set where the raid frame container should be anchored.\n\nBy position: Always the same as the container's position on screen.\nBy growth: Always opposite to the growth direction."] = "Выберите привязку окна рейда.\n\nК позиции: Всегда там же, где и фрейм-контейнер на экране.\nК вектору: Всегда против вектора роста фреймов."
L["Raid Auras"] = "Рейдовые ауры"
L["Edit which buffs and debuffs are shown."] = "Изменить отображение баффов и дебаффов."
L["Ignored Auras"] = "Игнорировать ауры"
L["A list of auras that should never be shown."] = "Список аур, которые никогда не должны быть показаны."
L["Missing Buffs"] = "Не хватает баффов"
L["A list of buffs that should only be shown when they are missing."] = "Отображать баффы из списка, только если их нет."
L["Show or hide auras and edit raid aura indicators."] = "Настроить отображение аур и индикации на панелях."
L["Show Aura Tooltips in Combat"] = "Отобразить подсказки ауры в бою"
L["Show tooltips of buffs and debuffs even when you are in combat."] = "Отобразить подсказки к баффам и дебаффам даже когда вы в бою."
L["Set Raid Unit Height"] = "Установить высоту рейда"
L["Set the height of the raid units."] = "Установить высоту рейдовых юнит-фреймов."
L["Set Raid Unit Width"] = "Установить ширину рейда"
L["Set the width of the raid units."] = "Установить ширину рейдовых юнит-фреймов."
L["Set Raid Frame Container Height"] = "Установить высоту окна рейда"
L["Set the maximum height that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next column."] = "Установить максимальную высоту для окна рейда.\n\nЭто уменьшит высоту юнит-фреймов или сдвинет их в соседний столбец."
L["Set Raid Frame Container Width"] = "Установить ширину окна рейда"
L["Set the maximum width that the raid frames can be displayed.\n\nThis will cause unit frames to shrink or move to the next row."] = "Установить максимальную ширину для окна рейда.\n\nЭто уменьшит ширину юнит-фреймов или сдвинет их на другую строку."
L["Set Raid Growth Direction"] = "Установить вектор роста фреймов"
L["Set the grow direction for raid frames."] = "Выберите вектор роста рейдовых фреймов."
L["%s and then %s"] = "%s и потом %s"
L["Displays the Target Markers on the Raid Unit Frames"] = "Отобразить метки цели на рейдовых юнит-фреймах."
L["Preview Raid Frames"] = "Предпросмотр фреймов"
L["Click to toggle raid frame preview and cycle through different group sizes."] = "Включите предпросмотр фреймов и переключайтесь между размерами группы."
L["Dungeon & Raid Debuffs"] = "Дебаффы подземелий и рейдов"
L["Show important Dungeon & Raid debuffs"] = "Отобразить важные дебаффы подземелий и рейдов"
L["Sort Raid Frames by Role"] = "Сортировка по ролям"
L["Sort raid unit frames by role (tank, heal, damage) instead of group."] = "Отсортировать юнит-фреймы по ролям (танк, лекарь, боец) вместо сортировки по группам."
L["Set Raid Units per Column"] = "Число юнит-фреймов в столбце"
L["Set the number of raid unit frames per column or row, depending on grow directions."] = "Установить число рейдовых юнит-фреймов в столбцах или строках в зависимости от вектора роста фреймов."
L["Show Country Flag"] = "Отобразить флаг страны"
L["Different Than Own"] = "Только другие страные"
L["Display a country flag based on the unit's language"] = "Отобразить флаги стран игроков по языку серверов"
L["Red Overlay"] = "Красный оверлей"
L["Your items have been repaired for: %s"] = "Ваша экипировка была отремонтирована на сумму: %s"
L["Your items have been repaired using guild bank funds for: %s"] = "Ваша экипировка была отремонтирована за счет банка гильдии на сумму: %s"
L["Replace the default mana/power bar."] = "Заменить стандартную панель основного ресурса (мана, энергия и т.д.)."
L["Loot to leftmost Bag"] = "Собирать добычу в крайнюю левую сумку"
L["Right"] = "Cправа"
L["Secure"] = "Безопасный"
L["Selling junk"] = "Продажа хлама"
L["Separate bags"] = "Раздельные сумки"
L["New Bag Name"] = "Новое название сумки"
L["Right click to customize the bag title."] = "Щелкните правой кнопкой мыши, чтобы настроить название сумки."
L["Save and Reload"] = "Применить"
L["Lock HUD"] = "Закрепить HUD"
L["Display all of the target's debuffs."] = "Отображать все отрицательные эффекты на цели."
L["Display the target's buffs."] = "Отображать положительные эффекты на цели."
L["Display the target's debuffs that you have inflicted."] = "Отображать только наложенные вами отрицательные эффекты."
L["Display Average Item Level"] = "Отображать средний iLvL"
L["Display the average item level instead of prestige level for friendly units."] = "Отображать средний уровень предметов вместо уровня чести на союзных целях."
L["Show Junk Icon"] = "Отобразить значок хлама"
L["Show Quality Color"] = "Отобразить цвет качества"
L["Show Scrap Icon"] = "Отобразить значок утили"
L["Show Threat"] = "Уровень угрозы цели"
L["Show Upgrade Icon"] = "Отобразить значок обновления"
L["Scale with Right Click"] = "Масштабирование правой кнопкой мыши"
L["Right click on a moverframe to show extra frame options"] = "Щелкните правой кнопкой мыши на moverframe, чтобы показать дополнительные параметры фрейма"
L["Extra Frame Options"] = "Дополнительные параметры фрейма"
L["No extra frame options for '%s'"] = "Для фрейма '%s' отсутствуют дополнительные параметры"
L["Scale"] = "Масштаб"
L["Stance Bar Position"] = "Позиция стоек"
L["Set the position of the stance bar (left or right from the main action bar)."] = "Установка положения стойки (слева или справа от основной панели действий)."
L["Right Bar Width"] = "Ширина доп. панелей"
L["Number of columns in the two extra right-hand action bars."] = "Количество столбцов в двух дополнительных правых панелях команд."
L["Enable the talents, specialization, and spellbook replacement."] = "Заменить стиль оформления талантов, специализации и заклинаний."
L["Targeted by:"] = "Является целью:"
L["Show Combo Points on Target"] = "Отображать очки комбо на цели"
L["Show combo points on target, below the health bar."] = "Отображать очки комбо на цели под полосой здоровья."
L["Modify the target frame settings."] = "Изменить настройки рамки цели."
L["Enable the target frame replacement."] = "Заменить рамку цели."
L["Enable the target of target frame."] = "Включить отображение цели выбранной цели."
L["Edit the target frame settings."] = "Изменить настройки рамок целей."
L["Tooltips"] = "Подсказки"
L["Replace the default UI tooltips."] = "Заменить стандартный интерфейс для подсказок."
L["Modifier for IDs"] = "Модификатор ID"
L["Top"] = "Bверху"
L["Class Totems Growth Direction"] = "Направление вектора роста тотемов класса"
L["Class Totems Sorting"] = "Сортировка классовых тотемов"
L["Retrieve your corpse"] = "Найдите ваше тело"
L["Up"] = "Bверх"
L["New update available for download."] = "Доступно новое обновление для загрузки."
L["New update available containing new features."] = "Доступно обновление с новыми возможностями."
L["A |cFFFF0000major|r update is available.\nIt's strongly recommended that you update."] = "Доступно обновление |cFFFF0000крупное|r.\nНастоятельно рекомендуем обновиться."
L["Up and right"] = "Bверх и вправо"
L["Sell junk automatically"] = "Автоматическая продажа хлама"
L["Vertical"] = "По вертикали"
L["Welcome"] = "Инфо"
L["Welcome to GW2 UI"] = "Приветствуем в GW2 UI"
L["GW2 UI is a full user interface replacement. We have built the user interface with a modular approach, this means that if you dislike a certain part of the addon - or have another you prefer for that function - you can just disable that part, while keeping the rest of the interface intact.\nSome of the modules available to you are an immersive questing window, a full inventory replacement, as well as a full character window replacement. There are many more that you can enjoy, just take a look in the settings menu to see what's available to you!"] = "GW2 UI - полная замена пользовательского интерфейса. Мы создали модульный UI, его суть в том, что если вам не нравится определенная часть аддона или у вас есть другой аддон для той же функции, вы можете просто отключить эту часть, оставив остальной интерфейс нетронутым.\nНекоторые из доступных вам модулей - это захватывающее окно квестов, полная замена инвентаря, а также полная замена окна персонажа. Здесь полно того, что вам понравится, просто зайдите в меню настроек, чтобы увидеть все доступные опции!"
L["What is 'Pixel Perfect'?\n\nGW2 UI has a built-in setting called 'Pixel Perfect Mode'. What this means for you is that your user interface will look as was intended, with crisper textures and better scaling. Of course, you can toggle this off in the settings menu should you prefer."] = "Что такое 'Pixel Perfection'?\n\nВ GW2 UI есть режим с таким названием. Он создан, чтобы ваш UI выглядел, как задумано, с четкими текстурами и лучшим масштабированием. Конечно, по желанию вы можете отключить этот режим в настройках."
L["Show Coordinates on World Map"] = "Отображение координат на мировой карте"
L["Show menu for placing world markers when in raids."] = "Отображать панель с метками цели пока вы в рейде."
L["Zone Ability"] = "Локационная способность"
L["GW2 UI Update"] = "GW2 UI Обновить"
L["Bar"] = "Индикатор"
L["Top Left"] = "Вверху слева"
L["Top Right"] = "Вверху справа"
L["Center"] = "Центр"
L["Player frame in target frame style"] = "Кадр игрока в стиле целевой рамки"
L["PvP Indicator"] = "Индикатор PvP"
L["Invert target frame"] = true
L["Invert focus frame"] = true
L["Talking Head"] = "Говорящая голова"
L["Skins"] = "Скины"
L["Adjust Skin settings."] = "Установки скинов"
L["Blizzard Class Colors"] = true
L["Popup notifications"] = true
L["Looking for Group notifications"] = true
L["Misc Frames"] = "Прочие фреймы"
L["Developed by"] = true
L["With Contributions by"] = true
L["Localised by"] = true
L["QA Testing by"] = true
L["Credits"] = "Благодарности"
L["Socket Frame"] = "Инкрустирование"
L["Grays"] = true
L["Reset Character Data: Hold Shift + Right Click"] = true
L["Reset Session Data: Hold Ctrl + Right Click"] = true
L["Session:"] = "За сеанс:"
L["Earned:"] = "Заработано:"
L["Spent:"] = "Потрачено:"
L["Deficit:"] = "Убыток:"
L["Profit:"] = "Прибыль:"
L["Gossip Frame"] = "Диалоги"
L["Saved Raid(s)"] = true
L["Saved Dungeon(s)"] = true
L["Daily Reset"] = true
L["Right Click to change Talent Specialization"] = true
L["Legacy: Sorted by duration but auras can't cancel via right click in combat\nSecure: Not sorted but auras can cancel via right click in combat"] = true
