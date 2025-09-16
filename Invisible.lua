--// 🌌 Universal Invisibility Script (One File)
--// ใช้ได้ทุกแมพ – กด H / ใช้ปุ่ม GUI หรือ /invis
--// รันจาก Executor ได้เลย

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- ✅ สร้าง RemoteEvent ถ้าไม่มี
local eventName = "ToggleInvisibilityEvent"
local event = ReplicatedStorage:FindFirstChild(eventName)
if not event then
    event = Instance.new("RemoteEvent")
    event.Name = eventName
    event.Parent = ReplicatedStorage
end

-- ✅ ฟังก์ชันหายตัว (Server)
event.OnServerEvent:Connect(function(plr, invisible)
    if plr ~= player then
        local char = plr.Character
        if not char then return end
        for _, part in ipairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Transparency = invisible and 1 or 0
                part.CanCollide = not invisible
            elseif part:IsA("Decal") or part:IsA("Texture") then
                part.Transparency = invisible and 1 or 0
            end
        end
    end
end)

-- ✅ ฝั่ง Local (ควบคุมตัวเอง + GUI)
local invisible = false

local function toggle()
    invisible = not invisible
    -- fire ไปที่ server ให้ทุกคนเห็นการเปลี่ยน
    event:FireServer(invisible)

    -- ทำงานกับตัวเองด้วย
    local char = player.Character or player.CharacterAdded:Wait()
    for _, part in ipairs(char:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = invisible and 1 or 0
            part.CanCollide = not invisible
        elseif part:IsA("Decal") or part:IsA("Texture") then
            part.Transparency = invisible and 1 or 0
        end
    end

    if invisible then
        print("✅ คุณหายตัวแล้ว (ทุกคนไม่เห็นคุณ)")
        if ToggleButton then ToggleButton.Text = "กลับมา" end
    else
        print("❌ คุณกลับมาแล้ว (มองเห็นปกติ)")
        if ToggleButton then ToggleButton.Text = "หายตัว" end
    end
end

-- ✅ GUI ปุ่ม Toggle
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "InvisibleGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 120, 0, 50)
ToggleButton.Position = UDim2.new(0.05, 0, 0.1, 0)
ToggleButton.Text = "หายตัว"
ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.TextSize = 22
ToggleButton.Parent = ScreenGui

ToggleButton.MouseButton1Click:Connect(toggle)

-- ✅ ปุ่มลัด H
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.H then
        toggle()
    end
end)

-- ✅ พิมพ์ /invis
player.Chatted:Connect(function(msg)
    local m = msg:lower()
    if m == "/invis" or m == "!invis" then
        toggle()
    end
end)
