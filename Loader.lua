-- Konfigurasi fitur Kzoyz x Opus.
-- Atur fitur yang ingin otomatis dinyalakan setelah script dimuat.
-- Aktivitas utama saling menghentikan, jadi pilih maksimal satu di antaranya.
local G = (getgenv and getgenv()) or _G
G.__KzoyzFeatureConfig = {
	-- Isi nama sesuai nama item yang tampil di inventori game.
	FarmBlock = "Sugar Cane",
	FarmSeed = "Sugar Cane",
	PlatformItem = "Wooden Platform",
	AutoFarm = false,
	AutoPlatform = false,
	AutoClear = false,
	Farmer = false,
	AutoSplice = false,
	BuildLand = false,
	Vending = false,
	Factory = false,
	AutoChat = false,
	Guard = false,
	AutoClaimQuest = false,
	AutoRedeemCode = false,
}

-- Muat sumber terbaru dari GitHub.
loadstring(game:HttpGet("https://raw.githubusercontent.com/MarchianoKevinPrasetyaDjati/GROWBLOXES/main/Sangatpenting.lua"))()
