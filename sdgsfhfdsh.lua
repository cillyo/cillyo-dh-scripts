-- Cmds
if table.find(getgenv().Alts,game.Players.LocalPlayer.UserId) then
	getgenv().PointInTable = table.find(getgenv().Alts,game.Players.LocalPlayer.UserId)
else
	return
end
if game.Players.LocalPlayer.Name == getgenv().HostUser or getgenv().Executed then
	return
end
UserSettings().GameSettings.MasterVolume = 0
local Crashed = false
if Testing == false then
	print("Hello world!")
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local NameFrame = Instance.new("Frame")
	local UIStroke = Instance.new("UIStroke")
	local UICorner = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")
	local PremiumFrame = Instance.new("Frame")
	local UIStroke_2 = Instance.new("UIStroke")
	local UICorner_2 = Instance.new("UICorner")
	local Frame_2 = Instance.new("Frame")
	local UIStroke_3 = Instance.new("UIStroke")
	local UICorner_3 = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local TextLabel_2 = Instance.new("TextLabel")
	local UsernameFrame = Instance.new("Frame")
	local UIStroke_4 = Instance.new("UIStroke")
	local UICorner_4 = Instance.new("UICorner")
	local TextLabel_3 = Instance.new("TextLabel")
	local WalletFrame = Instance.new("Frame")
	local UIStroke_5 = Instance.new("UIStroke")
	local UICorner_5 = Instance.new("UICorner")
	local TextLabel_4 = Instance.new("TextLabel")
	local ImageLabel_2 = Instance.new("ImageLabel")
	
	--Properties:
	
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.IgnoreGuiInset = true
	
	Frame.Parent = ScreenGui
	Frame.Active = true
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(55, 95, 100)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(1, 0, 1, 0)
	
	NameFrame.Name = "NameFrame"
	NameFrame.Parent = Frame
	NameFrame.Active = false
	NameFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	NameFrame.BackgroundColor3 = Color3.fromRGB(77, 130, 139)
	NameFrame.BorderColor3 = Color3.fromRGB(26, 45, 45)
	NameFrame.BorderSizePixel = 0
	NameFrame.Position = UDim2.new(0.5, 0, 0.38, 0)
	NameFrame.Size = UDim2.new(0, 523, 0, 78)
	
	UIStroke.Color = Color3.fromRGB(95, 164, 177)
	UIStroke.Thickness = 3.5
	UIStroke.Parent = NameFrame
	
	UICorner.CornerRadius = UDim.new(0.400000006, 0)
	UICorner.Parent = NameFrame
	
	TextLabel.Parent = NameFrame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.2, 0, -0.319, 0)
	TextLabel.Size = UDim2.new(0, 391, 0, 131)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = "Obstruct Control"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 59.000
	
	ImageLabel.Parent = NameFrame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0.010243278, 0, -0.205128208, 0)
	ImageLabel.Size = UDim2.new(0, 109, 0, 109)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=18224981126"
	
	PremiumFrame.Name = "PremiumFrame"
	PremiumFrame.Parent = Frame
	PremiumFrame.Active = true
	PremiumFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	PremiumFrame.BackgroundColor3 = Color3.fromRGB(77, 130, 139)
	PremiumFrame.BorderColor3 = Color3.fromRGB(26, 45, 45)
	PremiumFrame.BorderSizePixel = 0
	PremiumFrame.Position = UDim2.new(0.495, 0.495, 0.23)
	PremiumFrame.Size = UDim2.new(0, 186, 0, 78)
	
	UIStroke_2.Color = Color3.fromRGB(95, 164, 177)
	UIStroke_2.Thickness = 3.5
	UIStroke_2.Parent = PremiumFrame
	
	UICorner_2.CornerRadius = UDim.new(0.400000006, 0)
	UICorner_2.Parent = PremiumFrame
	
	Frame_2.Parent = PremiumFrame
	Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.04, 0.04, 0.12)
	Frame_2.Size = UDim2.new(0, 172, 0, 60)
	
	UIStroke_3.Color = Color3.fromRGB(95, 164, 177)
	UIStroke_3.Thickness = 3.5
	UIStroke_3.Parent = Frame_2
	
	UICorner_3.CornerRadius = UDim.new(0.400000006, 0)
	UICorner_3.Parent = Frame_2
	
	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(122, 168, 170)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(122, 168, 170))}
	UIGradient.Offset = Vector2.new(0, 9)
	UIGradient.Parent = Frame_2
	
	TextLabel_2.Parent = Frame_2
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(-0.317068398, 0, -0.229487106, 0)
	TextLabel_2.Size = UDim2.new(0, 281, 0, 86)
	TextLabel_2.Font = Enum.Font.SourceSansBold
	TextLabel_2.Text = "PREMIUM"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextSize = 41.000
	
	UsernameFrame.Name = "UsernameFrame"
	UsernameFrame.Parent = Frame
	UsernameFrame.Active = false
	UsernameFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	UsernameFrame.BackgroundColor3 = Color3.fromRGB(77, 130, 139)
	UsernameFrame.BorderColor3 = Color3.fromRGB(26, 45, 45)
	UsernameFrame.BorderSizePixel = 0
	UsernameFrame.Position = UDim2.new(0.5, 0.5, 0.52)
	UsernameFrame.Size = UDim2.new(0, 523, 0, 65)
	
	UIStroke_4.Color = Color3.fromRGB(95, 164, 177)
	UIStroke_4.Thickness = 3.5
	UIStroke_4.Parent = UsernameFrame
	
	UICorner_4.CornerRadius = UDim.new(0.400000006, 0)
	UICorner_4.Parent = UsernameFrame
	
	TextLabel_3.Parent = UsernameFrame
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_3.BorderSizePixel = 0
	TextLabel_3.Position = UDim2.new(0.126038179, 0, -0.515384614, 0)
	TextLabel_3.Size = UDim2.new(0, 391, 0, 131)
	TextLabel_3.Font = Enum.Font.SourceSansBold
	TextLabel_3.Text = "User: "..game.Players.LocalPlayer.Name
	TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.TextSize = 59.000
	
	WalletFrame.Name = "WalletFrame"
	WalletFrame.Parent = Frame
	WalletFrame.Active = false
	WalletFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	WalletFrame.BackgroundColor3 = Color3.fromRGB(77, 130, 139)
	WalletFrame.BorderColor3 = Color3.fromRGB(26, 45, 45)
	WalletFrame.BorderSizePixel = 0
	WalletFrame.Position = UDim2.new(0.5, 0.5, 0.66)
	WalletFrame.Size = UDim2.new(0, 523, 0, 78)
	
	UIStroke_5.Color = Color3.fromRGB(95, 164, 177)
	UIStroke_5.Thickness = 3.5
	UIStroke_5.Parent = WalletFrame
	
	UICorner_5.CornerRadius = UDim.new(0.400000006, 0)
	UICorner_5.Parent = WalletFrame
	
	TextLabel_4.Parent = WalletFrame
	TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.BackgroundTransparency = 1.000
	TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_4.BorderSizePixel = 0
	TextLabel_4.Position = UDim2.new(0.15, 0.15, -0.4, 0)
	TextLabel_4.Size = UDim2.new(0, 391, 0, 131)
	TextLabel_4.Font = Enum.Font.SourceSansBold
	TextLabel_4.TextColor3 = Color3.fromRGB(30, 235, 30)
	TextLabel_4.TextSize = 59.000
	TextLabel_4.TextWrapped = true
	TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
	
	ImageLabel_2.Parent = WalletFrame
	ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel_2.BackgroundTransparency = 1.000
	ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel_2.BorderSizePixel = 0
	ImageLabel_2.Position = UDim2.new(-0.0010416822, 0, -0.138840899, 0)
	ImageLabel_2.Rotation = -10.000
	ImageLabel_2.Size = UDim2.new(0, 99, 0, 99)
	ImageLabel_2.Image = "http://www.roblox.com/asset/?id=18232127794"

	local function updateCurrency()
		local player = game.Players.LocalPlayer
		local currencyValue = player.DataFolder.Currency.Value
		TextLabel_4.Text = "Wallet: $"..currencyValue
	end
	
	updateCurrency()
	
	game:GetService("RunService").RenderStepped:Connect(updateCurrency)

	if not game:IsLoaded() then
		repeat wait(.1) until game:IsLoaded() 
	end
	local folder = workspace:FindFirstChild("MAP")
	local function makeTransparent(instance)
		if instance:IsA("BasePart") then
			instance.Transparency = 1
		end
	end
	if folder then
		for _, child in ipairs(folder:GetDescendants()) do
			makeTransparent(child)
		end
	else
		warn("Folder not found!")
	end
	end
	wait(3)
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	game:GetService("RunService"):Set3dRenderingEnabled(false)
setfpscap(20)

loadstring(game:HttpGet("https://raw.githubusercontent.com/BlatzPlays/sdhfsdj/main/mfbvgnbd"))()
getgenv().Executed = true

--// Code --//

local Connections = {}

local Services = {
	["RP"] = game:GetService("ReplicatedStorage"),
	["Players"] = game:GetService("Players"),
}

local Variables = {
	HostUser = getgenv().HostUser,
	Player = game.Players.LocalPlayer,
}

local Host = Services["Players"]:FindFirstChild(Variables["HostUser"])

if not Host then
	print("The host is not in the server.")
	Services["Players"]:WaitForChild(Variables["HostUser"],9e9)
	Host = Services["Players"]:FindFirstChild(Variables["HostUser"])
end
print("Script loaded!")
local CmdSettings = {}

local function Drop(Type)
	if Type == true and CmdSettings["Dropping"] == nil then
		CmdSettings["Dropping"] = true
		CmdSettings["CustomDrop"] = nil
		CmdSettings["Aura"] = nil
		while CmdSettings["Dropping"] do
			local args = {
				[1] = "DropMoney",
				[2] = "10000"
			}
			game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
			wait(2.5)
		end
	elseif Type == false then
		CmdSettings["Dropping"] = nil
		CmdSettings["CustomDrop"] = nil
	end
end

local function AirLock(Type)
	if CmdSettings["AirLock"] == nil and Type == true then
		local plr = Players.LocalPlayer
		local BP = Variables["Player"].Character.HumanoidRootPart:FindFirstChild("AirLockBP")
		if BP then
			BP:Destroy()
		end
		CmdSettings["AirLock"] = true
		Variables["Player"].Character.HumanoidRootPart.CFrame = Variables["Player"].Character.HumanoidRootPart.CFrame*CFrame.new(0,10,0)
		local BP = Instance.new("BodyPosition",Variables["Player"].Character.HumanoidRootPart)
		BP.Name = "AirLockBP"
		BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BP.Position = Variables["Player"].Character.HumanoidRootPart.Position
		plr.Character.Humanoid.PlatformStand = true
	elseif CmdSettings["AirLock"] == true and Type == false then
		CmdSettings["AirLock"] = nil
		local plr = Players.LocalPlayer
		local BP = Variables["Player"].Character.HumanoidRootPart:FindFirstChild("AirLockBP")
		if BP then
			BP:Destroy()
			plr.Character.Humanoid.PlatformStand = false
		end
	end
end

local function HeroAirLock(Type)
	if CmdSettings["HeroAirLock"] == nil and Type == true then
		local BP = Variables["Player"].Character.HumanoidRootPart:FindFirstChild("HeroAirLockBP")
		local plr = game.Players.LocalPlayer
		if BP then
			BP:Destroy()
		end
		CmdSettings["HeroAirLock"] = true
		Variables["Player"].Character.HumanoidRootPart.CFrame = Variables["Player"].Character.HumanoidRootPart.CFrame*CFrame.new(0,8,0)
		local BP = Instance.new("BodyPosition",Variables["Player"].Character.HumanoidRootPart)
		BP.Name = "HeroAirLockBP"
		BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BP.Position = Variables["Player"].Character.HumanoidRootPart.Position
		if CurrAnim and CurrAnim.IsPlaying then
			CurrAnim:Stop()
		end
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "http://www.roblox.com/asset/?id=10714347256"
		CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
		CurrAnim:Play()
		CurrAnim:AdjustSpeed()
		plr.Character.Humanoid.PlatformStand = true
		plr.Character.HumanoidRootPart.Anchored = false
	elseif CmdSettings["HeroAirLock"] == true and Type == false then
		CmdSettings["HeroAirLock"] = nil
		local BP = Variables["Player"].Character.HumanoidRootPart:FindFirstChild("HeroAirLockBP")
		local plr = game.Players.LocalPlayer
		if BP then
			BP:Destroy()
			if CurrAnim and CurrAnim.IsPlaying then
				CurrAnim:Stop()
			end
			plr.Character.Humanoid.PlatformStand = false
		plr.Character.HumanoidRootPart.Anchored = false
		end
	end
end

local function grave(Type)
	if CmdSettings["Grave"] == nil and Type == true then
		local BP = Variables["Player"].Character.HumanoidRootPart:FindFirstChild("GraveBP")
		if BP then
			BP:Destroy()
		end
		CmdSettings["Grave"] = true
		
		local humanoidRootPart = Variables["Player"].Character.HumanoidRootPart
		humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, -7, 0)
		humanoidRootPart.CanCollide = false
		
		local BP = Instance.new("BodyPosition", humanoidRootPart)
		BP.Name = "GraveBP"
		BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		BP.Position = humanoidRootPart.Position
		
		elseif CmdSettings["Grave"] == true and Type == false then
			CmdSettings["Grave"] = nil
			local BP = Variables["Player"].Character.HumanoidRootPart:FindFirstChild("GraveBP")
			if BP then
				BP:Destroy()
			end
			local humanoidRootPart = Variables["Player"].Character.HumanoidRootPart
			humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 5, 0)
			humanoidRootPart.CanCollide = true 
		end
end

local function block(type)
    if type == true then
        if CmdSettings["Block"] == nil or CmdSettings["Block"] == false then
            game.ReplicatedStorage.MainEvent:FireServer("Block", true)
            CmdSettings["Block"] = true
        end
    elseif type == false then
        if CmdSettings["Block"] == true then
            game.ReplicatedStorage.MainEvent:FireServer("Block", false)
            CmdSettings["Block"] = false
        end
    end
end

local function GetPlayerFromString(str,ignore)
	for i,Targ in pairs(game.Players:GetPlayers()) do 
		if not ignore and Targ == Variables["Player"] then
			continue
		end
		if Targ.Name:lower():sub(1,#str) == str:lower() or  Targ.DisplayName:lower():sub(1,#str) == str:lower()  then
			return Targ
		end
	end
	return nil
end
local function BringPlr(Target,POS)
	if getgenv().PointInTable == 1 and Target.Character and Target.Character:FindFirstChild("Humanoid") then
		CmdSettings["Aura"] = nil

		local TargetPlr = Target

		local c = game.Players.LocalPlayer.Character
		local Root = c.HumanoidRootPart
		local PrevCF = Root.CFrame
		local TargetChar = TargetPlr.Character
		if TargetPlr and TargetPlr.Character and TargetPlr.Character:FindFirstChild("Humanoid") and not ( not c or not c:FindFirstChild("BodyEffects") or not c.BodyEffects:FindFirstChild("K.O") or not c.BodyEffects:FindFirstChild("Grabbed")  or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or not TargetChar.BodyEffects:FindFirstChild("K.O") or TargetChar.BodyEffects["K.O"].Value == true ) then
			CmdSettings["IsLocking"] = true

			c.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)

			Root.CFrame = CFrame.new(TargetChar.HumanoidRootPart.Position)*CFrame.new(0,0,1)

			repeat wait()
				Root.CFrame = CFrame.new(TargetChar.HumanoidRootPart.Position)*CFrame.new(0,0,1)
				if not c:FindFirstChild("Combat") then
					c.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Combat)     
				end
				c.Combat:Activate()
			until not TargetPlr or not TargetChar or not c or not c:FindFirstChild("BodyEffects") or not c.BodyEffects:FindFirstChild("K.O") or not c.BodyEffects:FindFirstChild("Grabbed")  or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or not TargetChar.BodyEffects:FindFirstChild("K.O") or TargetChar.BodyEffects["K.O"].Value == true
			Root.CFrame = CFrame.new(TargetChar.LowerTorso.Position)*CFrame.new(0,3,0)
			if c.BodyEffects.Grabbed.Value ~= nil then

			else
				if not (not TargetPlr or not TargetChar or not c or not c:FindFirstChild("BodyEffects") or not c.BodyEffects:FindFirstChild("K.O") or not c.BodyEffects:FindFirstChild("Grabbed")  or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or not TargetChar.BodyEffects:FindFirstChild("K.O") or TargetChar.BodyEffects["K.O"].Value == false ) then
					local args = {
						[1] = "Grabbing",
						[2] = false
					}

					game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
				end

			end
			repeat wait(0.35)
				if not (not TargetPlr or not TargetChar or not c or not c:FindFirstChild("BodyEffects") or not c.BodyEffects:FindFirstChild("K.O") or not c.BodyEffects:FindFirstChild("Grabbed")  or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or not TargetChar.BodyEffects:FindFirstChild("K.O") or TargetChar.BodyEffects["K.O"].Value == false ) then
					Root.CFrame = CFrame.new(TargetChar.LowerTorso.Position)*CFrame.new(0,3,0)
					if c.BodyEffects.Grabbed.Value ~= nil then

					else
						if not (not TargetPlr or not TargetChar or not c or not c:FindFirstChild("BodyEffects") or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or TargetChar.BodyEffects["K.O"].Value == false)  then
							local args = {
								[1] = "Grabbing",
								[2] = false
							}
							game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
						end
					end
				end
			until not TargetPlr or not TargetChar or not c or not c:FindFirstChild("BodyEffects") or not c.BodyEffects:FindFirstChild("K.O") or not c.BodyEffects:FindFirstChild("Grabbed")  or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or not TargetChar.BodyEffects:FindFirstChild("K.O") or TargetChar.BodyEffects["K.O"].Value == false 
			if POS == nil then
				Root.CFrame = Host.Character.HumanoidRootPart.CFrame
			else
				Root.CFrame = POS
			end
			CmdSettings["IsLocking"] = nil
			wait(1.5)
			local args = {
				[1] = "Grabbing",
				[2] = false
			}

			game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
		end
	end
end

local BringLocations = {
	["bank"] = CFrame.new(-396.988922, 21.7570763, -293.929779, -0.102468058, -1.9584887e-09, -0.994736314, 7.23731564e-09, 1, -2.71436984e-09, 0.994736314, -7.47735651e-09, -0.102468058),
	["club"] = CFrame.new(-264.434479, 0.0355005264, -430.854736, -0.999828756, 9.58909574e-09, -0.0185054261, 9.92017934e-09, 1, -1.77993904e-08, 0.0185054261, -1.79799198e-08, -0.999828756),	
	["court"] = CFrame.new(-932, 23, -482.299988),
	["train"] = CFrame.new(591.396118, 34.5070686, -146.159561, 0.0698467195, -4.91725913e-08, -0.997557759, 5.03374231e-08, 1, -4.57684664e-08, 0.997557759, -4.70177071e-08, 0.0698467195),	
}

local SetupsTable = {
    Bank = {
        Positions = {
            CFrame.new(-374.5, 20, -339),
			CFrame.new(-367.5, 20, -339),
			CFrame.new(-381.5, 20, -339),
			CFrame.new(-388.5, 20, -339),
			CFrame.new(-360.5, 20, -339),
			CFrame.new(-374.5, 20, -329),
			CFrame.new(-367.5, 20, -329),
			CFrame.new(-367.5, 20, -329),
			CFrame.new(-388.5, 20, -329),
			CFrame.new(-360.5, 20, -329),
			CFrame.new(-374.5, 20, -319),
			CFrame.new(-367.5, 20, -319),
			CFrame.new(-381.5, 20, -319),
			CFrame.new(-388.5, 20, -319),
			CFrame.new(-360.5, 20, -319),
			CFrame.new(-374.5, 20, -309),
			CFrame.new(-367.5, 20, -309),
			CFrame.new(-381.5, 20, -309),
			CFrame.new(-388.5, 20, -309),
			CFrame.new(-360.5, 20, -309),
			CFrame.new(-374.5, 20, -299),
			CFrame.new(-367.5, 20, -299),
			CFrame.new(-381.5, 20, -299),
			CFrame.new(-388.5, 20, -299),
			CFrame.new(-360.5, 20, -299),
			CFrame.new(-374.5, 20, -289),
			CFrame.new(-367.5, 20, -289),
			CFrame.new(-381.5, 20, -289),
			CFrame.new(-388.5, 20, -289),
			CFrame.new(-360.5, 20, -289),
			CFrame.new(-374.5, 20, -279),
			CFrame.new(-367.5, 20, -279),
			CFrame.new(-381.5, 20, -279),
			CFrame.new(-388.5, 20, -279),
			CFrame.new(-360.5, 20, -279),
        },
    },
    Club = {
        Positions = {
            CFrame.new(-265, -4.87586021, -375),
            CFrame.new(-275, -4.87586021, -375),
            CFrame.new(-255, -4.87586021, -375),
            CFrame.new(-285, -4.87586021, -375),
            CFrame.new(-245, -4.87586021, -375),
            CFrame.new(-265, -4.87586021, -383.200012),
            CFrame.new(-275, -4.87586021, -383.200012),
            CFrame.new(-255, -4.87586021, -383.200012),
            CFrame.new(-285, -4.87586021, -383.200012),
            CFrame.new(-245, -4.87586021, -383.200012),
            CFrame.new(-265, -4.87586021, -367.200012),
            CFrame.new(-275, -4.87586021, -367.200012),
            CFrame.new(-255, -4.87586021, -367.200012),
            CFrame.new(-285, -4.87586021, -367.200012),
            CFrame.new(-245, -4.87586021, -367.200012),
            CFrame.new(-265, -4.87586021, -391.5),
            CFrame.new(-275, -4.87586021, -391.5),
            CFrame.new(-255, -4.87586021, -391.5),
            CFrame.new(-285, -4.87586021, -391.5),
            CFrame.new(-245, -4.87586021, -391.5),
			CFrame.new(-265, -4.87586021, -359.5),
			CFrame.new(-275, -4.87586021, -359.5),
			CFrame.new(-255, -4.87586021, -359.5),
			CFrame.new(-285, -4.87586021, -359.5),
			CFrame.new(-245, -4.87586021, -359.5),
			CFrame.new(-265, -4.87585974, -400),
			CFrame.new(-275, -4.87586021, -400),
			CFrame.new(-255, -4.87586021, -400),
			CFrame.new(-285, -4.87586021, -400),
			CFrame.new(-245, -4.87586021, -400),
			CFrame.new(-265, -4.87586021, -351.5),
			CFrame.new(-275, -4.87586021, -351.5),
			CFrame.new(-255, -4.87586021, -351.5),
			CFrame.new(-285, -4.87586021, -351.5),
			CFrame.new(-245, -4.87586021, -351.5),
        },

    },
    Court = {
        Positions = {
			CFrame.new(-932, 23, -482.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-932, 23, -502.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-932, 23, -522.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-932, 23, -462.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-932, 23, -442.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-952, 23, -482.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-952, 23, -502.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-952, 23, -522.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-952, 23, -462.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-952, 23, -442.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-912, 23, -482.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-912, 23, -502.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-912, 23, -522.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-912, 23, -462.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-912, 23, -442.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-892, 23, -482.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-892, 23, -462.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-892, 23, -442.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-892, 23, -502.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-892, 23, -522.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-972, 23, -482.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-972, 23, -462.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-972, 23, -442.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-972, 23, -502.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-972, 23, -522.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-992, 23, -482.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-992, 23, -502.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-992, 23, -522.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-992, 23, -462.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-992, 23, -442.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-872, 23, -482.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-872, 23, -502.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-872, 23, -522.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-872, 23, -462.299988) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(-872, 23, -442.299988) * CFrame.Angles(0, math.rad(90), 0),
		}
    },
    Train = {
        Positions = {
			CFrame.new(685, 35, -148.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(685, 35, -158.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(685, 35, -138.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(665, 35, -148.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(665, 35, -158.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(665, 35, -138.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(645, 35, -148.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(645, 35, -158.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(645, 35, -138.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(625, 35, -148.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(625, 35, -158.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(625, 35, -138.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(605, 35, -148.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(605, 35, -158.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(605, 35, -138.5) * CFrame.Angles(0, math.rad(90), 0),
			CFrame.new(590, 35, -139.300003) * CFrame.Angles(0, math.rad(135), 0),
			CFrame.new(597, 35, -132.300003) * CFrame.Angles(0, math.rad(135), 0),
			CFrame.new(583.200012, 35, -146.300003) * CFrame.Angles(0, math.rad(135), 0),
			CFrame.new(580, 35, -129.300003) * CFrame.Angles(0, math.rad(135), 0),
			CFrame.new(587, 35, -122.300003) * CFrame.Angles(0, math.rad(135), 0),
			CFrame.new(573.200012, 35, -136.300003) * CFrame.Angles(0, math.rad(135), 0),
			CFrame.new(570, 35, -119.300003) * CFrame.Angles(0, math.rad(135), 0),
			CFrame.new(577, 35, -112.300003) * CFrame.Angles(0, math.rad(135), 0),
			CFrame.new(563.200012, 35, -126.300003) * CFrame.Angles(0, math.rad(135), 0),
			CFrame.new(560.5, 35, -105),
			CFrame.new(570.5, 35, -105),
			CFrame.new(551, 35, -105),
			CFrame.new(560.5, 35, -85),
			CFrame.new(570.5, 35, -85),
			CFrame.new(551, 35, -85),
			CFrame.new(560.5, 35, -65),
			CFrame.new(570.5, 35, -65),
			CFrame.new(551, 35, -65),
        }

    }
}
local function Setup(Type, Debugmode)
    CmdSettings["Aura"] = nil
    
    if Debugmode then
        for PointInTable = 1, 40 do
            local Table = SetupsTable[Type]
            local position = Table["Positions"][PointInTable]
            
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
            local clone = game.Players.LocalPlayer.Character:Clone()
            clone.Parent = workspace
            clone.HumanoidRootPart.CFrame = position
        end
    else
        local Table = SetupsTable[Type]
        local PointInTable = getgenv().PointInTable
        
        if Table and Table["Positions"] and Table["Positions"][PointInTable] then
            Variables["Player"].Character.HumanoidRootPart.CFrame = Table["Positions"][PointInTable]
        else
            warn("No position found for the given setup type and point in table.")
        end
    end
end

local function ShowWallet()
	local Player = game.Players.LocalPlayer
	if Player.Backpack:FindFirstChild("Wallet") then
		Player.Character.Humanoid:EquipTool(Player.Backpack.Wallet)
	end
end
local function RemoveWallet()
	local Player = game.Players.LocalPlayer
	if Player.Character:FindFirstChild("Wallet") then
		Player.Character.Humanoid:UnequipTools()
	end
end
local CurrAnim
local DropFolder = workspace.Ignored:FindFirstChild("Drop")

local function Initiate()
	CurrAnim = nil
	for Index,Var in pairs(CmdSettings) do
		CmdSettings[Var] = nil
	end
	CmdSettings = {}
	for Index,Connection in pairs(Connections) do
		Index[Connection] = nil
		Connection:Disconnect()
	end
	Connections["OnChat"] = game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(data)
 		local Message = data.Message
		local plr = game:service"Players"[data.FromSpeaker]
		if plr.Name ~= getgenv().HostUser then
			return
		end
 		Message = string.lower(Message)
		local Args = string.split(Message," ")
		local AmountOfArgs = #Args
		if Host and not Crashed and Variables["Player"].Character and Variables["Player"].Character:FindFirstChild("HumanoidRootPart") and Variables["Player"].Character:FindFirstChild("Humanoid") and Variables["Player"].Character.Humanoid.Health > 0 then
			if Args[1] == ".drop" then
				Drop(true)
			elseif Args[1] == ".stopdrop" then
				Drop(false)

			elseif Message == ".airlock" then
				AirLock(true)
			elseif Message == ".unairlock" then
				AirLock(false)

			elseif Message == ".heroairlock" then
				HeroAirLock(true)
			elseif Message == ".unheroairlock" then
				HeroAirLock(false)

			elseif Message == ".grave" then
				grave(true)
			elseif Message == ".ungrave" then
				grave(false)

			elseif Args[1] == ".block" then
				block(true)
			elseif Args[1] == ".unblock" then
				block(false)

			elseif Message == ".bring" then
				-- didnt feel the need for a function lmao
				if Host and Host.Character and Host.Character:FindFirstChild("HumanoidRootPart") then
					Variables["Player"].Character.HumanoidRootPart.CFrame = Host.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-1)
				end
			elseif Args[1] == ".bring" and Args[2] == "host" and BringLocations[string.lower(Args[3])] then
				BringPlr(Host,BringLocations[string.lower(Args[3])])
			elseif Args[1] == ".bring" and BringLocations[string.lower(Args[3])] then
				local FoundPlayer = GetPlayerFromString(Args[2])
				if FoundPlayer then
					BringPlr(FoundPlayer,BringLocations[string.lower(Args[3])])
				end
			elseif Args[1] == ".bring" and Args[3] == "host" then
				local FoundPlayer = GetPlayerFromString(Args[2])
				if FoundPlayer then
					BringPlr(FoundPlayer,nil)
				end
			elseif Message == ".setup bank" then
				Setup("Bank")
			elseif Message == ".setup court" then
				Setup("Court")
			elseif Message == ".setup club" then
				Setup("Club")
			elseif Message == ".setup train" then
				Setup("Train")
			elseif Message == ".wallet on" then
				ShowWallet()
			elseif Message == ".wallet off" then
				RemoveWallet()
				elseif Message == ".floss" then
					if CurrAnim and CurrAnim.IsPlaying then
						CurrAnim:Stop()
					end
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "http://www.roblox.com/asset/?id=10714340543"
					CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
					CurrAnim:Play()
					CurrAnim:AdjustSpeed()
	
				elseif Message == ".bonechill" then
					if CurrAnim and CurrAnim.IsPlaying then
						CurrAnim:Stop()
					end
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "http://www.roblox.com/asset/?id=15122972413"
					CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
					CurrAnim:Play()
					CurrAnim:AdjustSpeed()
	
				elseif Message == ".dolphin" then
					if CurrAnim and CurrAnim.IsPlaying then
						CurrAnim:Stop()
					end
					local Anim = Instance.new("Animation")
					Anim.AnimationId = "http://www.roblox.com/asset/?id=10714068222"
					CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
					CurrAnim:Play()
					CurrAnim:AdjustSpeed()
	
					elseif Message == ".stopdance" then
						if CurrAnim and CurrAnim.IsPlaying then
							CurrAnim:Stop()
						end
				elseif Message == ".freeze" then
					local plr = game.Players.LocalPlayer
									plr.Character.HumanoidRootPart.Anchored = true
	
							elseif Message == ".unfreeze" then
								local plr = game.Players.LocalPlayer
								plr.Character.HumanoidRootPart.Anchored = false

						end
					end
				end)
			end

if Host then
	Initiate()
end

Services["Players"].PlayerAdded:Connect(function(Player)
	if Player.Name == Variables["HostUser"] then
		Initiate()
	end
end)
