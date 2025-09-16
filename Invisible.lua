-- ตั้งค่า
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local invisible = false  -- สถานะล่องหน

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
        end
    end
end

-- ผูกกับปุ่ม "H" เพื่อสลับล่องหน
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.H then
        toggleInvisible()
        if invisible then
            print("ล่องหนแล้ว!")
        else
            print("กลับมาแล้ว!")
        end
    end
end)
