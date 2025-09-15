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
    Players = Window:AddTab({ Title = "Players", Icon = "rbxassetid://10747373176" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "star" }),
    TP = Window:AddTab({ Title = "Teleport", Icon = "rbxassetid://10709775894" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}


local Options = Fluent.Options
local Plr = game:GetService("Players")
local LocalPlr = Plr.LocalPlayer
local StarterGui = game:GetService("StarterGui")

local Script = {"BonkHub","MaruHub","LemonHub","BlueXHub", "SpeedHubX", "NatHub","Chiyo","Bebas","JinkX","VectorHub","H4xScripts","Zeehub","RedzHub","Eps1llonHub",}
local Other = {"Fiy", "Anti AFK", "infiniteyield",}
local Graphics = {"RTX", "Pshadeultimate",}
local Boots = {"FPS",}

do
    pcall(function()
    Tabs.Home:AddParagraph({
        Title = "Script ส่วนตัว",
        Content = "ทำไว้ใช้เองขำๆรวมสคริปต์ไว้ใช้เอง\nBy Nekojom"
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

    Tabs.Script:AddParagraph({
        Title = "ScriptAll",
        Content = "รวมScriptที่มีคีย์/ไม่มีคีย์ก็ลองทุกอันว่าอันไหนใช้ในMapได้บ้างรันขึ้นคือใช้งานได้"
    })

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
            if Scripts == "BonkHub" then
                getgenv().Key = "BONKHUB-9623288E740C"
                getgenv().DiscordId = "855388945419993119"
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Toonza555/Project/refs/heads/main/PremiumLoader.lua", true))()
            elseif Scripts == "MaruHub" then
                getgenv().Key = "MARU-SC3UI-M6UG-8HMZ-OZ9AL-GGXMW"
                getgenv().id = "754329983861784588"
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
            elseif Scripts == "LemonHub" then
                loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ffdfeadf0af798741806ea404682a938.lua"))();
            elseif Scripts == "BlueXHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))();
            elseif Scripts == "SpeedHubX" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))();
            elseif Scripts == "NatHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))();
            elseif Scripts == "Chiyo" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))();
            elseif Scripts == "Bebas" then
                loadstring(game:HttpGet("https://gist.githubusercontent.com/OmarBinLadek/25e75529e18b38e5d38beab9126fc004/raw/6d1c1c5e0e91373654d2f85ebb65e8221728e26d/freefishit.lua"))();
            elseif Scripts == "JinkX" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/stormskmonkey/JinkX/refs/heads/main/Loader.lua"))();
            elseif Scripts == "VectorHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/Vector_Hub/0/v2"))();
            elseif Scripts == "H4xScripts" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader.lua", true))()
            elseif Scripts == "Zeehub" then
                loadstring(game:HttpGet("https://zuwz.me/Ls-Zee-Hub-HZ"))();
            elseif Scripts == "RedzHub" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))()
            elseif Scripts == "Eps1llonHub" then
                loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/083f208b2d5d19c6b565190b0d2293c9.lua"))()
            end
        end
    })

    Tabs.Misc:AddSection("[ Other / อื่นๆ ]")

    local Dropdown = Tabs.Misc:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = Other,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    Dropdown:OnChanged(function(Value)
        Others = Value
    end)

    Tabs.Misc:AddButton({
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

    Tabs.Misc:AddSection("[ Graphics / กราฟิก ]")

    local Dropdown = Tabs.Misc:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = Graphics,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    Dropdown:OnChanged(function(Value)
        Graphicss = Value
    end)

    Tabs.Misc:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if Graphicss == "RTX" then
                loadstring(game:HttpGet("https://rawscripts.net/raw/Just-a-baseplate.-Script-de-RTX-43523"))();
            elseif Graphicss == "Pshadeultimate" then
                loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))();
            end
        end
    })

    Tabs.Misc:AddSection("[ Boots FPS ]")

    local Dropdown = Tabs.Misc:AddDropdown("Dropdown", {
        Title = "Select Scripts",
        Values = Boots,
        Multi = false,
        Default = "เลือกสคริปต์",
    })

    Dropdown:OnChanged(function(Value)
        Bootss = Value
    end)

    Tabs.Misc:AddButton({
        Title = "Click To Execute",
        Description = "กดเพื่อรันสคริปต์",
        Callback = function()
            if Bootss == "FPS" then
                loadstring(game:HttpGet("https://pastebin.com/raw/8YZ2cc6V"))()
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
end

    Tabs.TP:AddSection("[ Teleport / วาป ]")

    Tabs.TP:AddButton({
        Title = "Teleport To Shop Seeds",
        Description = "วาปไปที่ขายเมล็ด",
        Callback = function()
            LocalPlr.Character.HumanoidRootPart.CFrame = CFrame.new(86.5790176, 2.99999976, -27.0039711, 0.00114052149, -4.75095341e-08, -0.999999344, -1.16310509e-12, 1, -4.75095661e-08, 0.999999344, 5.53487881e-11, 0.00114052149)
        end
    })


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
