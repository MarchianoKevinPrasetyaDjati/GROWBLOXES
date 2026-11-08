-- Config utama: kategori > fitur > opsi.
-- Aktifkan fitur dengan Enabled = true; opsi di bawahnya hanya berlaku untuk fitur itu.
local G = (getgenv and getgenv()) or _G
G.__KzoyzFeatureConfig = {
	SchemaVersion = 2,
	["Farming"] = {
		["Auto Farm"] = {
			Enabled = false,
			Block = "Sugar Cane",
			Mode = "Place + Break", -- "Place + Break" | "Break saja" | "Place saja"
			["Place Delay (ms)"] = 250,
			["Break Delay (ms)"] = 220,
			["After Break Delay (ms)"] = 300,
			["Auto Collect"] = true,
		},
		Farmer = {
			Enabled = false,
			Seed = "Sugar Cane",
			["Auto Harvest"] = true,
			["Auto Plant"] = true,
			["Auto Collect"] = true,
			["Harvest Delay (ms)"] = 250,
			["Plant Delay (ms)"] = 250,
		},
		["Auto Clear"] = {
			Enabled = false,
			["Include Background"] = true,
			["Use Block"] = true,
			Collect = true,
			Sweep = "Kiri → Kanan", -- atau "Zig-zag"
		},
		["Auto Splice"] = {
			Enabled = false,
			["Seed A"] = "",
			["Seed B"] = "",
			Roam = true,
			["Delay (ms)"] = 300,
		},
		Factory = {
			Enabled = false,
			Seed = "Sugar Cane",
			["Whole World"] = false,
			Drop = true,
			Keep = 50,
			["Drop At"] = 200,
		},
	},
	["Land"] = {
		Shape = { X0 = 0, X1 = 99, Y0 = 2, Gap = 2, Rows = 10 },
		["Auto Platform"] = { Enabled = false, Item = "Wooden Platform" },
		["Build Land"] = {
			Enabled = false,
			Block = "",
			Produce = true,
			["Use Block"] = true,
			["Then Factory"] = false,
		},
	},
	["Economy"] = {
		Vending = { Enabled = false, Mode = "Isi stock dari drop", Point = "" },
	},
	["Utilities"] = {
		["Auto Chat"] = { Enabled = false, Messages = {}, ["Interval (sec)"] = 6 },
		Guard = {
			Enabled = false,
			Who = "Staff (Mod/Dev)",
			["Stop All"] = true,
			Leave = false,
			["Auto Back"] = true,
			["Back Delay (sec)"] = 60,
			["Calm Delay (sec)"] = 5,
		},
	},
	["Rewards"] = {
		["Auto Claim Quest"] = { Enabled = false },
		["Auto Redeem Code"] = { Enabled = false },
	},
	Reconnect = {
		Enabled = false,
		World = true,
		Server = true,
		["Delay (sec)"] = 5,
		["Keep returning"] = false,
		Target = "",
		["Script URL"] = "",
	},
}

-- Memuat sumber terbaru dari GitHub.
loadstring(game:HttpGet("https://raw.githubusercontent.com/MarchianoKevinPrasetyaDjati/GROWBLOXES/main/Sangatpenting.lua"))()
