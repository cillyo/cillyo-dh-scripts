local hostUserId = getgenv().Host
local fpsCap = getgenv().Fps
local prefix = getgenv().Prefix
local altAccounts = getgenv().Alts
local userId = game:GetService('Players').LocalPlayer.UserId

local function loadAltAccountScripts()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ethz07/stuff/main/AntiAfk.Lua'))()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ethz07/stuff/main/Optimization.Lua'))()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ethz07/stuff/main/source-qnznakjwi.Lua'))()
end

local function loadHostScript()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ethz07/stuff/main/CashCounter.Lua'))()
end

if userId == hostUserId then
    loadHostScript()
elseif table.find(altAccounts, userId) then
    loadAltAccountScripts()
end

local locations = {
    bank = {
        [1] = Vector3.new(-385.39776611328125, 21.362009048461914, -336.9497375488281), -- 1. Alt hesap
    [2] = Vector3.new(-375.39776611328125, 21.362009048461914, -336.9497375488281), -- 2. Alt hesap
    [3] = Vector3.new(-365.39776611328125, 21.362009048461914, -336.9497375488281), -- 3. Alt hesap
    [4] = Vector3.new(-385.39776611328125, 21.362009048461914, -326.9497375488281), -- 4. Alt hesap
    [5] = Vector3.new(-375.39776611328125, 21.362009048461914, -326.9497375488281), -- 5. Alt hesap
    [6] = Vector3.new(-365.39776611328125, 21.362009048461914, -326.9497375488281), -- 6. Alt hesap
    [7] = Vector3.new(-385.39776611328125, 21.362009048461914, -316.9497375488281), -- 7. Alt hesap
    [8] = Vector3.new(-375.39776611328125, 21.362009048461914, -316.9497375488281), -- 8. Alt hesap
    [9] = Vector3.new(-365.39776611328125, 21.362009048461914, -316.9497375488281), -- 9. Alt hesap
    [10] = Vector3.new(-385.39776611328125, 21.362009048461914, -306.9497375488281), -- 10. Alt hesap
    [11] = Vector3.new(-375.39776611328125, 21.362009048461914, -306.9497375488281), -- 11. Alt hesap
    [12] = Vector3.new(-365.39776611328125, 21.362009048461914, -306.9497375488281), -- 12. Alt hesap
    [13] = Vector3.new(-385.39776611328125, 21.362009048461914, -296.9497375488281), -- 13. Alt hesap
    [14] = Vector3.new(-375.39776611328125, 21.362009048461914, -296.9497375488281), -- 14. Alt hesap
    [15] = Vector3.new(-365.39776611328125, 21.362009048461914, -296.9497375488281), -- 15. Alt hesap
    [16] = Vector3.new(-385.39776611328125, 21.362009048461914, -286.9497375488281), -- 16. Alt hesap
    [17] = Vector3.new(-375.39776611328125, 21.362009048461914, -286.9497375488281), -- 17. Alt hesap
    [18] = Vector3.new(-365.39776611328125, 21.362009048461914, -286.9497375488281), -- 18. Alt hesap
    [19] = Vector3.new(-385.39776611328125, 21.362009048461914, -276.9497375488281), -- 19. Alt hesap
    [20] = Vector3.new(-375.39776611328125, 21.362009048461914, -276.9497375488281), -- 20. Alt hesap
    [21] = Vector3.new(-365.39776611328125, 21.362009048461914, -276.9497375488281), -- 21. Alt hesap
    [22] = Vector3.new(-385.39776611328125, 21.362009048461914, -266.9497375488281), -- 22. Alt hesap
    [23] = Vector3.new(-375.39776611328125, 21.362009048461914, -266.9497375488281), -- 23. Alt hesap
    [24] = Vector3.new(-365.39776611328125, 21.362009048461914, -266.9497375488281), -- 24. Alt hesap
    [25] = Vector3.new(-385.39776611328125, 21.362009048461914, -256.9497375488281), -- 25. Alt hesap
    [26] = Vector3.new(-375.39776611328125, 21.362009048461914, -256.9497375488281), -- 26. Alt hesap
    [27] = Vector3.new(-365.39776611328125, 21.362009048461914, -256.9497375488281), -- 27. Alt hesap
    [28] = Vector3.new(-385.39776611328125, 21.362009048461914, -246.9497375488281), -- 28. Alt hesap
    [29] = Vector3.new(-375.39776611328125, 21.362009048461914, -246.9497375488281), -- 29. Alt hesap
    [30] = Vector3.new(-365.39776611328125, 21.362009048461914, -246.9497375488281), -- 30. Alt hesap
    [31] = Vector3.new(-385.39776611328125, 21.362009048461914, -236.9497375488281), -- 31. Alt hesap
    [32] = Vector3.new(-375.39776611328125, 21.362009048461914, -236.9497375488281), -- 32. Alt hesap
    [33] = Vector3.new(-365.39776611328125, 21.362009048461914, -236.9497375488281), -- 33. Alt hesap
    [34] = Vector3.new(-385.39776611328125, 21.362009048461914, -226.9497375488281), -- 34. Alt hesap
    [35] = Vector3.new(-375.39776611328125, 21.362009048461914, -226.9497375488281), -- 35. Alt hesap
    [36] = Vector3.new(-365.39776611328125, 21.362009048461914, -226.9497375488281), -- 36. Alt hesap
    [37] = Vector3.new(-385.39776611328125, 21.362009048461914, -216.9497375488281), -- 37. Alt hesap
    [38] = Vector3.new(-375.39776611328125, 21.362009048461914, -216.9497375488281), -- 38. Alt hesap
    },
    club = Vector3.new(0, 0, 0),
    basketball = Vector3.new(0, 0, 0),
    school = Vector3.new(0, 0, 0),
}

local isDropping = false
local isDestroyingCash = false

local function teleportAltsToLocation(location)
    for i, altId in ipairs(altAccounts) do
        local altPlayer = game.Players:GetPlayerByUserId(altId)
        if altPlayer and altPlayer.Character and altPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if type(location) == "table" and location[i] then
                altPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(location[i])
            else
                altPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(location)
            end
        end
    end
end

local function bringAltsToOwner()
    local ownerPlayer = game.Players:GetPlayerByUserId(hostUserId)
    if ownerPlayer and ownerPlayer.Character and ownerPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local ownerPosition = ownerPlayer.Character.HumanoidRootPart.Position
        teleportAltsToLocation(ownerPosition)
    end
end

local function startDroppingCash()
    isDropping = true
    for _, altId in ipairs(altAccounts) do
        local altPlayer = game.Players:GetPlayerByUserId(altId)
        if altPlayer then
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Started Dropping.", "All")
            game.ReplicatedStorage.MainEvent:FireServer('Block', true)
        end
    end
    while isDropping do
        for _, altId in ipairs(altAccounts) do
            local altPlayer = game.Players:GetPlayerByUserId(altId)
            if altPlayer then
                game.ReplicatedStorage.MainEvent:FireServer('DropMoney', '10000')
                task.wait(0.5)
            end
        end
    end
end

local function stopDroppingCash()
    if isDropping then
        isDropping = false
        for _, altId in ipairs(altAccounts) do
            local altPlayer = game.Players:GetPlayerByUserId(altId)
            if altPlayer then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Stopped Dropping.", "All")
                game.ReplicatedStorage.MainEvent:FireServer('Block', false)
            end
        end
    end
end

local function airlock()
    if workspace:FindFirstChild("AirlockPart") then 
        workspace:FindFirstChild("AirlockPart"):Destroy() 
    end
    local Part = Instance.new("Part", workspace)
    Part.Name = "AirlockPart"
    Part.Size = Vector3.new(4, 1.2, 4)
    Part.Transparency = 1
    Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
    Part.Anchored = true

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Part.CFrame + Vector3.new(0, 2.5, 0)
    wait(0.25)
end

local function unlock()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

    if workspace:FindFirstChild("AirlockPart") then
        workspace:FindFirstChild("AirlockPart"):Destroy()
    end
end

local function resetAlts()
    for _, altId in ipairs(altAccounts) do
        local altPlayer = game.Players:GetPlayerByUserId(altId)
        if altPlayer and altPlayer.Character and altPlayer.Character:FindFirstChild("Humanoid") then
            altPlayer.Character.Humanoid.Health = 0
        end
    end
end

local function showWallets()
    for _, altId in ipairs(altAccounts) do
        local altPlayer = game.Players:GetPlayerByUserId(altId)
        if altPlayer and altPlayer.Backpack then
            local walletItem = altPlayer.Backpack:FindFirstChild("Wallet")
            if walletItem then
                altPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(walletItem)
            end
        end
    end
end

local function redeemPromoCode(code)
    local MainEvent = game.ReplicatedStorage.MainEvent
    for _, altId in ipairs(altAccounts) do
        local altPlayer = game.Players:GetPlayerByUserId(altId)
        if altPlayer then
            MainEvent:FireServer('EnterPromoCode', code)
            task.wait(2)
        end
    end
end

local function unWallet()
    for _, altId in ipairs(altAccounts) do
        local altPlayer = game.Players:GetPlayerByUserId(altId)
        if altPlayer and altPlayer.Character then
            local humanoid = altPlayer.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:UnequipTools()
            end
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

local BringLocations = {
	["bank"] = CFrame.new(-396.988922, 21.7570763, -293.929779, -0.102468058, -1.9584887e-09, -0.994736314, 7.23731564e-09, 1, -2.71436984e-09, 0.994736314, -7.47735651e-09, -0.102468058),
	["club"] = CFrame.new(-264.434479, 0.0355005264, -430.854736, -0.999828756, 9.58909574e-09, -0.0185054261, 9.92017934e-09, 1, -1.77993904e-08, 0.0185054261, -1.79799198e-08, -0.999828756),	
	["court"] = CFrame.new(-932, 23, -482.299988),
	["train"] = CFrame.new(591.396118, 34.5070686, -146.159561, 0.0698467195, -4.91725913e-08, -0.997557759, 5.03374231e-08, 1, -4.57684664e-08, 0.997557759, -4.70177071e-08, 0.0698467195),	
}

local destroyCashOn = false

local function handleCashDestroying()
    workspace.Ignored.Drop.ChildAdded:Connect(function(child)
        if child.Parent.Name == "Drop" then
            repeat wait(0.001) until child.Parent ~= nil
            wait(2)
            if destroyCashOn then
                child:Destroy()
            end
        end
    end)
end

handleCashDestroying()

local function altAccountsSay(message)
    for _, altId in ipairs(altAccounts) do
        local altPlayer = game.Players:GetPlayerByUserId(altId)
        if altPlayer then
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        end
    end
end

local function onChatMessage(player, message)
    if player.UserId == hostUserId then
        if message:sub(1, #prefix) == prefix then
            local command = message:sub(#prefix + 1)
            local spaceIndex = command:find(" ")
            local cmd, param = command, nil
            if spaceIndex then
                cmd = command:sub(1, spaceIndex - 1)
                param = command:sub(spaceIndex + 1)
            end

            if cmd == "setup" then
                local location = locations[param]
                if location then
                    teleportAltsToLocation(location)
                end
            elseif cmd == "redeem" then
                redeemPromoCode(param)
            elseif cmd == "delcash" then
                if param == "on" then
                    destroyCashOn = true
                    altAccountsSay("DelCash: On")
                elseif param == "off" then
                    destroyCashOn = false
                    altAccountsSay("DelCash: Off")
                end
            elseif cmd == "setup bank" then
                teleportAltsToLocation(locations.bank)
            elseif cmd == "setup club" then
                teleportAltsToLocation(locations.club)
            elseif cmd == "setup basketball" then
                teleportAltsToLocation(locations.basketball)
            elseif cmd == "setup school" then
                teleportAltsToLocation(locations.school)
            elseif cmd == "bring" then
                bringAltsToOwner()
                if args[1] == "host" and BringLocations[string.lower(args[2])] then
                    BringPlr(Host, BringLocations[string.lower(args[2])])
                elseif args[1] and BringLocations[string.lower(args[2])] then
                    local FoundPlayer = GetPlayerFromString(args[1])
                    if FoundPlayer then
                        BringPlr(FoundPlayer, BringLocations[string.lower(args[2])])
                    end
                elseif args[2] == "host" then
                    local FoundPlayer = GetPlayerFromString(args[1])
                    if FoundPlayer then
                        BringPlr(FoundPlayer, nil)
                    end
                end
            elseif cmd == "drop" then
                startDroppingCash()
            elseif cmd == "stop" then
                stopDroppingCash()
            elseif cmd == "airlock" then
                airlock()
            elseif cmd == "unlock" then
                unlock()
            elseif cmd == "reset" then
                resetAlts()
            elseif cmd == "wallet" then
                showWallets()
            elseif cmd == "unwallet" then
                unWallet()
            elseif cmd == "delcash on" then
                destroyCashOn = true
                altAccountsSay("DelCash: On")
            elseif cmd == "delcash off" then
                destroyCashOn = false
                altAccountsSay("DelCash: Off")
            end
        end
    end
end

local function setupChatListeners(player)
    if player.UserId == hostUserId then
        player.Chatted:Connect(function(message)
            onChatMessage(player, message)
        end)
    end
end

game.Players.PlayerAdded:Connect(function(player)
    setupChatListeners(player)
end)

if game.Players:GetPlayerByUserId(hostUserId) then
    setupChatListeners(game.Players:GetPlayerByUserId(hostUserId))
end

print("Script loaded successfully.")
