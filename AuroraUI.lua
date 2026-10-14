-- ================= ТВОЁ МЕНЮ =================
local Aurora = AuroraLib  -- библиотека уже загружена

local Win = Aurora:Window({
    Title = "Моё меню",
    Subtitle = "by me",
    Size = UDim2.fromOffset(680, 440),
})

-- Вкладка 1
local Tab1 = Win:Tab({ Name = "Главное" })
local Sec1 = Tab1:Section({ Name = "Основное" })

Sec1:Label("Привет!", "Это моё меню")
Sec1:Button({
    Name = "Нажми меня",
    Callback = function()
        Aurora:Notify({ Title = "Успех", Text = "Кнопка нажата!", Color = Color3.fromRGB(80,220,130) })
    end,
})

Sec1:Toggle({
    Name = "Включить что-то",
    Default = false,
    Callback = function(state)
        print("Тумблер:", state)
    end,
})

Sec1:Slider({
    Name = "Громкость",
    Min = 0, Max = 100, Default = 50, Step = 5,
    Suffix = "%",
    Callback = function(v) print("Volume:", v) end,
})

-- Вкладка 2
local Tab2 = Win:Tab({ Name = "Настройки" })
local Sec2 = Tab2:Section({ Name = "Внешний вид" })

Sec2:Dropdown({
    Name = "Тема",
    Options = Aurora:GetThemes(),
    Default = "Dark",
    Callback = function(theme)
        Win:SetTheme(theme)
    end,
})

Sec2:ColorPicker({
    Name = "Акцент",
    Default = Color3.fromRGB(88,130,255),
    Callback = function(c) print("Color:", c) end,
})

Sec2:Textbox({
    Name = "Ник",
    Default = "",
    Placeholder = "Введите ник...",
    Callback = function(t) print("Text:", t) end,
})

Sec2:Keybind({
    Name = "Клавиша меню",
    Default = Enum.KeyCode.RightShift,
    Callback = function(k) print("Key:", k.Name) end,
})

-- Вкладка 3
local Tab3 = Win:Tab({ Name = "О меню" })
local Sec3 = Tab3:Section({ Name = "Информация" })
Sec3:Label("Aurora UI v1.0", "Сделано с ♥")
Sec3:Button({
    Name = "Показать уведомление",
    Callback = function()
        Aurora:Notify({ Title = "Привет", Text = "Это уведомление Aurora UI" })
    end,
})

Aurora:Notify({
    Title = "Aurora UI",
    Text = "Меню загружено!",
    Duration = 4,
})
-- =============================================
