-- ล่องหนสำหรับตัวเอง (LocalPlayer)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

for _, part in pairs(character:GetDescendants()) do
    if part:IsA("BasePart") then
        part.Transparency = 1   -- ทำให้มองไม่เห็น
        part.CanCollide = false  -- ไม่ชนกับอะไร
    end
end
