--[[
Auto collects all of fruits then teleports user to the Sell stand
]]

local ReplicatedStorageService = game:GetService("ReplicatedStorage")
local PlayersService = game:GetService("Players")

local Modules = {
	Networking = require(ReplicatedStorageService:WaitForChild("SharedModules"):FindFirstChild("Networking"))
}

local Remotes = {
	Notify = ReplicatedStorageService:WaitForChild("Notify")
}

local Folders = {
	Gardens = workspace:WaitForChild("Gardens")
}

local LocalPlayer = PlayersService.LocalPlayer

local plotId = LocalPlayer:GetAttribute("PlotId")
local fruitCount = LocalPlayer:GetAttribute("FruitCount")
local maxFruits = LocalPlayer:GetAttribute("MaxFruitCapacity")

local garden = Folders.Gardens:FindFirstChild(string.format("Plot%i", plotId))

local plants = garden:FindFirstChild("Plants")

Modules.Networking.TeleportButton.Request:Fire("Garden")

Remotes.Notify:Fire("Starting collection process . . .")

task.wait(1)

for _, plant in plants:GetChildren() do
	if fruitCount >= maxFruits then continue end

	local fruits = plant:FindFirstChild("Fruits")

	if not fruits then continue end

	for _, fruit in fruits:GetChildren() do
		if fruitCount >= maxFruits then continue end

		local plantId = fruit:GetAttribute("PlantId")
		local fruitId = fruit:GetAttribute("FruitId")

		-- print(string.format("Plant: %s\n\t\t\tFruit: %s", plantId, fruitId))
		Modules.Networking.Garden.CollectFruit:Fire(plantId, fruitId)
		fruitCount = LocalPlayer:GetAttribute("FruitCount")

		task.wait()
	end
end

fruitCount = LocalPlayer:GetAttribute("FruitCount")

task.wait(1)

if fruitCount >= maxFruits then
	Remotes.Notify:Fire("Your inventory is full! Teleporting to sell stand . . .")
else
	Remotes.Notify:Fire("Finished collection process. Teleporting to sell stand . . .")
end

Modules.Networking.TeleportButton.Request:Fire("Sell")
