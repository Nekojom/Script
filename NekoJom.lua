if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

local Fluent = loadstring(game:HttpGet("http://raw.githubusercontent.com/GhostSobe/Library/refs/heads/main/Fluent/Fluent"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostSobe/Library/refs/heads/main/Fluent/InterfaceManager"))()

local Window = Fluent:CreateWindow({
    Title = "Nekojom | All Scripts",
    SubTitle = "by jom",
    TabWidth = 160,
    Size = UDim2.fromOffset(550, 350),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Home = Window:AddTab({ Title = "Home", Icon = "home" }),
    Script = Window:AddTab({ Title = "Script", Icon = "rbxassetid://10734907168" }),
    Fish = Window:AddTab({ Title = "Fish It", Icon = "rbxassetid://10734907168" }),
    sab = Window:AddTab({ Title = "Brainrot", Icon = "rbxassetid://10734907168" }),
    blox = Window:AddTab({ Title = "Blox Fruits", Icon = "rbxassetid://10734907168" }),
    night = Window:AddTab({ Title = "99 Night", Icon = "rbxassetid://10734907168" }),
    Hunty = Window:AddTab({ Title = "Hunty zombie", Icon = "rbxassetid://10734907168" }),
    Players = Window:AddTab({ Title = "Players", Icon = "rbxassetid://10747373176" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Plr = game:GetService("Players")
local LocalPlr = Plr.LocalPlayer
local Options = Fluent.Options
local StarterGui = game:GetService("StarterGui")

local Script = {
    "LemonHub",
    "BlueXHub",
    "SpeedHubX",
    "NatHub",
}
local Other = {
    "Fiy",
    "Anti AFK",
    "infiniteyield",
}
local fishtab = {
    "BonkHub",
    "SpeedHubX",
    "Chiyo",
    "Bebas",
    "JinkX",
}
local Jintab = {
    "JinkX",
}
local stiltab = {
    "LemonHub",
    "ChilliHub",
}
local bloxtab = {
    "Bonkhub",
    "BlueXHub",
    "VectorHub",
    "RadzHub",
}
local nighttab = {
    "BonkHub",
    "SpeedHubX",
    "VectorHub",
    "NutHub",
    "Somtank",
    "H4xScripts",
}
local autonihttab = {
    "VectorHub",
    "CaoMod",
}
local Huntytab = {
    "BonkHub",
    "SpeedHubX",
    "Chiyo",
    "Zeehub",
    "VectorHub",
}
do
    pcall(function()
    Tabs.Home:AddParagraph({
        Title = "Welcome To My Script",
        Content = "หากสคริปต์ไหนใช้ไม่ได้โปรดติดต่อที่ดิสคอร์ดด้านล่าง\nหรืออยากให้เพิ่มสคริปต์ไหนก็สามารถแจ้งได้ที่ Discord ด้านล่าง\nCode By Khaotom"
    })

    Tabs.Home:AddButton({
        Title = "Discord Invite",
        Description = "กดเพื่อคัดลอกลิ้งค์ดิสคอร์ด",
        Callback = function()
            setclipboard("https://discord.gg/yt-rocket")
            StarterGui:SetCore("SendNotification", {
                Title = "System",
                Icon = "rbxassetid://86373171106525",
                Text = "ได้คัดลอกลิ้งค์ไปยังคีบอร์ดของคุณแล้ว",
                Duration = 4,
            })
        end
    })
    end)

    Tabs.Script:AddSection("[ Key / มีคีย์ ]")

    local Dropdown = Tabs.Script:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = Script,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    Dropdown:OnChanged(function(Value)
        Scripts = Value
    end)

    Tabs.Script:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if Scripts == "LemonHub" then
                loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ffdfeadf0af798741806ea404682a938.lua"))();
            elseif Scripts == "BlueXHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))();
            elseif Scripts == "SpeedHubX" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))();
            elseif Scripts == "NatHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))();
            end
        end
    })


    Tabs.Script:AddSection("[ Other / อื่นๆ ]")

    local Dropdown = Tabs.Script:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = Other,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    Dropdown:OnChanged(function(Value)
        Others = Value
    end)

    Tabs.Script:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if Others == "Fiy" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostSobe/Script/refs/heads/main/Fly"))();
            elseif Others == "Anti AFK" then
                loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostSobe/Script/refs/heads/main/antiafk'))();
            elseif Others == "infiniteyield" then
                loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostSobe/Script/refs/heads/main/infiniteyield'))();
            end
        end
    })


    local Dropdown = Tabs.Fish:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = fishtab,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    --Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        fishs = Value
    end)

    Tabs.Fish:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if fishs == "Bonkhub" then
                loadstring(game:HttpGet("https://bonkhub.online/loader.lua",true))();
            elseif fishs == "SpeedHubX" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))();
            elseif fishs == "Chiyo" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))();
            elseif fishs == "Bebas" then
                loadstring(game:HttpGet("https://gist.githubusercontent.com/OmarBinLadek/25e75529e18b38e5d38beab9126fc004/raw/6d1c1c5e0e91373654d2f85ebb65e8221728e26d/freefishit.lua"))();
            elseif fishs == "JinkX" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/stormskmonkey/JinkX/refs/heads/main/Loader.lua"))();
            end
        end
    })

    Tabs.Fish:AddSection("[ ไก่ตัน ]")

    local Dropdown = Tabs.Fish:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = Jintab,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    --Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        fishs = Value
    end)

    Tabs.Fish:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if fishs == "JinkX" then
                getgenv().jinkX = {
                    ['Fish It'] = {
                        ['Aura Farmer'] = true, -- ฟาม Aura (ถ้ามีเบ็ด Ghostfinn Rod แล้ว)

                        ['Enabled'] = true,
                        ['Webhook'] = '', -- ใส่ลิ้ง Webhook ถ้าไม่ใช้ไม่ต้องใส่
                        
                        ['Fpsboost'] = false,
                        ['Fps_Cap'] = true,
                        ['Fps_Value'] = 300,
                        ['WhiteScreen'] = false,

                        -- เบ็ดที่จะให้ซื้อ
                        ['Rods'] = {
                            'Luck Rod',
                            'Carbon Rod',
                            'Grass Rod',
                            'Demascus Rod',
                            'Ice Rod',
                            'Lucky Rod',
                            'Midnight Rod',
                            'Steampunk Rod',
                            'Chrome Rod',
                            'Astral Rod',
                        },

                        -- Bobber ที่จะให้ซื้อ
                        ['Baits'] = {
                            'Topwater Bait',
                            'Luck Bait',
                            'Midnight Bait',
                            'Nature Bait',
                            'Chroma Bait',
                            'Dark Matter Bait',
                            'Corrupt Bait',
                            'Aether Bait',
                        },
                    },
                }
                loadstring(game:HttpGet('https://raw.githubusercontent.com/stormskmonkey/JinkX/refs/heads/main/Loader.lua'))();
            end
        end
    })

    local Dropdown = Tabs.sab:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = stiltab,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    --Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        stils = Value
    end)

    Tabs.sab:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if stils == "LemonHub" then
                loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ffdfeadf0af798741806ea404682a938.lua"))();
                elseif stils == "ChilliHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))();
            end
        end
    })

    local Dropdown = Tabs.blox:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = bloxtab,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    --Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        bloxs = Value
    end)

    Tabs.blox:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if bloxs == "BonkHub" then
                loadstring(game:HttpGet("https://bonkhub.online/loader.lua",true))();
                elseif bloxs == "BlueXHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))();
                elseif bloxs == "VectorHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/Vector_Hub/0/v2"))();
                elseif bloxs == "RadzHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))();

            end
        end
    })

    local Dropdown = Tabs.night:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = nighttab,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    --Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        nights = Value
    end)

    Tabs.night:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if nights == "BonkHub" then
                loadstring(game:HttpGet("https://bonkhub.online/loader.lua",true))();
            elseif nights == "SpeedHubX" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))();
            elseif nights == "VectorHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/Vector_Hub/0/v2"))();
            elseif nights == "NatHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))();
            elseif nights == "Somtank" then
                loadstring(game:HttpGet("https://pastebin.com/raw/zyy57X37"))()
            elseif nights == "H4xScripts" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader.lua", true))()

            end
        end
    })

    Tabs.night:AddSection("[ ฟามเพชร ]")

    local Dropdown = Tabs.night:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = autonihttab,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    --Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        nights = Value
    end)

    Tabs.night:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if nights == "VectorHub" then
                getgenv().AutoExecute = true
                getgenv().V = "Kaitundiamond"
                getgenv().Webhookurl = "LINKWEBHOOK"
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/Vector_Hub/0/v2"))();
            elseif nights == "CaoMod" then
                getgenv().AutoExecute = true
                getgenv().WebhookURL = ""
                getgenv().AutoFarm = true
                loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/Farm%20Diamond%20v2.lua"))();
            end
        end
    })

    local Dropdown = Tabs.Hunty:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = Huntytab,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    --Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        Huntys = Value
    end)

    Tabs.Hunty:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if Huntys == "BonkHub" then
                loadstring(game:HttpGet("https://bonkhub.online/loader.lua",true))();
            elseif Huntys == "SpeedHubX" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))();
            elseif Huntys == "VectorHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/Vector_Hub/0/v2"))();
            elseif Huntys == "ChiyoHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))();
            elseif Huntys == "Zeehub" then
                loadstring(game:HttpGet("https://zuwz.me/Ls-Zee-Hub-HZ"))();
            end
        end
    })

    Tabs.Players:AddSection("[ Speed / ความเร็ว ]")

    local Input = Tabs.Players:AddInput("Input", {
        Title = "WalkSpeed",
        Default = "20",
        Placeholder = "",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            Speed = Value
        end
    })

    Input:OnChanged(function()
        --print("Set Speed :", Input.Value)
    end)
    
    Tabs.Players:AddButton({
        Title = "Set WalkSpeed",
        Description = "กดเพื่อเปลี่ยนความเร็ว",
        Callback = function()
            LocalPlr.Character.Humanoid.WalkSpeed = Speed
        end
    })

    Tabs.Players:AddSection("[ Jump / กระโดด ]")

    local Input = Tabs.Players:AddInput("Input", {
        Title = "JumpPower",
        Default = "50",
        Placeholder = "",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            Jump = Value
        end
    })

    Input:OnChanged(function()
        --print("Set Speed :", Input.Value)
    end)

    Tabs.Players:AddButton({
        Title = "Set JumpPower",
        Description = "กดเพื่อเปลี่ยนพลังกระโดด",
        Callback = function()
            LocalPlr.Character.Humanoid.JumpPower = Jump
        end
    })
end

Tabs.Players:AddButton({
    Title = "Toggle Infinite Jump",
    Description = "กดเพื่อเปิด/ปิด กระโดดไม่จำกัด",
    Callback = function()
        InfiniteJumpEnabled = not InfiniteJumpEnabled
        pcall(function()
            StarterGui:SetCore("SendNotification", {
                Title = "Infinite Jump",
                Text = InfiniteJumpEnabled and "เปิดใช้งานแล้ว" or "ปิดการใช้งานแล้ว",
                Duration = 2
            })
        end)
    end
})
game:GetService("UserInputService").JumpRequest:Connect(function()
    if InfiniteJumpEnabled then
        LocalPlr.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
    end
end)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("Ghost Hub")
SaveManager:SetFolder("Ghost Hub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
-- SaveManager:BuildConfigSection(Tabs.Settings)
Window:SelectTab(1)


local CoreGui = game:GetService("CoreGui")
local logoGui = Instance.new("ScreenGui")

logoGui.Name = "JomHub"
logoGui.ResetOnSpawn = false
logoGui.Parent = CoreGui.ScreenGui

local screenGui = nil
while not screenGui do
    for _, gui in pairs(CoreGui:GetChildren()) do
        if gui:IsA("ScreenGui") then
            screenGui = gui
            break
        end
    end
    task.wait(0.1)
end

local logoButton = Instance.new("ImageButton")
logoButton.Name = "LogoButton"
logoButton.Size = UDim2.new(0, 55, 0, 55)
logoButton.Position = UDim2.new(0, 65, 0, 50)
logoButton.BackgroundTransparency = 1
logoButton.Image = "rbxassetid://86373171106525"
logoButton.Parent = logoGui
logoButton.ZIndex = 999
logoButton.MouseButton1Click:Connect(function()
    CoreGui.ScreenGui:GetChildren()[2].Visible = not CoreGui.ScreenGui:GetChildren()[2].Visible
end)

function dragify(Frame, object)
    local dragToggle = false
    local dragSpeed = 0.25
    local dragInput = nil
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(object, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragToggle = true
            dragStart = input.Position
            startPos = object.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end

dragify(logoButton, logoButton)

SaveManager:LoadAutoloadConfig()
