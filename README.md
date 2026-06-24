Grow a Garden 2

# Modules

Networking (required for packets)
```lua
game:GetService("ReplicatedStorage").SharedModules.Networking
```

# Functions (-Remotes)

Teleport Back to Plot
```lua
local module = require(game:GetService("ReplicatedStorage").SharedModules.Networking)

module.TeleportButton.Request:Fire("Garden")
```
Teleport to Sell
```lua
local module = require(game:GetService("ReplicatedStorage").SharedModules.Networking)

module.TeleportButton.Request:Fire("Sell")
```
Teleport to Seeds
```lua
local module = require(game:GetService("ReplicatedStorage").SharedModules.Networking)

module.TeleportButton.Request:Fire("Seeds")
```
Sell Inventory
```lua
local module = require(game:GetService("ReplicatedStorage").SharedModules.Networking)

module.NPCS.SellAll:Fire()
```
Harvest Fruit
```lua
local module = require(game:GetService("ReplicatedStorage").SharedModules.Networking)

module.Garden.CollectFruit:Fire("<plant id>", "<fruit id>")
```
Steal Fruit
```lua
local module = require(game:GetService("ReplicatedStorage").SharedModules.Networking)

module.Steal.BeginSteal:Fire(<target userid>, "<plant id>", "<fruit id>")
module.Steal.CompleteSteal:Fire()
```
Send Notification
```lua
game:GetService("ReplicatedStorage").Notify:Fire("My Notification!")
```
Purchase Seed
```lua
local module = require(game:GetService("ReplicatedStorage").SharedModules.Networking)

module.SeedShop.PurchaseSeed:Fire("<seed name>")
```

# Folders

Stock Values (shop items)
```lua
game:GetService("ReplicatedStorage").StockValues
```
Seed Shop
```lua
game:GetService("ReplicatedStorage").StockValues.SeedShop
```
Gear Shop
```lua
game:GetService("ReplicatedStorage").StockValues.GearShop
```
Exclusive Shop
```lua
game:GetService("ReplicatedStorage").StockValues.ExclusiveShop
```
Crate Shop
```lua
game:GetService("ReplicatedStorage").StockValues.CrateShop
```
Night Time (bool)
```lua
game:GetService("ReplicatedStorage").Night
```
Seed Shop (GUI)
```lua
game:GetService("Players").LocalPlayer.PlayerGui.SeedShop
```
Gardens
```lua
workspace.Gardens
```
Wild Pet Spawn
```lua
workspace.Map.WildPetRef
```
Server Values
```lua
game:GetService("ReplicatedStorage").ServerValues
```
Shared Data
```lua
game:GetService("ReplicatedStorage").SharedData
```
Plot Id
```lua
game:GetService("Players").LocalPlayer:GetAttribute("PlotId")
```
Guild Id
```lua
game:GetService("Players").LocalPlayer:GetAttribute("GuildId")
```
Guild Name
```lua
game:GetService("Players").LocalPlayer:GetAttribute("GuildName")
```
Guild Role
```lua
game:GetService("Players").LocalPlayer:GetAttribute("GuildRole")
```
Guild Tag
```lua
game:GetService("Players").LocalPlayer:GetAttribute("GuildTag")
```
Friends Count
```lua
game:GetService("Players").LocalPlayer:GetAttribute("Friends")
```
Fruit Count
```lua
game:GetService("Players").LocalPlayer:GetAttribute("FruitCount")
```
Garden Likes
```lua
game:GetService("Players").LocalPlayer:GetAttribute("GardenLikes")
```
Max Fruit Capacity
```lua
game:GetService("Players").LocalPlayer:GetAttribute("MaxFruitCapacity")
```
Max Equipped Pets
```lua
game:GetService("Players").LocalPlayer:GetAttribute("MaxEquippedPets")
```
In Own Garden
```lua
game:GetService("Players").LocalPlayer:GetAttribute("IsInOwnGarden")
```
In Safezone
```lua
game:GetService("Players").LocalPlayer:GetAttribute("InSafeZone")
```
Stolen Carry Value
```lua
game:GetService("Players").LocalPlayer:GetAttribute("StolenCarryValue")
```
Weather Values
```lua
game:GetService("ReplicatedStorage").WeatherValues
```
Assets
```lua
game:GetService("ReplicatedStorage").Assets
```
Seed Pack Spawns (gold and rainbow seed pickup events)
```lua
workspace.Map.SeedPackSpawnServerLocations
```
