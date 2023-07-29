if game.PlaceId == 10449761463 then
	local Discord_Gui = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
	
	local Window = Discord_Gui:Window("Fake X Hub")
	
	local Server = Window:Server("The Strongest Battlegrounds", "")
	
	local Tab_1 = Server:Channel("- Main")
	
	
	local Kick_List = {"Zuwy_Dog", "Zuwy_Ghoul", "Dev_Zuwy", "Aerny_Sim", "Aerny_Chan", "kwanlnwza006", "Lnw_ZEED01", "jojo123584", "BaBymode_Gxmm", "BCZXVBNK354", "Idk"}
	local Uis = game:GetService("UserInputService")
	
	
	Tab_1:Label("// Setting //")
	
	
	local Dropdown_1 = Tab_1:Dropdown("Teleport Back", {"Safe", "Arena"}, function(Function)
		_G.Teleport_Select = Function
	end)
	
	
	Tab_1:Label("// Misc //")
	
	
	Tab_1:Toggle("Auto Bring", false, function(Function)
		if Function then
			_G.Auto_Bring = true
		
			game:GetService("RunService").RenderStepped:Connect(function()
				if _G.Auto_Bring then
					pcall(function()
						if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 0, 0)).Magnitude <= 200 and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HerohunterFists") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasKatana") then
							if _G.Teleport_Select == "Safe" then
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(52.9836502, 652.838135, -360.599274, -0.922817409, 9.61409796e-08, -0.385237575, 1.15601139e-07, 1, -2.73539307e-08, 0.385237575, -6.97765827e-08, -0.922817409)
							elseif _G.Teleport_Select == "Arena" then
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150.799179, 440.756714, 10.8048525, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
							elseif _G.Teleport_Select ~= "Arena" and _G.Teleport_Select ~= "Safe" then
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150.799179, 440.756714, 10.8048525, 0.923881531, 0, 0.382678568, 0, 1, 0, -0.382678568, 0, 0.923881531)
							end
						elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("HerohunterFists") then
							for _, v in pairs(game:GetService("Workspace").Live:GetChildren()) do
								if v.Name ~= game:GetService("Players").LocalPlayer.Name and v ~= nil and v.Humanoid.Health >= 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 and v:FindFirstChild("BeingGrabbed") ~= nil and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HerohunterFists") ~= nil then
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0)
								end
							end
						elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasKatana") then
							for _, v in pairs(game:GetService("Workspace").Live:GetChildren()) do
								if v.Name ~= game:GetService("Players").LocalPlayer.Name and v ~= nil and v.Humanoid.Health >= 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 and v:FindFirstChild("BeingGrabbed") ~= nil and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasKatana") ~= nil then
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0)
								end
							end
						end
					end)
				end
			end)
		else
			_G.Auto_Bring = false
		end
	end)
	
	
	Tab_1:Toggle("Anti Death Counter", false, function(Function)
		if Function then
			_G.Anti_Death_Counter = true

			game:GetService("RunService").RenderStepped:Connect(function()
				if _G.Anti_Death_Counter == true then
					pcall(function()
						for _, v in pairs(game:GetService("Players"):GetChildren()) do
							if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Character:FindFirstChild("CancelUltimate") and v.Character:FindFirstChild("Counter") and (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(52.9836502, 652.838135, -360.599274, -0.922817409, 9.61409796e-08, -0.385237575, 1.15601139e-07, 1, -2.73539307e-08, 0.385237575, -6.97765827e-08, -0.922817409)
							end
						end
					end)
				end
			end)
		else
			_G.Anti_Death_Counter = false
		end
	end)
	
	
	Tab_1:Button("Press R To Teleport", function()
		Uis.InputBegan:Connect(function(Key, Chat)
			if Chat then
				return
			end
			if Key.KeyCode == Enum.KeyCode.R then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer:GetMouse().Hit.p)
			end
		end)
	end)
	
	
	Tab_1:Button("Press T To Safe Position", function()
		Uis.InputBegan:Connect(function(Key, Chat)
			if Chat then
				return
			end
			if Key.KeyCode == Enum.KeyCode.T then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(52.9836502, 652.838135, -360.599274, -0.922817409, 9.61409796e-08, -0.385237575, 1.15601139e-07, 1, -2.73539307e-08, 0.385237575, -6.97765827e-08, -0.922817409)
			end
		end)
	end)
	
	
	while wait(10) do
		for _, v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Name ~= game:GetService("Players").LocalPlayer.Name and game:GetService("Players").LocalPlayer.Name ~= "Zuwy_Dog" and game:GetService("Players").LocalPlayer.Name ~= "Zuwy_Ghoul" and game:GetService("Players").LocalPlayer.Name ~= "Dev_Zuwy" and game:GetService("Players").LocalPlayer.Name ~= "Aerny_Sim" and game:GetService("Players").LocalPlayer.Name ~= "Aerny_Chan" and game:GetService("Players").LocalPlayer.Name ~= "kwanlnwza006" and game:GetService("Players").LocalPlayer.Name ~= "Lnw_ZEED01" and game:GetService("Players").LocalPlayer.Name ~= "jojo123584" and game:GetService("Players").LocalPlayer.Name ~= "BaBymode_Gxmm" then
				for i = 1, #Kick_List do task.wait()
					if v.Name == Kick_List[i] and i <= #Kick_List then
						game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
						game:GetService("Players").LocalPlayer:Kick("เซิร์ฟนี้มี 1 ในเพื่อนของเจ้าของสคิปและคุณไม่สามารถใช้สคิปที่นี่ได้")
					end
				end
			end
		end
	end
else
	game:GetService("Players").LocalPlayer:Kick("??? ได้แค่ที่เดียวเกมเดียวจ้า ???")
end