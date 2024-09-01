local GameName = "Nexer Hub - Slap League 👏"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Nexer Hub 👏", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

local Script = Window:MakeTab({
	Name = "Script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = Script:AddSection({
	Name = "some cool scripts"
})

Scripts:AddButton({
	Name = "giang hub",
	Callback = function()
			 loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
	 end
})

Scripts:AddButton({
	Name = "fly gui v3",
	Callback = function()
			 loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
	 end
})

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Slap Player",
	Default = false,
	Callback = function(Value)
		_G.AutoSlapPlayer = Value
            while _G.AutoSlapPlayer do
                for i, v in pairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer and v.Character then
                    game:GetService("ReplicatedStorage").remotes.Slap:FireServer(v.Character:FindFirstChild("HumanoidRootPart"), Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
                end
            end
task.wait()
            end
	end    
})

Tab:AddToggle({
	Name = "Auto Slap Ball",
	Default = false,
	Callback = function(Value)
		_G.AutoSlapBall = Value
while _G.AutoSlapBall do
if workspace.Map:FindFirstChild("Balls") and workspace.Map.Balls:FindFirstChild("ball") then
game:GetService("ReplicatedStorage").remotes.Slap:FireServer(workspace.Map.Balls.ball, Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
end
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Auto View Ball",
	Default = false,
	Callback = function(Value)
		_G.AutoViewBall = Value
if _G.AutoViewBall == false then
if game.Players.LocalPlayers.Character:FindFirstChild("Humanoid") and game.Workspace.CurrentCamera.CameraSubject ~= game.Players.LocalPlayers.Character:FindFirstChild("Humanoid") then
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayers.Character:FindFirstChild("Humanoid")
end
end
while _G.AutoViewBall do
if workspace.Map:FindFirstChild("Balls") and workspace.Map.Balls:FindFirstChild("ball") and game.Workspace.CurrentCamera.CameraSubject ~= workspace.Map.Balls:FindFirstChild("ball") then
game.Workspace.CurrentCamera.CameraSubject = workspace.Map.Balls:FindFirstChild("ball")
else
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayers.Character:FindFirstChild("Humanoid")
end
task.wait()
end
	end    
})
