local _, GW = ...

local constBackdropFrame = {
    bgFile = "Interface/AddOns/GW2_UI/textures/uistuff/UI-Tooltip-Background",
    edgeFile = "Interface/AddOns/GW2_UI/textures/uistuff/UI-Tooltip-Border",
    tile = false,
    tileSize = 64,
    edgeSize = 32,
    insets = {left = 2, right = 2, top = 2, bottom = 2}
}
GW.skins.constBackdropFrame = constBackdropFrame

local constBackdropFrameBorder = {
    bgFile = "",
    edgeFile = "Interface/AddOns/GW2_UI/textures/uistuff/UI-Tooltip-Border",
    tile = false,
    tileSize = 64,
    edgeSize = 32,
    insets = {left = 2, right = 2, top = 2, bottom = 2}
}
GW.skins.constBackdropFrameBorder = constBackdropFrameBorder

local constBackdropFrameSmallerBorder = {
    bgFile = "Interface/AddOns/GW2_UI/textures/uistuff/UI-Tooltip-Background",
    edgeFile = "Interface/AddOns/GW2_UI/textures/uistuff/UI-Tooltip-Border",
    tile = false,
    tileSize = 64,
    edgeSize = 18,
    insets = {left = 2, right = 2, top = 2, bottom = 2}
}
GW.skins.constBackdropFrameSmallerBorder = constBackdropFrameSmallerBorder

local constBackdropFrameColorBorder = {
    edgeFile = "Interface/AddOns/GW2_UI/textures/uistuff/white",
    bgFile = "Interface/AddOns/GW2_UI/textures/uistuff/UI-Tooltip-Background",
    edgeSize = 1
}
GW.constBackdropFrameColorBorder = constBackdropFrameColorBorder

local constBackdropFrameColorBorderNoBackground = {
    edgeFile = "Interface/AddOns/GW2_UI/textures/uistuff/white",
    bgFile = "",
    edgeSize = 1
}
GW.constBackdropFrameColorBorderNoBackground = constBackdropFrameColorBorderNoBackground

local function HandleItemButton(b, setInside)
    if b.isSkinned then return end

    local name = b:GetName()
    local icon = b.icon or b.Icon or b.IconTexture or b.iconTexture or (name and (_G[name .. "IconTexture"] or _G[name .. "Icon"]))
    local texture = icon and icon.GetTexture and icon:GetTexture()

    b:GwStripTextures()
    b:GwCreateBackdrop(GW.skins.constBackdropFrameSmallerBorder, true)
    b:GwStyleButton()

    if icon then
        icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)

        if setInside then
            icon:GwSetInside(b)
        else
            b.backdrop:GwSetOutside(icon, 1, 1)
        end

        icon:SetParent(b.backdrop)

        if texture then
            icon:SetTexture(texture)
        end
    end

    b.isSkinned = true
end
GW.HandleItemButton = HandleItemButton

local function ReskinScrollBarArrow(frame, direction)
    GW.HandleNextPrevButton(frame, direction)

    if frame.Texture then
        frame.Texture:SetAlpha(0)

        if frame.Overlay then
            frame.Overlay:SetAlpha(0)
        end
    else
        frame:GwStripTextures()
    end
end

local function HandleTrimScrollBar(frame, small)
    frame:GwStripTextures()

    ReskinScrollBarArrow(frame.Back, "up")
    ReskinScrollBarArrow(frame.Forward, "down")

    if frame.Background then
        frame.Background:Hide()
    end

    local track = frame.Track
    if track then
        --track:DisableDrawLayer('ARTWORK')
        --track:SetTexture("Interface\AddOns\GW2_UI\textures\uistuff\scrollbg")
    end

    local thumb = frame:GetThumb()
    if thumb then
        thumb:DisableDrawLayer('BACKGROUND')

        thumb.bg = thumb:CreateTexture(nil, "ARTWORK")
        thumb.bg:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/scrollbarmiddle")
        thumb:SetSize(12, 12)
        if not small then
            thumb.bg:SetPoint("TOP", 4, -1)
            thumb.bg:SetPoint("BOTTOM", -4, 1)
        end
    end
end
GW.HandleTrimScrollBar = HandleTrimScrollBar

local function SkinUIDropDownMenu()
    hooksecurefunc("UIDropDownMenu_CreateFrames", function(level, index)
        local listFrame = _G["DropDownList" .. level]
        local listFrameName = listFrame:GetName()
        local expandArrow = _G[listFrameName .. "Button" .. index .. "ExpandArrow"];
        if expandArrow then
            expandArrow:SetNormalTexture("Interface/AddOns/GW2_UI/textures/uistuff/arrowdown_down")
            expandArrow:SetPushedTexture("Interface/AddOns/GW2_UI/textures/uistuff/arrowdown_down")
            expandArrow:SetDisabledTexture("Interface/AddOns/GW2_UI/textures/uistuff/arrowdown_down")
            expandArrow:SetHighlightTexture("Interface/AddOns/GW2_UI/textures/uistuff/arrowdown_down")
        end

        local Backdrop = _G[listFrameName .. "Backdrop"]
        Backdrop:GwStripTextures()
        Backdrop:GwCreateBackdrop(constBackdropFrame)

        local menuBackdrop = _G[listFrameName .. "MenuBackdrop"]
        menuBackdrop:GwStripTextures()
        menuBackdrop:GwCreateBackdrop(constBackdropFrame)
    end)
end

local function SkinDropDownList()
    hooksecurefunc("ToggleDropDownMenu", function(level)
        if not level then
            level = 1
        end

        for i = 1, _G.UIDROPDOWNMENU_MAXBUTTONS do
            local button = _G["DropDownList" .. level .. "Button" .. i]
            local check = _G["DropDownList" .. level .. "Button" .. i .. "Check"]
            local uncheck = _G["DropDownList" .. level .. "Button" .. i .. "UnCheck"]
            local arrow = _G["DropDownList" .. level .. "Button" .. i .. "ExpandArrow"]

            check:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/checkboxchecked")
            check:SetTexCoord(unpack(GW.TexCoords))
            check:SetSize(13, 13)
            uncheck:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/checkbox")
            uncheck:SetTexCoord(unpack(GW.TexCoords))
            uncheck:SetSize(13, 13)
            if not button.backdrop then
                button:GwCreateBackdrop()
            end

            button.backdrop:Hide()

            if button.hasArrow then
                arrow:SetNormalTexture("Interface/AddOns/GW2_UI/textures/uistuff/arrow_right")
            end

            if not button.notCheckable then
                button.backdrop:Show()
            end
        end
    end)

    hooksecurefunc("UIDropDownMenu_SetIconImage", function(icon, texture)
        if texture:find("Divider") then
            icon:SetColorTexture(1, 0.93, 0.73, 0.45)
            icon:SetHeight(1)
        end
    end)
end

local function SkinDropDown()
    if not GW.GetSetting("DROPDOWN_SKIN_ENABLED") then return end
    SkinDropDownList()
    SkinUIDropDownMenu()
end
GW.SkinDropDown = SkinDropDown

local function HandleIcon(icon, backdrop, backdropTexture)
    icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

    if backdrop and not icon.backdrop then
        icon:GwCreateBackdrop(backdropTexture)
    end
end
GW.HandleIcon = HandleIcon

local function SkinTextBox(middleTex, leftTex, rightTex, topTex, bottomTex, leftOffset, rightOffset)
    if middleTex then
        middleTex:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/statusbar")
        middleTex:SetAlpha(0.5)
        middleTex:ClearAllPoints()
        middleTex:SetPoint("TOPLEFT", -(leftOffset or 0), 0)
        middleTex:SetPoint("BOTTOMRIGHT", (rightOffset or 0), 0)
        middleTex:SetAlpha(1)
    end
    if leftTex then
        leftTex:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/statusbarBorderPixelVertical")
        leftTex:SetWidth(2)
        leftTex:SetAlpha(1)
        leftTex:ClearAllPoints()
        leftTex:SetPoint("TOPLEFT", -(leftOffset or 0), 0)
        leftTex:SetPoint("BOTTOMLEFT", -(leftOffset or 0), 0)
        leftTex:SetTexCoord(0,1,1,0)
        leftTex:SetAlpha(1)
    end
    if rightTex then
        rightTex:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/statusbarBorderPixelVertical")
        rightTex:SetWidth(1)
        rightTex:SetAlpha(1)
        rightTex:ClearAllPoints()
        rightTex:SetPoint("TOPRIGHT", (rightOffset or 0), 0)
        rightTex:SetPoint("BOTTOMRIGHT", (rightOffset or 0), 0)
        rightTex:SetAlpha(1)
        local pframe = rightTex:GetParent()
        if topTex then
            topTex:ClearAllPoints()
            topTex:SetHeight(2)
            topTex:SetPoint("BOTTOMLEFT", pframe, "TOPLEFT", -(leftOffset or 0), 0)
            topTex:SetPoint("BOTTOMRIGHT", pframe, "TOPRIGHT", (rightOffset or 0), 0)
            topTex:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/statusbarBorderPixel")
            topTex:SetAlpha(1)
        else
            local top = pframe:CreateTexture(nil, "BACKGROUND", nil, 0)
            pframe.top = top
            top:ClearAllPoints()
            top:SetHeight(2)
            top:SetPoint("BOTTOMLEFT", pframe, "TOPLEFT", -(leftOffset or 0), 0)
            top:SetPoint("BOTTOMRIGHT", pframe, "TOPRIGHT", (rightOffset or 0), 0)
            top:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/statusbarBorderPixel")
            if middleTex then return end
        end
        if bottomTex then
            bottomTex:ClearAllPoints()
            bottomTex:SetHeight(2)
            bottomTex:SetPoint("TOPLEFT",pframe,"BOTTOMLEFT",-(leftOffset or 0),0)
            bottomTex:SetPoint("TOPRIGHT",pframe,"BOTTOMRIGHT",(rightOffset or 0),0)
            bottomTex:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/statusbarBorderPixel")
            bottomTex:SetTexCoord(0, 1, 1, 0)
            bottomTex:SetAlpha(1)
        else
            local bottom = pframe:CreateTexture(nil, "BACKGROUND", nil, 0)
            pframe.bottom = bottom
            bottom:ClearAllPoints()
            bottom:SetHeight(2)
            bottom:SetPoint("TOPLEFT", pframe, "BOTTOMLEFT", -(leftOffset or 0), 0)
            bottom:SetPoint("TOPRIGHT", pframe, "BOTTOMRIGHT", (rightOffset or 0), 0)
            bottom:SetTexture("Interface/AddOns/GW2_UI/textures/uistuff/statusbarBorderPixel")
            bottom:SetTexCoord(0, 1, 1, 0)
        end

    end
end
GW.SkinTextBox = SkinTextBox

do
    local function iconBorderColor(border, r, g, b, a)
        border:GwStripTextures()

        if border.customFunc then
            local br, bg, bb = 1, 1, 1
            border.customFunc(border, r, g, b, a, br, bg, bb)
        elseif border.customBackdrop then
            border.customBackdrop:SetBackdropBorderColor(r, g, b)
        end
    end

    local function iconBorderHide(border)
        local br, bg, bb = 1, 1, 1
        if border.customFunc then
            local r, g, b, a = border:GetVertexColor()
            border.customFunc(border, r, g, b, a, br, bg, bb)
        elseif border.customBackdrop then
            border.customBackdrop:SetBackdropBorderColor(br, bg, bb)
        end
    end

    local function HandleIconBorder(border, backdrop, customFunc)
        if not backdrop then
            local parent = border:GetParent()
            backdrop = parent.backdrop or parent
        end

        border.customBackdrop = backdrop

        if not border.IconBorderHooked then
            border:GwStripTextures()

            hooksecurefunc(border, "SetVertexColor", iconBorderColor)
            hooksecurefunc(border, "Hide", iconBorderHide)

            border.IconBorderHooked = true
        end

        local r, g, b, a = border:GetVertexColor()
        if customFunc then
            border.customFunc = customFunc
            local br, bg, bb = 1, 1, 1
            customFunc(border, r, g, b, a, br, bg, bb)
        elseif r then
            backdrop:SetBackdropBorderColor(r, g, b, a)
        else
            local br, bg, bb = 1, 1, 1
            backdrop:SetBackdropBorderColor(br, bg, bb)
        end
    end
    GW.HandleIconBorder = HandleIconBorder
end

local function Scale(x)
    local m = GW.mult
    if m == 1 or x == 0 then
        return x
    else
        local y = m > 1 and m or -m
        return x - x % (x < 0 and y or -y)
    end
end
GW.Scale = Scale

local function HandlePortraitFrame(frame, createBackdrop)
    local name = frame and frame.GetName and frame:GetName()
    local insetFrame = name and _G[name .. "Inset"] or frame.Inset
    local portraitFrame = name and _G[name .. "Portrait"] or frame.Portrait or frame.portrait
    local portraitFrameOverlay = name and _G[name .. "PortraitOverlay"] or frame.PortraitOverlay
    local artFrameOverlay = name and _G[name .. "ArtOverlayFrame"] or frame.ArtOverlayFrame

    frame:GwStripTextures()

    if portraitFrame then portraitFrame:SetAlpha(0) end
    if portraitFrameOverlay then portraitFrameOverlay:SetAlpha(0) end
    if artFrameOverlay then artFrameOverlay:SetAlpha(0) end

    if insetFrame then
        if insetFrame.InsetBorderTop then insetFrame.InsetBorderTop:Hide() end
        if insetFrame.InsetBorderTopLeft then insetFrame.InsetBorderTopLeft:Hide() end
        if insetFrame.InsetBorderTopRight then insetFrame.InsetBorderTopRight:Hide() end

        if insetFrame.InsetBorderBottom then insetFrame.InsetBorderBottom:Hide() end
        if insetFrame.InsetBorderBottomLeft then insetFrame.InsetBorderBottomLeft:Hide() end
        if insetFrame.InsetBorderBottomRight then insetFrame.InsetBorderBottomRight:Hide() end

        if insetFrame.InsetBorderLeft then insetFrame.InsetBorderLeft:Hide() end
        if insetFrame.InsetBorderRight then insetFrame.InsetBorderRight:Hide() end

        if insetFrame.Bg then insetFrame.Bg:Hide() end
    end

    if frame.CloseButton then
        frame.CloseButton:GwSkinButton(true)
        frame.CloseButton:SetSize(20, 20)
    end

    if createBackdrop and not frame.backdrop then
        --local tex = frame:CreateTexture("bg", "BACKGROUND", -7)
        --tex:SetPoint("TOP", frame, "TOP", 0, 25)
        --tex:SetTexture("Interface/AddOns/GW2_UI/textures/party/manage-group-bg")
        --local w, h = frame:GetSize()
        --tex:SetSize(w + 50, h + 50)
        --frame.tex = tex
        frame:GwCreateBackdrop({
            edgeFile = "",
            bgFile = "Interface/AddOns/GW2_UI/textures/party/manage-group-bg",
            edgeSize = 1
        }, true, 50, 50, nil, 25)
    end

end
GW.HandlePortraitFrame = HandlePortraitFrame

local function CreateFrameHeaderWithBody(frame, titleText, icon, detailBackgrounds, yOffset)
    local header = CreateFrame("Frame", frame:GetName() .. "Header", frame, "GwFrameHeader")
    header.windowIcon:SetTexture(icon)

    header:SetWidth(frame:GetWidth() - 20)
    header.BGLEFT:SetWidth(frame:GetWidth() - 20)
    header.BGRIGHT:SetWidth(frame:GetWidth() - 20)

    if titleText then
        if type(titleText) ~= "string" then
            titleText:ClearAllPoints()
            titleText:SetParent(header)
            titleText:SetPoint("BOTTOMLEFT", header, "BOTTOMLEFT", 64, 10)
            titleText:SetFont(DAMAGE_TEXT_FONT, 20)
            titleText:SetTextColor(255 / 255, 241 / 255, 209 / 255)
        else
            header.headerText = header:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            header.headerText:ClearAllPoints()
            header.headerText:SetParent(header)
            header.headerText:SetPoint("BOTTOMLEFT", header, "BOTTOMLEFT", 64, 10)
            header.headerText:SetFont(DAMAGE_TEXT_FONT, 20)
            header.headerText:SetTextColor(255 / 255, 241 / 255, 209 / 255)
            header.headerText:SetText(titleText)
        end
    end

    local tex = frame:CreateTexture(nil, "BACKGROUND", nil, 0)
    tex:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, 0)
    tex:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, yOffset or 0)
    tex:SetTexture("Interface/AddOns/GW2_UI/textures/character/worldmap-background")
    frame.tex = tex

    if detailBackgrounds then
        for _, v in pairs(detailBackgrounds) do
            local detailBg = v:CreateTexture("bg", "BACKGROUND", nil, 0)
            detailBg:SetPoint("TOPLEFT", v, "TOPLEFT", 0,0)
            detailBg:SetPoint("BOTTOMRIGHT", v, "BOTTOMRIGHT", 0, 0)
            detailBg:SetTexture("Interface/AddOns/GW2_UI/textures/character/worldmap-questlog-background")
            detailBg:SetTexCoord(0, 0.70703125, 0, 0.580078125)
            v.tex = detailBg
        end
    end
end
GW.CreateFrameHeaderWithBody = CreateFrameHeaderWithBody
