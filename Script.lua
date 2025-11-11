-- LocalScript inside the Tool
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RequestTeleport = ReplicatedStorage:WaitForChild("RequestTeleport")
local tool = script.Parent

local equipped = false
tool.Equipped:Connect(function()
    if equipped then return end
    equipped = true

    -- Ask server to teleport us (server will validate)
    RequestTeleport:FireServer(tool)
end)

tool.Unequipped:Connect(function()
    equipped = false
end)
