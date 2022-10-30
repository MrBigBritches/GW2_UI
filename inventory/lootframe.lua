local _, GW = ...
local RegisterMovableFrame = GW.RegisterMovableFrame
local GetSetting = GW.GetSetting

local function updateLootFrameButtons(self)
    for i = 1, self.ScrollTarget:GetNumChildren() do
        local button = select(i, self.ScrollTarget:GetChildren())
        local item = button.Item
        local Icon = item.icon:GetTexture()
        item:StripTextures()
        item.icon:SetTexture(Icon)

        GW.HandleIcon(item.icon, true, GW.constBackdropFrameColorBorder)
        GW.HandleIconBorder(item.IconBorder, item.icon.backdrop)

        button.BorderFrame:SetAlpha(0)
        button.IconQuestTexture:SetAlpha(0)

        item.IconBorder:SetTexture("Interface/AddOns/GW2_UI/textures/bag/bagitemborder")

        button.NameFrame:SetTexture("Interface\\AddOns\\GW2_UI\\textures\\character\\menu-hover")
        button.NameFrame:SetHeight(button:GetHeight())
        button.NameFrame:SetPoint("LEFT", button, "RIGHT", 0, 0)

        button.Text:SetFont(UNIT_NAME_FONT, 12)
    end
end

local function LoadLootFrameSkin()
    if not GetSetting("LOOTFRAME_SKIN_ENABLED") then return end

    LootFrame:StripTextures()
    LootFrameBg:Hide()
    LootFrameTitleText:Hide()

    local GwLootFrameTitle = CreateFrame("Frame", "asdasda", LootFrame, "GwLootFrameTitleTemp")
    GwLootFrameTitle:SetPoint("BOTTOMLEFT", LootFrame, "TOPLEFT", 0, -25)
    GwLootFrameTitle.headerString:SetFont(DAMAGE_TEXT_FONT, 14)
    GwLootFrameTitle.headerString:SetTextColor(255 / 255, 241 / 255, 209 / 255)

    local w, _ = LootFrame:GetSize()
    GwLootFrameTitle:SetWidth(w)
    GwLootFrameTitle.BGLEFT:SetWidth(w)
    GwLootFrameTitle.BGRIGHT:SetWidth(w)
    GwLootFrameTitle.headerString:SetWidth(w)

    if not LootFrame.SetBackdrop then
        Mixin(LootFrame, BackdropTemplateMixin)
        LootFrame:HookScript("OnSizeChanged", LootFrame.OnBackdropSizeChanged)
    end

    LootFrame:SetBackdrop({
        edgeFile = "",
        bgFile = "Interface/AddOns/GW2_UI/textures/bag/lootframebg",
        edgeSize = 1
    })

    if GetCVar("lootUnderMouse") == "0" then
        local pos = GetSetting("LOOTFRAME_POS")
        LootFrame:ClearAllPoints()
        LootFrame:SetPoint(pos.point, nil, pos.relativePoint, pos.xOfs, pos.yOfs)
        RegisterMovableFrame(LootFrame, BUTTON_LAG_LOOT, "LOOTFRAME_POS", "VerticalActionBarDummy", nil, {"default", "scaleable"})
        LootFrame:HookScript("OnSHow", function(self)
            LootFrame:ClearAllPoints()
            LootFrame:SetPoint("TOPLEFT", self.gwMover)
        end)
    end

    LootFrame.ClosePanelButton:ClearAllPoints()
    LootFrame.ClosePanelButton:SetPoint("RIGHT", GwLootFrameTitle.BGRIGHT, "RIGHT", -5, -2)
    LootFrame.ClosePanelButton:SetSize(20,20)
    LootFrame.ClosePanelButton:SetNormalTexture("Interface/AddOns/GW2_UI/textures/uistuff/window-close-button-normal")
    LootFrame.ClosePanelButton:SetPushedTexture("Interface/AddOns/GW2_UI/textures/uistuff/window-close-button-hover")
    LootFrame.ClosePanelButton:SetHighlightTexture("Interface/AddOns/GW2_UI/textures/uistuff/window-close-button-hover")

    hooksecurefunc(LootFrame.ScrollBox, "Update", updateLootFrameButtons)
end
GW.LoadLootFrameSkin = LoadLootFrameSkin
