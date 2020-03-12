-- ptBR localization

local function GWUseThisLocalization()
	-- Create a global variable for the language strings
	GwLocalization = {}
	
	--Fonts
	GwLocalization["FONT_NORMAL"] = "Interface\\AddOns\\GW2_UI\\fonts\\menomonia.ttf"
	GwLocalization["FONT_BOLD"] = "Interface\\AddOns\\GW2_UI\\fonts\\headlines.ttf"
	GwLocalization["FONT_NARROW"] = "Interface\\AddOns\\GW2_UI\\fonts\\menomonia.ttf"
	GwLocalization["FONT_NARROW_BOLD"] = "Interface\\AddOns\\GW2_UI\\fonts\\menomonia.ttf"
	GwLocalization["FONT_LIGHT"] = "Interface\\AddOns\\GW2_UI\\fonts\\menomonia-italic.ttf"
	GwLocalization["FONT_DAMAGE"] = "Interface\\AddOns\\GW2_UI\\fonts\\headlines.ttf"
	
	--Strings
	GwLocalization["ACTION_BAR_FADE"] = "Ocultar Barra de Ações"
	GwLocalization["ACTION_BAR_FADE_DESC"] = "Ocultar Barras de Ações adicionais quando fora de combate."
	GwLocalization["ACTION_BARS_DESC"] = "Usar as Barras de Ações melhoradas pelo GW2 ui"
	GwLocalization["ADV_CAST_BAR"] = "Barra de Conjuração Avançada"
	GwLocalization["ADV_CAST_BAR_DESC"] = "Habilitar ou Desabilitar a Barra de Conjuração Avançada"
	GwLocalization["ALL_BINDINGS_DISCARD"] = "Todas as novas teclas de atalho escolhidas foram descartadas."
	GwLocalization["ALL_BINDINGS_SAVE"] = "Todos os atalhos de teclas foram salvos."
	GwLocalization["AMOUNT_LOAD_ERROR"] = "Quantidade não pôde ser carregada"
	GwLocalization["AURAS_DESC"] = "Altere quais os buffs e debuffs são mostradas."
	GwLocalization["AURAS_IGNORED"] = "Ignorar auras"
	GwLocalization["AURAS_IGNORED_DESC"] = "Lista de nomes de auras que nunca será mostrada."
	GwLocalization["AURAS_MISSING"] = "Buffs em falta."
	GwLocalization["AURAS_MISSING_DESC"] = "Lista de nomes de buffs que só serão mostrados quando estão em falta."
	GwLocalization["AURAS_TOOLTIP"] = "Mostrar ou esconder auras e alterar os indicadores de auras da raid."
	GwLocalization["BAG_NEW_ORDER_FIRST"] = "Novos itens para primeira mochila"
	GwLocalization["BAG_NEW_ORDER_LAST"] = "Novos itens para última mochila"
	GwLocalization["BAG_ORDER_NORMAL"] = "Ordenação Normal de Mochilas"
	GwLocalization["BAG_ORDER_REVERSE"] = "Ordenação de Mochilas Reversa"
	GwLocalization["BAG_SORT_ORDER_FIRST"] = "Organizar para a Primeira Mochila"
	GwLocalization["BAG_SORT_ORDER_LAST"] = "Organizar para a Última Mochila"
	GwLocalization["BANK_COMPACT_ICONS"] = "Ícones Compactos"
	GwLocalization["BANK_EXPAND_ICONS"] = "Ícones Grandes"
	GwLocalization["BINDINGS_DESC"] = "Passe o mouse sobre qualquer botão de ação para vinculá-lo. Pressione a tecla de escape ou clique com o botão direito para limpar a tecla de atalho do botão de ação atual."
	GwLocalization["BINDINGS_TRIGGER"] = "Gatilho"
	GwLocalization["BINGSINGS_BIND"] = "associada a"
	GwLocalization["BINGSINGS_CLEAR"] = "Todas as teclas atalho removidas para"
	GwLocalization["BINGSINGS_KEY"] = "Tecla"
	GwLocalization["BOTTOM"] = "debaixo"
	GwLocalization["BUTTON_ASSIGNMENTS"] = "Atribuições dos Botões de Ação"
	GwLocalization["BUTTON_ASSIGNMENTS_DESC"] = "Habilitar ou Desabilitar as atribuições dos Botões de Ação"
	GwLocalization["CASTING_BAR_DESC"] = "Habilitar a Barra de Conjuração estilo GW2"
	GwLocalization["CENTER"] = "centro"
	GwLocalization["CHANGELOG"] = "Lista de alterações"
	GwLocalization["CHARACTER_NEXT_RANK"] = "PRÓXIMO"
	GwLocalization["CHARACTER_NOT_LOADED"] = "Não carregado."
	GwLocalization["CHARACTER_OUTFITS_DELETE"] = "Tem certeza que deseja deletar a vestimenta?"
	GwLocalization["CHARACTER_OUTFITS_SAVE"] = "Tem certeza que deseja salvar a vestimenta?"
	GwLocalization["CHARACTER_PARAGON"] = "Paragon"
	GwLocalization["CHARACTER_REPUTATION_TRACK"] = "Mostrar como uma barra"
	GwLocalization["CHAT_BUBBLES"] = "Balões de Conversa"
	GwLocalization["CHAT_BUBBLES_DESC"] = "Substituir os Balões de conversa da UI padrão"
	GwLocalization["CHAT_FADE"] = "Ocultar conversa"
	GwLocalization["CHAT_FADE_DESC"] = "Permitir que a conversa seja ocultada quando não estiver em uso."
	GwLocalization["CHAT_FRAME_DESC"] = "Habilitar janela de conversa aprimorada."
	GwLocalization["CHRACTER_WINDOW_DESC"] = "Substituir a janela de personagem padrão."
	GwLocalization["CLASS_COLOR_DESC"] = "Mostrar a cor da classe como barra de vida."
	GwLocalization["CLASS_COLOR_RAID_DESC"] = "Usar a cor da classe em vez dos ícones das classes."
	GwLocalization["CLASS_POWER"] = "Recurso da Classe"
	GwLocalization["CLASS_POWER_DESC"] = "Habilitar os recursos de classe alternativos."
	GwLocalization["CLICK_TO_TRACK"] = "Clique para rastrear"
	GwLocalization["COMPACT_ICONS"] = "Ícones Compactos"
	GwLocalization["COMPASS_TOGGLE"] = "Habilitar Bússola"
	GwLocalization["COMPASS_TOGGLE_DESC"] = "Habilitar ou desabilitar a bússola do rastreador de missões."
	GwLocalization["DAMAGED_OR_BROKEN_EQUIPMENT"] = "Equipamento danificado ou quebrado"
	GwLocalization["DEBUFF_DISPELL_DESC"] = "Mostra apenas os efeitos negativos que você é capaz de remover."
	GwLocalization["DISABLED_MA_BAGS"] = "Disabilitada a interação com mochilas do MoveAnything"
	GwLocalization["DOWN"] = "por baixo"
	GwLocalization["DYNAMIC_HUD"] = "Interface dinâmica"
	GwLocalization["DYNAMIC_HUD_DESC"] = "Habilitar ou desabilitar interface de fundo que se ajusta dinamicamente."
	GwLocalization["EXP_BAR_TOOLTIP_EXP_RESTED"] = "Descansado "
	GwLocalization["EXP_BAR_TOOLTIP_EXP_RESTING"] = " (Descansando)"
	GwLocalization["EXPAND_ICONS"] = "Ícones Grandes"
	GwLocalization["FADE_MICROMENU"] = "Esconder o Menu-barra"
	GwLocalization["FADE_MICROMENU_DESC"] = "Esconder o micro-menu principal quando o cursor não estiver próximo."
	GwLocalization["FOCUS_DESC"] = "Modificar as configurações da unidade do foco."
	GwLocalization["FOCUS_FRAME_DESC"] = "Habilitar a substituição da unidade do alvo do foco."
	GwLocalization["FOCUS_TARGET_DESC"] = "Mostrar a unidade do alvo do foco."
	GwLocalization["FOCUS_TOOLTIP"] = "Editar as configurações da unidade do foco."
	GwLocalization["FONTS"] = "Fontes"
	GwLocalization["FONTS_DESC"] = "Substituir as fontes padrão pelas fontes do GW2 UI."
	GwLocalization["GROUND_MARKER"] = "MM"
	GwLocalization["GROUP_DESC"] = "Edite as opções de grupo e raide para se adaptar às suas necessidades."
	GwLocalization["GROUP_FRAMES"] = "Unidades do Grupo"
	GwLocalization["GROUP_FRAMES_DESC"] = "Substituir as unidades de grupo da interface padrão."
	GwLocalization["GROUP_TOOLTIP"] = "Editar as configurações de grupo."
	GwLocalization["HEALTH_GLOBE"] = "Globo de Vida"
	GwLocalization["HEALTH_GLOBE_DESC"] = "Habilitar a substituição da barra de vida."
	GwLocalization["HEALTH_PERCENTAGE_DESC"] = "Mostrar a vida como porcentagem. Pode substituir ou ser usada junto com o Valor de Vida."
	GwLocalization["HEALTH_VALUE_DESC"] = "Mostrar vida como um valor numérico."
	GwLocalization["HIDE_EMPTY_SLOTS"] = "Ocultar Espaços Vazios"
	GwLocalization["HIDE_EMPTY_SLOTS_DESC"] = "Ocultar os espaços vazios das barras de ações."
	GwLocalization["HUD_CAT"] = "Interface"
	GwLocalization["HUD_CAT_1"] = "Interface"
	GwLocalization["HUD_DESC"] = "Edite os módulos da Interface para maior customização."
	GwLocalization["HUD_MOVE_ERR"] = "Você não pode mover elementos durante o combate!"
	GwLocalization["HUD_SCALE"] = "Escala da Interface"
	GwLocalization["HUD_SCALE_DESC"] = "Mudar o tamanho da Interface."
	GwLocalization["HUD_SCALE_TINY"] = "Minúscula"
	GwLocalization["HUD_TOOLTIP"] = "Editar os módulos da Interface."
	GwLocalization["INDICATOR_BAR"] = "barra de progresso"
	GwLocalization["INDICATOR_DESC"] = "Alterar o indicador %s de auras de raid."
	GwLocalization["INDICATOR_TITLE"] = "Indicador %s"
	GwLocalization["INDICATORS"] = "Indicadores de Raid"
	GwLocalization["INDICATORS_DESC"] = "Alterar indicadores de auras de raid."
	GwLocalization["INDICATORS_ICON"] = "Mostrar o ícone de feitiço"
	GwLocalization["INDICATORS_ICON_DESC"] = "Mostrar os ícones de feitiço invés de quadrados monocromáticos."
	GwLocalization["INDICATORS_TIME"] = "Mostrar o tempo restante."
	GwLocalization["INDICATORS_TIME_DESC"] = "Mostrar o tempo restante das auras com uma sobreposição animada."
	GwLocalization["INVENTORY_FRAME_DESC"] = "Habilitar a interface de inventário unificado."
	GwLocalization["LEFT"] = "esquerda"
	GwLocalization["LEVEL_REWARDS"] = "Recompensas dos Próximos Níveis"
	GwLocalization["MAP_CLOCK_LOCAL_REALM"] = "Shift+Clique para alternar entre horário Local ou do Servidor"
	GwLocalization["MAP_CLOCK_MILITARY"] = "Clique com Botão Esquerdo para habilitar horário em formato militar"
	GwLocalization["MAP_CLOCK_STOPWATCH"] = "Clique com Botão Direito para abrir o Cronômetro"
	GwLocalization["MAP_CLOCK_TIMEMANAGER"] = "Shift-Botão Direito para abrir o Time Manager"
	GwLocalization["MINIMAP_COORDS"] = "Coordenadas"
	GwLocalization["MINIMAP_DESC"] = "Usar a unidade de Minimapa do GW2 UI"
	GwLocalization["MINIMAP_HOVER"] = "Detalhes do Minimapa"
	GwLocalization["MINIMAP_HOVER_TOOLTIP"] = "Sempre mostrar detalhes do Minimapa."
	GwLocalization["MINIMAP_POS"] = "Posição do mini-mapa"
	GwLocalization["MINIMAP_SCALE"] = "Escala do Minimapa"
	GwLocalization["MINIMAP_SCALE_DESC"] = "Alterar o tamanho do Minimapa."
	GwLocalization["MODULES_CAT"] = "MÓDULOS"
	GwLocalization["MODULES_CAT_1"] = "Módulos"
	GwLocalization["MODULES_CAT_TOOLTIP"] = "Habilitar e desabilitar componentes"
	GwLocalization["MODULES_DESC"] = "Habilite ou desabilite os módulos que você precisa ou não precisa."
	GwLocalization["MODULES_TOOLTIP"] = "Habilitar ou desabilitar módulos da Interface."
	GwLocalization["MOUSE_TOOLTIP"] = "Informações Adicionais do Cursor"
	GwLocalization["MOUSE_TOOLTIP_DESC"] = "Ancorar as informações adicionais ao cursor."
	GwLocalization["MOVE_HUD_BUTTON"] = "Mover Interface"
	GwLocalization["NAME_LOAD_ERROR"] = "Nome não pôde ser carregado"
	GwLocalization["NOT_A_LEGENDARY"] = "Você não pode aprimorar aquele item."
	GwLocalization["PET_BAR_DESC"] = "Usar a barra de Pet aprimorada do GW2 UI."
	GwLocalization["PIXEL_PERFECTION"] = "Modo Pixel Perfection"
	GwLocalization["PIXEL_PERFECTION_DESC"] = "Redimensiona o UI para o modo Pixel Perfection. Dependerá da resolução da tela."
	GwLocalization["PIXEL_PERFECTION_OFF"] = "Desactivar Pixel Perfection"
	GwLocalization["PIXEL_PERFECTION_ON"] = "Activar Pixel Perfection"
	GwLocalization["PLAYER_AURAS_DESC"] = "Mover e redimensionar as auras dos jogadores."
	GwLocalization["POWER_BARS_RAID_DESC"] = "Exibe as barras de recursos nas unidades da raide."
	GwLocalization["PROFILES_CAT"] = "PERFIS"
	GwLocalization["PROFILES_CAT_1"] = "Perfis"
	GwLocalization["PROFILES_CREATED"] = "Criado: "
	GwLocalization["PROFILES_CREATED_BY"] = "\nCriado por: "
	GwLocalization["PROFILES_DEFAULT_SETTINGS"] = "Configurações Padrão"
	GwLocalization["PROFILES_DEFAULT_SETTINGS_DESC"] = "Carregar as configurações padrão do addon no perfil atual."
	GwLocalization["PROFILES_DEFAULT_SETTINGS_PROMPT"] = "Tem certeza que deseja carregar as configurações padrão?  Todas as configurações anteriores serão perdidas."
	GwLocalization["PROFILES_DELETE"] = "Tem certeza que deseja deletar este perfil?"
	GwLocalization["PROFILES_DESC"] = "Perfis são uma forma fácil de compartilhas suas configurações entre personagens e reinos."
	GwLocalization["PROFILES_LAST_UPDATE"] = "\nÚltima atualização:"
	GwLocalization["PROFILES_LOAD_BUTTON"] = "Carregar"
	GwLocalization["PROFILES_MISSING_LOAD"] = "Se você vê esta mensagem, é porque esquecemos de carregar algum texto. Não se preocupe, nós temos bastante texto de amostra como este para mantê-lo informado."
	GwLocalization["PROFILES_TOOLTIP"] = "Adicione e remova perfis."
	GwLocalization["QUEST_REQUIRED_ITEMS"] = "Itens Necessários:"
	GwLocalization["QUEST_TRACKER_DESC"] = "Habilitar o rastreador de missões remodelado e aprimorado."
	GwLocalization["QUEST_VIEW_SKIP"] = "Pular"
	GwLocalization["QUESTING_FRAME"] = "Missões Imersivas"
	GwLocalization["QUESTING_FRAME_DESC"] = "Habilitar o modo de Missões Imersivas."
	GwLocalization["RAID_ANCHOR"] = "Definir fixador da Raide"
	GwLocalization["RAID_ANCHOR_BY_GROWTH"] = "Por direção de crescimento"
	GwLocalization["RAID_ANCHOR_BY_POSITION"] = "Por posição na tela"
	GwLocalization["RAID_ANCHOR_DESC"] = "Defina onde o quadro da raide deve ser fixado. Por posição: sempre o mesmo que a posição do quadro na tela.\nPor crescimento: sempre oposto à direção de crescimento."
	GwLocalization["RAID_AURA_TOOLTIP_IN_COMBAT"] = "Mostrar as dicas da aura em combate"
	GwLocalization["RAID_AURA_TOOLTIP_IN_COMBAT_DESC"] = "Mostrar dicas dos buffs e debuffs mesmo quando está em combate."
	GwLocalization["RAID_BAR_HEIGHT"] = "Ajustar a Altura das Unidades de Raide"
	GwLocalization["RAID_BAR_HEIGHT_DESC"] = "Ajustar a altura das unidades de raide."
	GwLocalization["RAID_BAR_WIDTH"] = "Ajustar a Largura das Unidades de Raide"
	GwLocalization["RAID_BAR_WIDTH_DESC"] = "Ajustar a largura das unidades de raide."
	GwLocalization["RAID_CONT_HEIGHT"] = "Ajustar a Altura do Quadro da Raide"
	GwLocalization["RAID_CONT_HEIGHT_DESC"] = "Ajuste a altura máxima com que as unidades de raide podem ser exibidas."
	GwLocalization["RAID_CONT_WIDTH"] = "Ajustar comprimento do Quadro da Raide"
	GwLocalization["RAID_CONT_WIDTH_DESC"] = "Defina a largura máxima que os quadros da raide podem ser exibidos. Isso fará com que os quadros encolham ou passem para a próxima linha."
	GwLocalization["RAID_GROW"] = "Ajustar a direção do crescimento da Raide"
	GwLocalization["RAID_GROW_DESC"] = "Ajustar a direção do crescimento dos quadros da Raide."
	GwLocalization["RAID_GROW_DIR"] = "%s e depois %s"
	GwLocalization["RAID_MARKER_DESC"] = "Mostra os Marcadores Alvo nas Unidades da Raide"
	GwLocalization["RAID_PARTY_STYLE_DESC"] = "Configura as unidades do grupo como unidades de raide."
	GwLocalization["RAID_PREVIEW"] = "Pré-visualizar os quadros da raide"
	GwLocalization["RAID_PREVIEW_DESC"] = "Clique para alternar a visualização do quadro da raide e percorra os diferentes tamanhos de grupos."
	GwLocalization["RAID_SORT_BY_ROLE"] = "Ordenar quadros de raid por função"
	GwLocalization["RAID_SORT_BY_ROLE_DESC"] = "Ordenar quadros de raid por função (tank, heal, dano) invés de por grupo."
	GwLocalization["RAID_UNIT_FLAGS"] = "Mostrar bandeira do país"
	GwLocalization["RAID_UNIT_FLAGS_2"] = "Diferentes do seu próprio"
	GwLocalization["RAID_UNIT_FLAGS_TOOLTIP"] = "Mostrar a bandeira do país baseado no idioma da unidade"
	GwLocalization["RAID_UNIT_LOST_HEALTH_PREC"] = "Percentagem restante de vida"
	GwLocalization["RAID_UNITS_PER_COLUMN"] = "Ajustar unidades da raid por coluna"
	GwLocalization["RAID_UNITS_PER_COLUMN_DESC"] = "Ajustar o numero de unidades da raide por coluna ou linha, dependendo da direção de crescimento."
	GwLocalization["RESOURCE_DESC"] = "Substitui a barra de recurso/mana padrão."
	GwLocalization["RIGHT"] = "Direita"
	GwLocalization["SETTING_LOCK_HUD"] = "Travar Interface"
	GwLocalization["SETTINGS_BUTTON"] = "Configurações do GW2 UI"
	GwLocalization["SETTINGS_NO_LOAD_ERROR"] = "Algum texto não foi carregado, por favor tente recarregar a interface."
	GwLocalization["SETTINGS_RESET_TO_DEFAULT"] = "Resetar para o Padrão."
	GwLocalization["SETTINGS_SAVE_RELOAD"] = "Salvar e Recarregar"
	GwLocalization["SHOW_ALL_DEBUFFS_DESC"] = "Mostrar todos os efeitos negativos no alvo."
	GwLocalization["SHOW_BUFFS_DESC"] = "Mostrar os efeitos positivos no alvo."
	GwLocalization["SHOW_DEBUFFS_DESC"] = "Mostrar os efeitos negativos no alvo que foram causados por você."
	GwLocalization["SHOW_ILVL"] = "Mostrar a média do item level"
	GwLocalization["SHOW_ILVL_DESC"] = "Mostrar a média do nível de item invés do nível de prestigio para unidades amigáveis."
	GwLocalization["SHOW_THREAT_VALUE"] = "Mostrar nível de ameaça"
	GwLocalization["STG_RIGHT_BAR_COLS"] = "Largura da barra direita"
	GwLocalization["STG_RIGHT_BAR_COLS_DESC"] = "Número de colunas nas duas barras de ação extras da direita. "
	GwLocalization["TALENTS_BUTTON_DESC"] = "Habilitar substituição de talentos, especialização e livro de magias."
	GwLocalization["TARGET_COMBOPOINTS"] = "Mostrar pontos de combo no alvo"
	GwLocalization["TARGET_COMBOPOINTS_DEC"] = "Mostrar pontos de combo no alvo, debaixo da barra de vida"
	GwLocalization["TARGET_DESC"] = "Modificar as configurações da unidade do alvo."
	GwLocalization["TARGET_FRAME_DESC"] = "Habilitar a substituição da unidade do alvo."
	GwLocalization["TARGET_OF_TARGET_DESC"] = "Habilitar a unidade do alvo do alvo."
	GwLocalization["TARGET_TOOLTIP"] = "Editar as configurações da unidade do alvo."
	GwLocalization["TOOLTIPS"] = "Descrições"
	GwLocalization["TOOLTIPS_DESC"] = "Substituir as descrições da Interface padrão."
	GwLocalization["TOP"] = "Topo"
	GwLocalization["TRACKER_RETRIVE_CORPSE"] = "Retorne ao seu corpo"
	GwLocalization["UNEQUIP_LEGENDARY"] = "Você precisar desequipar aquele item para poder aprimorá-lo."
	GwLocalization["UP"] = "por cima"
	GwLocalization["UPDATE_STRING_1"] = "Nova atualização disponível para download."
	GwLocalization["UPDATE_STRING_2"] = "Nova atualização disponível com características novas."
	GwLocalization["UPDATE_STRING_3"] = "Uma atualização |cFFFF0000maior|r está disponível. É altamente recomendado que você atualize."
	GwLocalization["WELCOME"] = "Bem vindo "
	GwLocalization["WELCOME_SPLASH_HEADER"] = "Bem vindo ao GW2 UI"
	GwLocalization["WELCOME_SPLASH_WELCOME_TEXT"] = "GW2 UI é uma substituição completa da interface do usuário. Criamos a interface do usuário com uma abordagem modular, isso significa que, se você não gosta de uma certa parte do complemento - ou tem outra que prefere para essa função - você pode simplesmente desativar essa parte, mantendo o restante da interface intacta.\nAlguns dos módulos disponíveis para você são uma janela imersiva de missões, uma substituição completa do inventário e uma substituição completa da janela de personagem. Você pode desfrutar de muito mais, basta dar uma olhada no menu de configurações para ver o que está disponível para você!"
	GwLocalization["WELCOME_SPLASH_WELCOME_TEXT_PP"] = "O que é 'Pixel Perfection'?\n\nA GW2 UI possui uma configuração interna chamada 'Modo Pixel Perfection'. O que isso significa para você é que a interface do usuário terá a aparência desejada, com texturas mais nítidas e melhor escala. Obviamente, você pode desativar isso no menu de configurações, se preferir."
	GwLocalization["WORLD_MARKER_DESC"] = "Mostrar menu para colocar marcadores quando está em raide."
	GwLocalization["DISCORD"] = "Join Discord"
	GwLocalization["FUTURE_SPELLS"] = "Future Spells"
	GwLocalization["STANCEBAR_POSITION"] = "Position of the Stancebar"
	GwLocalization["STANCEBAR_POSITION_DESC"] = "Set the position of the Stancebar (Left or Right from the main Actionbar)"
	GwLocalization['CURSOR_ANCHOR_TYPE'] = "Cursor Anchor Type"
	GwLocalization["CURSOR_ANCHOR_TYPE_DESC"] = "Take only effect if the option 'Cursor Tooltips' is activated"
	GwLocalization['CURSOR_ANCHOR'] = "Cursor Anchor"
	GwLocalization['ANCHOR_CURSOR_LEFT'] = 'Cursor Anchor left'
	GwLocalization['ANCHOR_CURSOR_RIGHT'] = 'Cursor Anchor right'
	GwLocalization['ANCHOR_CURSOR_OFFSET_X'] = 'Cursor Anchor Offset X'
	GwLocalization['ANCHOR_CURSOR_OFFSET_Y'] = 'Cursor Anchor Offset Y'
	GwLocalization["ANCHOR_CURSOR_OFFSET_DESC"] = "Take only effect if the option 'Cursor Tooltips' is activated and the Cursoer Anchor is NOT 'Cursor Anchor'"
	GwLocalization["MOUSE_OVER"] = "Only Mouse over"
	GwLocalization["PLAYER_AURA_GROW"] = "Set Player Aura grow directions"
	GwLocalization["PLAYER_DESC"] = "Modify the player frame settings."
	GwLocalization["RED_OVERLAY"] = "Red overlay"
	GwLocalization["MAINBAR_RANGE_INDICATOR"] = "Mainbar range indicator"

	--Composite
	GwLocalization["TOPLEFT"] = ("%s %s"):format(GwLocalization["TOP"], GwLocalization["LEFT"])
	GwLocalization["TOPRIGHT"] = ("%s %s"):format(GwLocalization["TOP"], GwLocalization["RIGHT"])
	GwLocalization["BOTTOMLEFT"] = ("%s %s"):format(GwLocalization["BOTTOM"], GwLocalization["LEFT"])
	GwLocalization["BOTTOMRIGHT"] = ("%s %s"):format(GwLocalization["BOTTOM"], GwLocalization["RIGHT"])
end
	
	
if GetLocale() == "ptBR" then
	GWUseThisLocalization()
end

-- After using this localization or deciding that we don"t need it, remove it from memory.
GWUseThisLocalization = nil