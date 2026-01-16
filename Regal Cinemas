local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

local platform = Instance.new("Part")
platform.Name = "SafePlatform"
platform.Size = Vector3.new(10, 1, 10)
platform.Anchored = true
platform.CanCollide = true
platform.Transparency = 0.5
platform.Parent = Workspace

RunService.Stepped:Connect(function()
    if LocalPlayer.Character then
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end
    if not platform or not platform.Parent then
        platform = Instance.new("Part")
        platform.Name = "SafePlatform"
        platform.Size = Vector3.new(10, 1, 10)
        platform.Anchored = true
        platform.CanCollide = true
        platform.Transparency = 0.5
        platform.Parent = Workspace
    end
end)

task.spawn(function()
    while true do
        local folders = {
            Workspace:FindFirstChild("Regal"),
            Workspace:FindFirstChild("2"),
            Workspace:FindFirstChild("3"),
            Workspace:FindFirstChild("4")
        }

        for _, folder in pairs(folders) do
            if folder then
                for _, v in pairs(folder:GetDescendants()) do
                    pcall(function()
                        if v.Name == "Popcorn2" or v.Name == "Environment" or v.Name == "TemporaryRegalPopCornBucket" then
                            if v:IsA("BasePart") then
                                v.CFrame = CFrame.new(0, -999999, 0)
                            elseif v:IsA("Model") then
                                v:PivotTo(CFrame.new(0, -999999, 0))
                            end
                            v:Destroy()
                        
                        elseif v.Name == "Token" or v.Name == "Time" then
                            if LocalPlayer.Character then
                                local targetCF
                                if v:IsA("BasePart") then
                                    targetCF = v.CFrame
                                elseif v:IsA("Model") then
                                    targetCF = v:GetPivot()
                                end
                                
                                if targetCF then
                                    platform.CFrame = targetCF * CFrame.new(0, -3.5, 0)
                                    LocalPlayer.Character:PivotTo(targetCF)
                                end
                            end
                            task.wait(0.15)
                        end
                    end)
                end
            end
        end
        task.wait()
    end
end)
