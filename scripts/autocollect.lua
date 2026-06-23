--[[
Auto collects all of fruits then teleports user to the Sell stand
]]

local ReplicatedStorageService = game:GetService("ReplicatedStorage")
local PlayersService = game:GetService("Players")

local Modules = {
	Networking = require(ReplicatedStorageService:WaitForChild("SharedModules"):FindFirstChild("Networking"))
}

local Folders = {
	Gardens = workspace:WaitForChild("Gardens")
}

local LocalPlayer = PlayersService.LocalPlayer

local plotId = LocalPlayer:GetAttribute("PlotId")

local garden = Folders.Gardens:FindFirstChild(string.format("Plot%i", plotId))

local plants = garden:FindFirstChild("Plants")

-- Modules.Networking.TeleportButton.Request:Fire("Garden")

for _, plant in plants:GetChildren() do
	local fruits = plant:FindFirstChild("Fruits")

	if not fruits then continue end

	for _, fruit in fruits:GetChildren() do
		local plantId = fruit:GetAttribute("PlantId")
		local fruitId = fruit:GetAttribute("FruitId")

		-- print(string.format("Plant: %s\n\t\t\tFruit: %s", plantId, fruitId))
		Modules.Networking.Garden.CollectFruit:Fire(plantId, fruitId)

		task.wait()
	end
end

Modules.Networking.TeleportButton.Request:Fire("Sell")
