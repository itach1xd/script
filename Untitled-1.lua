if game.PlaceId == 16732694052 then

    -- load tab
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    -- seila q carai e esse
    local Window = OrionLib:MakeWindow({Name = "fisch [auto farm 🐟]", HidePremium = false, SaveConfig = true, IntroEnabled = false})

    _G.AutoShake = true  -- Correção aqui: Atribuindo 'true' e não comparando
	_G.AutoEquipar = true
	_G.FisgaPeixe = true -- pega o peixe automatico

    -- função
    function AutoShake()
        while _G.AutoShake == true do
            local args = {
                [1] = 31.199999999999992,
                [2] = 1
            }

            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aurora Rod").events.cast:FireServer(unpack(args))
            wait(0.1)
				end
        end
-- funçao 2
function AutoEquipar()
	while _G.AutoEquipar == true do
		if game.PlaceId == 16732694052 then

    -- load tab
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    -- seila q carai e esse
    local Window = OrionLib:MakeWindow({Name = "fisch [auto farm 🐟]", HidePremium = false, SaveConfig = true, IntroEnabled = false})

    _G.AutoShake = true  -- Correção aqui: Atribuindo 'true' e não comparando
	_G.AutoEquipar = true
	_G.FisgaPeixe = true -- pega o peixe automatico

    -- função 1 com bug de so pegar aurora rod/ falta programar a funçao de olhar inv
    function AutoShake()
        while _G.AutoShake == true do
            local args = {
                [1] = 31.199999999999992,
                [2] = 1
            }

            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aurora Rod").events.cast:FireServer(unpack(args))
            wait(0.1)
				end
        end
-- funçao 2 com bug de nao clicar e congela a tela
function AutoEquipar()
	while _G.AutoEquipar == true do
		local args = {
			[1] = 47.70000000000004,
			[2] = 1
		}
		
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shake").events.cast:FireServer(unpack(args))
		wait(0.01)
			end
		end

--funçao 3
function FisgaPeixe()
	while _G.FisgaPeixe == true do
		local args = {
			[1] = 100,
			[2] = false
		}
		
		game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(args))
     	wait(0.0001)
	    end
end
    -- local tab
    local AutoFarmTab = Window:MakeTab({
        Name = "Auto farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
 
    -- seção teste 1
    local Section = AutoFarmTab:AddSection({
        Name = "Section"
    })

    AutoFarmTab:AddToggle({
        Name = "Jogar isca no mar",
        Default = false,
        Callback = function(Value)
            print(Value)
            _G.AutoShake = Value  -- Atribui o valor de 'Value' à variável _G.AutoShake
            AutoShake()  -- Chama a função AutoShake
        end    
    })
	
	AutoFarmTab:AddToggle({
		Name = "Shake bugado",
		Default = false,
		Callback = function(Value)
			print(Value)
			_G.AutoEquipar = Value
			AutoEquipar()
		end    
	})

	AutoFarmTab:AddToggle({
		Name = "Fisga instantaneo",
		Default = false,
		Callback = function(Value)
			print(Value)
			_G.FisgaPeixe = Value
			FisgaPeixe()
		end    
	})

end

		end
end

--funçao 3
function FisgaPeixe()
	while _G.FisgaPeixe == true do
		local args = {
			[1] = 100,
			[2] = false
		}
		
		game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(args))
     	wait(0.0001)
	    end
end
    -- local tab
    local AutoFarmTab = Window:MakeTab({
        Name = "Auto farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
 
    -- seção teste 1
    local Section = AutoFarmTab:AddSection({
        Name = "Section"
    })

    AutoFarmTab:AddToggle({
        Name = "Auto jogar isca",
        Default = false,
        Callback = function(Value)
            print(Value)
            _G.AutoShake = Value  -- Atribui o valor de 'Value' à variável _G.AutoShake
            AutoShake()  -- Chama a função AutoShake
        end    
    })
	
	AutoFarmTab:AddToggle({
		Name = "shake em teste",
		Default = false,
		Callback = function(Value)
			print(Value)
			_G.AutoEquipar = Value
			AutoEquipar()
		end    
	})

	AutoFarmTab:AddToggle({
		Name = "Fisgar instantaneo",
		Default = false,
		Callback = function(Value)
			print(Value)
			_G.FisgaPeixe = Value
			FisgaPeixe()
		end    
	})

end
