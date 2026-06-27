--[[
Auto buys all seeds inside of the settings table
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
	Gardens = workspace:WaitForChild("Gardens"),
	SeedShopItems = ReplicatedStorageService:WaitForChild("StockValues"):FindFirstChild("SeedShop"):FindFirstChild("Items")
}

local Settings = {
	SeedsToPurchase = {
		"Carrot",
		"Strawberry",
		"Blueberry",
		"Tomato",
		"Apple",
		"Cactus",
		"Pineapple",
		"Mushroom",
		"Banana",
		"Grape",
		"Coconut",
		"Mango",
		"Dragon Fruit",
		"Acorn",
		"Cherry",
		"Sunflower",
		"Venus Fly Trap",
		"Pomegranate",
		"Poison Apple",
		"Venom Spitter",
		"Moon Bloom",
		"Dragon's Breath"
	}
}

local LocalPlayer = PlayersService.LocalPlayer

Modules.Networking.TeleportButton.Request:Fire("Seeds")

Remotes.Notify:Fire("Starting seed purchase spree . . .")

task.wait(1)

for _, seedName in Settings.SeedsToPurchase do
	for i = 1, 10 do
		Modules.Networking.SeedShop.PurchaseSeed:Fire(seedName)
	end
end

Remotes.Notify:Fire("Finished seed purchase spree")
