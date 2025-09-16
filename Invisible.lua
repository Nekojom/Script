-- Invisible Script สำหรับ Private / Local Server
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local invisible = false

-- ฟังก์ชันสลับล่องหน
local function toggleInvisible()
    invisible = not invisible
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            if invisible then
                part.Transparency = 1
                part.CanCollide = false
            else
                part.Transparency = 0
                part.CanCollide = true
            end
        elseif part:IsA("Decal") or part:IsA("Texture") then
            part.Transparency = invisible and 1 or 0
        end
    end
end

-- สลับล่องหนด้วยปุ่ม H
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.H then
        toggleInvisible()
        print(invisible and "ล่องหนแล้ว!" or "กลับมาแล้ว!")
    end
end)
