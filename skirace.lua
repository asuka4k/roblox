local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Soviet Hub - Comrade#9391", HidePremium = false, SaveConfig = false, ConfigFolder = "SovietHub", IntroText = "Soviet Hub"})

OrionLib:MakeNotification({
	Name = "Soviet Hub",
	Content = "Welcome Back Comrade!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "Ski Race",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Add 4 Wins",
	Default = false,
	Callback = function(v)
		getgenv().4wins = v
		while true do
			if not getgenv().4wins = v then return end
			game:GetService("ReplicatedStorage").Remote.Event.Game["[C-S]PlayerPickCoin"]:FireServer()
			wait()
		end
	end    
})
local PSLife = Window:MakeTab({
	Name = "Prison Life",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PSLife:AddDropdown({
	Name = "Give Gun",
	Default = "M9",
	Options = {"M9", "Remington 870", "AK-47"},
	Callback = function(v)
		local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
	end    
})

PSLife:AddDropdown({
	Name = "Mod Gun",
	Default = "M9",
	Options = {"M9", "Remington 870", "AK-47"},
	Callback = function(v)
		local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
	end    
})

local Section1 = PSLife:AddSection({
	Name = "Local Player"
})

PSLife:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 250,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(v)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end    
})

PSLife:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 250,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(v)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end    
})

local Section = PSLife:AddSection({
	Name = "Admin Script"
})

Tab:AddButton({
	Name = "FE Admin",
	Callback = function()
      		
  	end    
})

local TabSus = Window:MakeTab({
	Name = "Sus Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

TabSus:AddButton({
	Name = "FE Pedelum Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
  	end    
})

local TabScripts = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

TabScripts:AddButton({
    Name = "FE Gelatek Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/toldblock/GelatekHub/main/Main.lua"))()
    end
})

TabScripts:AddButton({
    Name = "Chat Bypasser",
    Callback = function()
        Keybind = 'Q' -- This is usually defaulted to F. However, you can change to whatever you want.
        loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser",true))()
    end
})

TabScripts:AddButton({
    Name = "Fates Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
    end
})

TabScripts:AddButton({
    Name = "Universal Hub FE",
    Callback = function()
        OrionLib:MakeNotification({
	        Name = "Soviet Hub",
	        Content = "This GUI will be replaced because the script is also using the same Library! make sure to relaunch if you want to use this hub again",
	        Image = "rbxassetid://4483345998",
	        Time = 10
             })
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
    end
})

TabScripts:AddButton({
    Name = "FE Spy Drone",
    Callback = function()
		setclipboard("discord.gg/DGU2sfM2z3")
		OrionLib:MakeNotification({
	        Name = "Soviet Hub",
	        Content = "Copied Discord Link for required hats",
	        Image = "rbxassetid://4483345998",
	        Time = 5
             })
        loadstring(game:HttpGet("https://pastebin.com/raw/FqdAbZYS"))()
    end
})