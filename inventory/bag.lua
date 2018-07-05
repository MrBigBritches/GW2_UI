local _, GW = ...
local CommaValue = GW.CommaValue
local GetSetting = GW.GetSetting
local SetSetting = GW.SetSetting

local BAG_ITEM_SIZE = 40
local BAG_ITEM_LARGE_SIZE = 40
local BAG_ITEM_COMPACT_SIZE = 32
local BAG_ITEM_PADDING = 5
local BAG_CURRENCY_SIZE = 32
local BAG_WINDOW_SIZE = 480
local BAG_WINDOW_CONTENT_HEIGHT = 0

local default_bag_frame = {
    "MainMenuBarBackpackButton",
    "CharacterBag0Slot",
    "CharacterBag1Slot",
    "CharacterBag2Slot",
    "CharacterBag3Slot"
}

local default_bag_frame_container = {
    "ContainerFrame1",
    "ContainerFrame2",
    "ContainerFrame3",
    "ContainerFrame4",
    "ContainerFrame5",
    "ContainerFrame6"
}

local function bagFrameHide()
    GwBagMoverFrame:Hide()
    GwBagFrameResize:Hide()
    CloseAllBags()
end

local function bagFrameShow()
    GwBagMoverFrame:Show()
    GwBagFrameResize:Show()
end

local function moveBagbar()
    local y = 25

    for k, v in pairs(default_bag_frame) do
        local fv = _G[v]

        fv:ClearAllPoints()
        fv:SetParent(GwBagFrame)
        fv:SetPoint("TOPLEFT", GwBagFrame, "TOPLEFT", -35, -y)
        _G[v .. "IconTexture"]:SetTexCoord(0.1, 0.9, 0.1, 0.9)
        fv:SetNormalTexture(nil)
        fv:SetHighlightTexture(nil)
        fv.IconBorder:SetTexture(nil)

        if v == "MainMenuBarBackpackButton" then
            MainMenuBarBackpackButton:SetSize(32, 32)
        -- resize it
        end

        local s = fv:GetScript("OnClick")
        fv:SetScript(
            "OnClick",
            function(self, b)
                if b == "RightButton" then
                    local parent = _G[default_bag_frame_container[k]]
                    PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
                    ToggleDropDownMenu(1, nil, parent.FilterDropDown, self, 32, 32)
                    if v == "MainMenuBarBackpackButton" then
                        BackpackButton_UpdateChecked(fv)
                    else
                        BagSlotButton_UpdateChecked(fv)
                    end
                else
                    s(fv)
                end
            end
        )

        y = y + 32
    end
end

local function updateMoney(self)
    if not self then
        return
    end
    local money = GetMoney()

    local gold = math.floor(money / (COPPER_PER_SILVER * SILVER_PER_GOLD))
    local silver = math.floor((money - (gold * COPPER_PER_SILVER * SILVER_PER_GOLD)) / COPPER_PER_SILVER)
    local copper = mod(money, COPPER_PER_SILVER)

    self.bronze:SetText(copper)
    self.silver:SetText(silver)
    self.gold:SetText(CommaValue(gold))
end

local function updateFreeSlots()
    local free = 0
    local full = 0

    for i = 0, NUM_BAG_SLOTS do
        free = free + GetContainerNumFreeSlots(i)
        full = full + GetContainerNumSlots(i)
    end

    free = full - free
    local bag_space_string = free .. " / " .. full
    GwBagFrame.spaceString:SetText(bag_space_string)
end

local function createItemBackground(name)
    return CreateFrame("Frame", "GwBagItemBackdrop" .. name, GwBagFrame, "GwBagItemBackdrop")
end

local function updateBagIcons(smooth)
    moveBagbar()
    local x = 8
    local y = 72
    local mx = 0
    local gwbf = GwBagFrame
    local winsize = BAG_WINDOW_SIZE
    if smooth then
        winsize = gwbf:GetWidth()
    end
    winsize = math.max(508, winsize)

    local bStart = 1
    local bEnd = 5
    local bStep = 1
    if GetSetting("BAG_REVERSE_SORT") then
        bStart = 5
        bEnd = 1
        bStep = -1
    end
    for BAG_INDEX = bStart, bEnd, bStep do
        local cfm = "ContainerFrame" .. tostring(BAG_INDEX)

        if _G[cfm] and _G[cfm]:IsShown() then
            for i = 40, 1, -1 do
                local slot = _G[cfm .. "Item" .. i]
                if slot and slot:IsShown() then
                    if x > (winsize - 40) then
                        mx = math.max(mx, x)
                        x = 8
                        y = y + BAG_ITEM_SIZE + BAG_ITEM_PADDING
                    end

                    local slotIcon = _G[cfm .. "Item" .. i .. "IconTexture"]
                    local slotNormalTexture = _G[cfm .. "Item" .. i .. "NormalTexture"]
                    local slotQuesttexture = _G[cfm .. "Item" .. i .. "IconQuestTexture"]
                    local slotCount = _G[cfm .. "Item" .. i .. "Count"]
                    local backdrop = _G["GwBagItemBackdrop" .. cfm .. "Item" .. i]
                    if backdrop == nil then
                        backdrop = createItemBackground(cfm .. "Item" .. i)
                    end
                    backdrop:SetParent(_G[cfm])
                    backdrop:SetFrameLevel(1)

                    backdrop:SetPoint("TOPLEFT", gwbf, "TOPLEFT", x, -y)
                    backdrop:SetPoint("TOPRIGHT", gwbf, "TOPLEFT", x + BAG_ITEM_SIZE, -y)
                    backdrop:SetPoint("BOTTOMLEFT", gwbf, "TOPLEFT", x, -y - BAG_ITEM_SIZE)
                    backdrop:SetPoint("BOTTOMRIGHT", gwbf, "TOPLEFT", x + BAG_ITEM_SIZE, -y - BAG_ITEM_SIZE)

                    _G["GwBagContainer" .. (BAG_INDEX - 1)]:SetSize(x, y)

                    slot:ClearAllPoints()

                    slot:SetFrameLevel(43)
                    slot:SetPoint("TOPLEFT", gwbf, "TOPLEFT", x, -y)
                    slot:SetPoint("TOPRIGHT", gwbf, "TOPLEFT", x + BAG_ITEM_SIZE, -y)
                    slot:SetPoint("BOTTOMLEFT", gwbf, "TOPLEFT", x, -y - BAG_ITEM_SIZE)
                    slot:SetPoint("BOTTOMRIGHT", gwbf, "TOPLEFT", x + BAG_ITEM_SIZE, -y - BAG_ITEM_SIZE)

                    if slotCount then
                        slotCount:ClearAllPoints()
                        slotCount:SetPoint("TOPRIGHT", slotCount:GetParent(), "TOPRIGHT", 0, -3)
                        slotCount:SetFont(UNIT_NAME_FONT, 12, "THINOUTLINED")
                        slotCount:SetJustifyH("RIGHT")
                    end

                    if slot.IconBorder then
                        slot.IconBorder:SetTexture("Interface\\AddOns\\GW2_UI\\textures\\bag\\bagitemborder")
                        slot.IconBorder:SetSize(BAG_ITEM_SIZE, BAG_ITEM_SIZE)
                        if slot.IconBorder.GwhasBeenHooked == nil then
                            hooksecurefunc(
                                slot.IconBorder,
                                "SetVertexColor",
                                function()
                                    slot.IconBorder:SetTexture(
                                        "Interface\\AddOns\\GW2_UI\\textures\\bag\\bagitemborder"
                                    )
                                end
                            )
                            slot.IconBorder.GwhasBeenHooked = true
                        end
                    end

                    if slotQuesttexture then
                        slotQuesttexture:SetSize(BAG_ITEM_SIZE, BAG_ITEM_SIZE)
                    end
                    if slotNormalTexture then
                        slot:SetNormalTexture("Interface\\AddOns\\GW2_UI\\textures\\bag\\bagnormal")
                    end
                    if slot.flash then
                        slot.flash:SetSize(BAG_ITEM_SIZE, BAG_ITEM_SIZE)
                    end

                    slotIcon:SetTexCoord(0.1, 0.9, 0.1, 0.9)

                    x = x + BAG_ITEM_SIZE + BAG_ITEM_PADDING
                end
            end
        end
    end

    updateFreeSlots()
    if smooth then
        return
    end

    BAG_WINDOW_CONTENT_HEIGHT = math.max(350, y + BAG_ITEM_SIZE + (2 * BAG_ITEM_PADDING))
    if mx ~= 0 then
        BAG_WINDOW_SIZE = mx + BAG_ITEM_PADDING
    end
    SetSetting("BAG_WIDTH", BAG_WINDOW_SIZE)
    gwbf:SetSize(BAG_WINDOW_SIZE, BAG_WINDOW_CONTENT_HEIGHT)
end

local function compactToggle()
    if BAG_ITEM_SIZE == BAG_ITEM_LARGE_SIZE then
        BAG_ITEM_SIZE = BAG_ITEM_COMPACT_SIZE
        SetSetting("BAG_ITEM_SIZE", BAG_ITEM_SIZE)
        updateBagIcons()
        return GwLocalization["EXPAND_ICONS"] --Local?
    end

    BAG_ITEM_SIZE = BAG_ITEM_LARGE_SIZE
    SetSetting("BAG_ITEM_SIZE", BAG_ITEM_SIZE)
    updateBagIcons()
    return GwLocalization["COMPACT_ICONS"] --Local?
end

local function currency_OnClick(self)
    if not self.CurrencyID or not self.CurrencyIdx then
        return
    end
    local _, _, _, _, isWatched, _ = GetCurrencyListInfo(self.CurrencyIdx)
    local toggle = 1
    if isWatched then
        toggle = 0
    end
    SetCurrencyBackpack(self.CurrencyIdx, toggle)
end

local function currency_OnEnter(self)
    if not self.CurrencyID or not self.CurrencyIdx then
        return
    end
    GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
    GameTooltip:ClearLines()
    GameTooltip:SetCurrencyToken(self.CurrencyIdx)
    GameTooltip:AddLine(GwLocalization["CLICK_TO_TRACK"], 1, 1, 1)
    GameTooltip:Show()
end

local function loadCurrency()
    local USED_CURRENCY_HEIGHT
    local zebra

    local curwin = GwCurrencyWindow
    local offset = HybridScrollFrame_GetOffset(curwin)
    local currencyCount = GetCurrencyListSize() + 1
    for i = 1, #curwin.buttons do
        local slot = curwin.buttons[i]

        local idx = i + offset - 1
        if idx <= 0 or idx >= currencyCount then
            -- empty row (blank starter row, final row, and any empty entries)
            slot.item:Hide()
            slot.item.CurrencyID = nil
            slot.item.CurrencyIdx = nil
            slot.header:Hide()
        else
            local count, icon, maximum
            local name, isHeader, _, _, isWatched, _ = GetCurrencyListInfo(idx)
            if isHeader then
                slot.item:Hide()
                slot.item.CurrencyID = nil
                slot.item.CurrencyIdx = nil
                slot.header.spaceString:SetText(name)
                slot.header:Show()
            else
                slot.header:Hide()

                -- parse out the currency ID to get more accurate info
                local link = GetCurrencyListLink(idx)
                local _, _, _, _, curid, _ =
                    string.find(
                    link,
                    "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*)|?h?%[?([^%]%[]*)%]?|?h?|?r?"
                )
                name, count, icon, _, _, maximum, _, _ = GetCurrencyInfo(curid)
                slot.item.CurrencyID = curid
                slot.item.CurrencyIdx = idx

                -- set currency item values
                slot.item.spaceString:SetText(name)
                if maximum == 0 then
                    slot.item.amount:SetText(CommaValue(count))
                else
                    slot.item.amount:SetText(CommaValue(count) .. " / " .. CommaValue(maximum))
                end
                slot.item.icon:SetTexture(icon)

                -- set zebra color by idx or watch status
                zebra = idx % 2
                if isWatched then
                    slot.item.zebra:SetVertexColor(1, 1, 0.5, 0.15)
                else
                    slot.item.zebra:SetVertexColor(zebra, zebra, zebra, 0.05)
                end

                slot.item:Show()
            end
        end
    end

    USED_CURRENCY_HEIGHT = BAG_CURRENCY_SIZE * (currencyCount + 1)
    HybridScrollFrame_Update(curwin, USED_CURRENCY_HEIGHT, BAG_CURRENCY_SIZE)
end

local function watchCurrency()
    local watchSlot = 1
    local currencyCount = GetCurrencyListSize()
    for i = 1, currencyCount do
        local _, isHeader, _, _, isWatched, count, icon, _ = GetCurrencyListInfo(i)
        if not isHeader and isWatched and watchSlot < 4 then
            GwBagFrame["currency" .. tostring(watchSlot)]:SetText(count)
            GwBagFrame["currency" .. tostring(watchSlot) .. "Texture"]:SetTexture(icon)
            watchSlot = watchSlot + 1
        end
    end

    for i = watchSlot, 3 do
        GwBagFrame["currency" .. tostring(i)]:SetText("")
        GwBagFrame["currency" .. tostring(i) .. "Texture"]:SetTexture(nil)
    end
end

local function currencySetup()
    local curwin = GwCurrencyWindow
    local width = GwBagFrame:GetWidth() - 24
    curwin:SetWidth(width)
    HybridScrollFrame_CreateButtons(curwin, "GwCurrencyRow", 12, 0, "TOPLEFT", "TOPLEFT", 0, 0, "TOP", "BOTTOM")
    for i = 1, #curwin.buttons do
        local slot = curwin.buttons[i]
        slot:SetWidth(curwin:GetWidth() - 12)
        slot.header.spaceString:SetFont(DAMAGE_TEXT_FONT, 14)
        slot.header.spaceString:SetTextColor(1, 1, 1)
        slot.item.spaceString:SetFont(UNIT_NAME_FONT, 12)
        slot.item.spaceString:SetTextColor(1, 1, 1)
        slot.item.amount:SetFont(UNIT_NAME_FONT, 12)
        slot.item.amount:SetTextColor(1, 1, 1)
        slot.item.icon:ClearAllPoints()
        slot.item.icon:SetPoint("LEFT", 0, 0)
        if not slot.item.ScriptsHooked then
            slot.item:HookScript("OnClick", currency_OnClick)
            slot.item:HookScript("OnEnter", currency_OnEnter)
            slot.item:HookScript("OnLeave", GameTooltip_Hide)
            slot.item.ScriptsHooked = true
        end
    end

    loadCurrency()
    watchCurrency()
end

local function hideIcons(b)
    local gwbf = GwBagFrame
    if b then
        OpenAllBags()
        BagItemSearchBox:Show()
        gwbf.spaceString:Show()
        gwbf.buttonSettings:Show()
        gwbf.buttonSort:Show()
        gwbf.currencyWindow:Hide()
        ContainerFrame1:Show()
        watchCurrency()
    else
        BagItemSearchBox:Hide()
        gwbf.spaceString:Hide()
        gwbf.buttonSettings:Hide()
        gwbf.buttonSort:Hide()
        gwbf.currencyWindow:Show()
        CloseAllBags()
        loadCurrency()
        watchCurrency()
    end
end

local function toggleCurrency()
    if GwCurrencyWindow:IsShown() then
        hideIcons(true)
    else
        hideIcons(false)
    end
end

local function CloseBags()
    local o = false

    for i = 1, 12 do
        local cfm = _G["ContainerFrame" .. tostring(i)]
        if cfm and cfm:IsShown() then
            cfm:SetParent(gwNormalBagHolder)
            cfm:ClearAllPoints()
            cfm:SetPoint("RIGHT", gwNormalBagHolder, "LEFT", 0, 0)
            if i < 6 then
                o = true
            end
        end
    end
    if not o and not GwCurrencyWindow:IsShown() then
        GwBagFrame:Hide()
        return
    end
    GwBagFrame:Show()
end
GW.CloseBags = CloseBags

local function relocateSearchBox()
    local sb = BagItemSearchBox

    sb:ClearAllPoints()
    sb:SetFont(UNIT_NAME_FONT, 14)
    sb.Instructions:SetFont(UNIT_NAME_FONT, 14)
    sb.Instructions:SetTextColor(178 / 255, 178 / 255, 178 / 255)
    sb:SetPoint("TOPLEFT", GwBagFrame, "TOPLEFT", 8, -40)
    sb:SetPoint("TOPRIGHT", GwBagFrame, "TOPRIGHT", -8, -40)

    sb.Left:SetTexture(nil)
    sb.Right:SetTexture(nil)
    BagItemSearchBoxSearchIcon:Hide()
    sb.Middle:SetTexture("Interface\\AddOns\\GW2_UI\\textures\\bag\\bagsearchbg")

    sb:SetHeight(24)

    sb.Middle:SetPoint("RIGHT", sb, "RIGHT", 0, 0)

    sb.Middle:SetHeight(24)
    sb.Middle:SetTexCoord(0, 1, 0, 1)
    sb.SetPoint = function()
    end
    sb.ClearAllPoints = function()
    end
end

local function onBagMove(self)
    self:StopMovingOrSizing()
    local saveBagPos = {}
    saveBagPos["point"], _, saveBagPos["relativePoint"], saveBagPos["xOfs"], saveBagPos["yOfs"] = self:GetPoint()
    SetSetting("BAG_POSITION", saveBagPos)
    GwBagFrameResize:SetPoint("BOTTOMRIGHT", GwBagFrame, "BOTTOMRIGHT", 0, 0)
end

local function bagOnResizeStop(self)
    GwBagFrame:SetScript("OnUpdate", nil)
    self:StopMovingOrSizing()

    BAG_WINDOW_SIZE = GwBagFrame:GetWidth()
    updateBagIcons()

    GwBagFrame:ClearAllPoints()
    GwBagFrame:SetPoint("TOPLEFT", GwBagMoverFrame, "TOPLEFT", 20, -40)
    GwBagFrameResize:ClearAllPoints()
    GwBagFrameResize:SetPoint("BOTTOMRIGHT", GwBagFrame, "BOTTOMRIGHT", 0, 0)

    local mfPoint, _, mfRelPoint, mfxOfs, mfyOfs = GwBagMoverFrame:GetPoint()
    local newWidth = GwBagFrame:GetWidth() - 40
    local oldWidth = GwBagMoverFrame:GetWidth()
    if mfPoint == "TOP" then
        mfxOfs = mfxOfs + ((newWidth - oldWidth) / 2)
    elseif mfPoint == "RIGHT" then
        mfxOfs = mfxOfs + (newWidth - oldWidth)
    end
    GwBagMoverFrame:ClearAllPoints()
    GwBagMoverFrame:SetPoint(mfPoint, UIParent, mfRelPoint, mfxOfs, mfyOfs)
    GwBagMoverFrame:SetWidth(newWidth)
    onBagMove(GwBagMoverFrame)
    currencySetup()
end

local function onBagDragUpdate(self)
    local point, relative, framerela, xPos, yPos = GwBagFrameResize:GetPoint()

    local w = self:GetWidth()
    local h = self:GetHeight()

    if w < 508 or h < 340 then
        GwBagFrameResize:StopMovingOrSizing()
    else
        updateBagIcons(true)
    end
end

local function onBagFrameChangeSize(self)
    local w, h = self:GetSize()

    w = math.min(1, w / 512)
    h = math.min(1, h / 512)

    self.Texture:SetTexCoord(0, w, 0, h)
end

local function LoadBag()
    BAG_WINDOW_SIZE = GetSetting("BAG_WIDTH")
    BAG_ITEM_SIZE = GetSetting("BAG_ITEM_SIZE")
    if BAG_ITEM_SIZE > 40 then
        BAG_ITEM_SIZE = 40
        SetSetting("BAG_ITEM_SIZE", 40)
    end

    CreateFrame("Frame", "gwNormalBagHolder", UIParent)
    gwNormalBagHolder:SetPoint("LEFT", UIParent, "RIGHT")
    gwNormalBagHolder:SetFrameStrata("HIGH")

    -- create mover frame, restore its saved position, and setup drag to move
    local bagPos = GetSetting("BAG_POSITION")
    local fm = CreateFrame("Frame", "GwBagMoverFrame", UIParent, "GwBagMoverFrame")
    fm:SetWidth(BAG_WINDOW_SIZE - 40)
    fm:ClearAllPoints()
    fm:SetPoint(bagPos.point, UIParent, bagPos.relativePoint, bagPos.xOfs, bagPos.yOfs)
    fm:RegisterForDrag("LeftButton")
    fm:HookScript(
        "OnDragStart",
        function(self)
            self:StartMoving()
        end
    )
    fm:HookScript("OnDragStop", onBagMove)

    -- create bag frame, restore its saved size, and init its many pieces
    local f = CreateFrame("Frame", "GwBagFrame", UIParent, "GwBagFrame")
    tinsert(UISpecialFrames, "GwBagFrame")
    f:SetWidth(BAG_WINDOW_SIZE)
    updateBagIcons()

    f.headerString:SetFont(DAMAGE_TEXT_FONT, 24)
    f.headerString:SetText(GwLocalization["INVENTORY_TITLE"])

    f.spaceString:SetFont(UNIT_NAME_FONT, 12)
    f.spaceString:SetTextColor(1, 1, 1)
    f.spaceString:SetShadowColor(0, 0, 0, 0)
    updateFreeSlots()

    f.bronze:SetFont(UNIT_NAME_FONT, 12)
    f.bronze:SetTextColor(177 / 255, 97 / 255, 34 / 255)
    f.silver:SetFont(UNIT_NAME_FONT, 12)
    f.silver:SetTextColor(170 / 255, 170 / 255, 170 / 255)
    f.gold:SetFont(UNIT_NAME_FONT, 12)
    f.gold:SetTextColor(221 / 255, 187 / 255, 68 / 255)
    updateMoney(f)

    f:SetScript(
        "OnEvent",
        function(self, event, ...)
            if event == "PLAYER_MONEY" then
                updateMoney(self)
            end
        end
    )
    f:RegisterEvent("PLAYER_MONEY")

    -- setup settings button and its dropdown items
    f.buttonSort:HookScript(
        "OnClick",
        function(self)
            PlaySound(SOUNDKIT.UI_BAG_SORTING_01)
            SortBags()
        end
    )
    f.buttonSort:HookScript(
        "OnEnter",
        function(self)
            GameTooltip:SetOwner(self, "ANCHOR_LEFT", 0, -40)
            GameTooltip:ClearLines()
            GameTooltip:AddLine(GwLocalization["SORT_BAGS"], 1, 1, 1)
            GameTooltip:Show()
        end
    )
    f.buttonSort:HookScript("OnLeave", GameTooltip_Hide)
    do
        local dd = f.buttonSettings.dropdown
        f.buttonSettings:HookScript(
            "OnClick",
            function(self)
                if dd:IsShown() then
                    dd:Hide()
                else
                    dd:Show()
                end
            end
        )

        dd.compactBags:HookScript(
            "OnClick",
            function(self)
                self:SetText(compactToggle())
                dd:Hide()
            end
        )

        dd.newOrder:HookScript(
            "OnClick",
            function(self)
                if GetInsertItemsLeftToRight() then
                    dd.newOrder:SetText(GwLocalization["BAG_NEW_ORDER_LAST"])
                    SetInsertItemsLeftToRight(false)
                else
                    dd.newOrder:SetText(GwLocalization["BAG_NEW_ORDER_FIRST"])
                    SetInsertItemsLeftToRight(true)
                end
                dd:Hide()
            end
        )

        dd.sortOrder:HookScript(
            "OnClick",
            function(self)
                if GetSortBagsRightToLeft() then
                    dd.sortOrder:SetText(GwLocalization["BAG_SORT_ORDER_FIRST"])
                    SetSortBagsRightToLeft(false)
                else
                    dd.sortOrder:SetText(GwLocalization["BAG_SORT_ORDER_LAST"])
                    SetSortBagsRightToLeft(true)
                end
                dd:Hide()
            end
        )

        dd.bagOrder:HookScript(
            "OnClick",
            function(self)
                if GetSetting("BAG_REVERSE_SORT") then
                    dd.bagOrder:SetText(GwLocalization["BAG_ORDER_REVERSE"])
                    SetSetting("BAG_REVERSE_SORT", false)
                else
                    dd.bagOrder:SetText(GwLocalization["BAG_ORDER_NORMAL"])
                    SetSetting("BAG_REVERSE_SORT", true)
                end
                updateBagIcons()
                dd:Hide()
            end
        )

        if BAG_ITEM_SIZE == BAG_ITEM_LARGE_SIZE then
            dd.compactBags:SetText(GwLocalization["COMPACT_ICONS"])
        else
            dd.compactBags:SetText(GwLocalization["EXPAND_ICONS"])
        end
        if GetInsertItemsLeftToRight() then
            dd.newOrder:SetText(GwLocalization["BAG_NEW_ORDER_FIRST"])
        else
            dd.newOrder:SetText(GwLocalization["BAG_NEW_ORDER_LAST"])
        end
        if GetSortBagsRightToLeft() then
            dd.sortOrder:SetText(GwLocalization["BAG_SORT_ORDER_LAST"])
        else
            dd.sortOrder:SetText(GwLocalization["BAG_SORT_ORDER_FIRST"])
        end
        if GetSetting("BAG_REVERSE_SORT") then
            dd.bagOrder:SetText(GwLocalization["BAG_ORDER_NORMAL"])
        else
            dd.bagOrder:SetText(GwLocalization["BAG_ORDER_REVERSE"])
        end
    end

    -- setup close button
    f.buttonClose:HookScript(
        "OnClick",
        function(self)
            local f = self:GetParent()
            CloseAllBags()
            if f.currencyWindow:IsShown() then
                f:Hide()
            end
        end
    )

    -- setup resizer stuff
    f:HookScript("OnSizeChanged", onBagFrameChangeSize)
    GwBagFrameResize:RegisterForDrag("LeftButton")
    GwBagFrameResize:HookScript(
        "OnDragStart",
        function(self)
            self:StartMoving()
            GwBagFrame:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", 0, 0)
            GwBagFrame:SetScript("OnUpdate", onBagDragUpdate)
        end
    )
    GwBagFrameResize:HookScript("OnDragStop", bagOnResizeStop)

    f:SetScript("OnHide", bagFrameHide)
    f:SetScript("OnShow", bagFrameShow)
    f:Hide()

    -- setup the currency window as a HybridScrollFrame and init each of the faux frame buttons
    local curwin = f.currencyWindow
    curwin.update = loadCurrency
    curwin.scrollBar.doNotHide = true
    f.currency1:SetFont(UNIT_NAME_FONT, 12)
    f.currency1:SetTextColor(1, 1, 1)
    f.currency2:SetFont(UNIT_NAME_FONT, 12)
    f.currency2:SetTextColor(1, 1, 1)
    f.currency3:SetFont(UNIT_NAME_FONT, 12)
    f.currency3:SetTextColor(1, 1, 1)
    currencySetup()

    -- update currency window when a currency update event occurs
    curwin:SetScript(
        "OnEvent",
        function(self, event, ...)
            if event == "CURRENCY_DISPLAY_UPDATE" then
                if self:IsShown() then
                    loadCurrency()
                end
                watchCurrency()
            end
        end
    )
    curwin:RegisterEvent("CURRENCY_DISPLAY_UPDATE")

    -- update currency window when anyone adds a watch currency
    hooksecurefunc(
        "SetCurrencyBackpack",
        function()
            if GwCurrencyWindow:IsShown() then
                loadCurrency()
            end
            watchCurrency()
        end
    )

    -- enable the bag window button to toggle between inv and currency
    GwCurrencyIcon:HookScript("OnClick", toggleCurrency)

    -- hook into default bag frames to re-use default bag bars and search box
    for i = 1, #default_bag_frame_container do
        local fv = _G[default_bag_frame_container[i]]
        fv:SetFrameStrata("HIGH")
        fv:SetFrameLevel(5)

        local fc = _G["GwBagContainer" .. tostring(i - 1)]
        local relocate = nil
        if i == 1 then
            relocate = relocateSearchBox
        end
        if fv and i < 6 then
            fv:HookScript(
                "OnShow",
                function()
                    hideIcons(true)
                    CloseBags()
                    if relocate then
                        relocate()
                    end
                    updateBagIcons()
                    if fc then
                        fc:Show()
                    end
                end
            )
            fv:HookScript(
                "OnHide",
                function()
                    CloseBags()
                    updateBagIcons()
                    if fc then
                        fc:Hide()
                    end
                end
            )
        end
    end
    BagItemSearchBox:SetScript(
        "OnEvent",
        function(self, event, ...)
            if event == "BAG_UPDATE" or event == "BAG_UPDATE_DELAYED" then
                relocateSearchBox()
                updateBagIcons()
            --updateFreeSlots()
            end
        end
    )
    BagItemSearchBox:RegisterEvent("BAG_UPDATE_DELAYED")
    BagItemSearchBox:RegisterEvent("BAG_UPDATE")
end
GW.LoadBag = LoadBag
