--All ui stuff idk what to call it
--[[
    lib is the ui library
    Make new tab: local (Tab variable name no parenthesis) = lib:CreateTab('Tab name')    ex: local tab1 = lib:CreateTab('Tab1') 

    tab1:Label('Label name')

    tab1:Button('Button name', function()
        whatever code
    end)

    tab1:Toggle("Toggle name", true/false (default mode), function(bool)
        whatever code
    end)

    tab1:TextBox('Text box name', 'default text', function(output)
        whatever code
    end)

    tab1:Dropdown('Dropdown name', {'Option 1', 'Option 2', 'Option 3'} (choices for dropdown), function(output)
        whatever code
    end)


]]

--UI Library by : https://v3rmillion.net/member.php?action=profile&uid=1265584

--Banned users:
game:GetService('StarterGui'):SetCore('SendNotification', {Title = 'DogeHub', Text = 'Checking if youre banned...'})
wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/AttakDoge/robloxGUI/main/banned.lua", true)) --Made by me btw! 

--Main stuffs
game:GetService('StarterGui'):SetCore('SendNotification', {Title = 'DogeHub', Text = 'Loading...'})
wait(6)

_G.Settings = {
    ['Name'] = 'Doge Hub',
    ['Intro'] = true,
    ['Keybind'] = 'LeftAlt'
}

local lib = loadstring(game:HttpGet("https://pastebin.com/raw/QPehPJ6m", true))() --Shadow V2 UI Library

--[[
    START UNIVERSAL SCRIPTS
]]

local tab1 = lib:CreateTab('Scripts 1')

tab1:Label('Universal Scripts')

local playerself = game.Players.LocalPlayer.Character

--Walkspeed
tab1:TextBox('Walkspeed', '16', function(output)
    playerself.Humanoid.WalkSpeed = output
end)

--Jump power
tab1:TextBox('Jump Power', '50', function(output)
    playerself.Humanoid.Walkspeed = output
end)

--Fast heal
tab1:Toggle('Fast Heal', false, function(bool)
    while bool do
        playerself.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health + 5
        wait(0.2)
    end
end)

--Lots of health
tab1:Toggle('Lots of Health', false, function(bool)
    playerself.Humanoid.MaxHealth = math.huge
end)

--Reset Character
tab1:Button('Reset Character', function()
    playerself.Humanoid.Health = 0
end)

--[[
    END UNIVERSAL SCRIPTS
]]

--[[
    START CUSTOM TABS
]]

--Custom tab - depends on game
local availableGames = {
    [292439477] = 'Phantom Forces',
    [3527629287] = 'Big Paintball'
}

local game = availableGames[game.PlaceId]

if game == nil then
    print('DogeHub: no games are supported!')
    print('DogeHub: only universal scripts will be shown')
else
    if game == 'Phantom Forces' then
        --All pf stuff here
        local tab2 = lib:CreateTab('Phantom Forces')

        local ESP = tab2:Toggle('ESP', false, function(bool)
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "PF ESP", Text = "Success!"})
            -- Settings --

            local settings = {
            
            fillcolor = Color3.fromRGB(255, 255, 255);
            filltransparency = 1;
            
            outlinecolor = Color3.fromRGB(255, 255, 255);
            outlinetransparency = .50;
            
            }

            -- Script --

            local plr = game:service'Players'.LocalPlayer
            local highlights = Instance.new('Folder', game:service'CoreGui')

            local function addhighlight(object)
            local highlight = Instance.new('Highlight', highlights)
            highlight.Adornee = object
            
            highlight.FillColor = settings.fillcolor
            highlight.FillTransparency = settings.filltransparency
            
            highlight.OutlineColor = settings.outlinecolor
            highlight.OutlineTransparency = settings.outlinetransparency
            
            highlight.Adornee.Changed:Connect(function()
                if not highlight.Adornee or not highlight.Adornee.Parent then
                    highlight:Destroy()    
                end
            end)
            
            return highlight
            end

            local function addtoplayer(object)
            if object:IsA'Model' and object.Name == 'Player' and object.Parent.Name ~= tostring(plr.TeamColor) then
                addhighlight(object)
            end
            end

            for i,v in pairs(workspace.Players:GetDescendants()) do
                addtoplayer(v)
            end

            workspace.Players.DescendantAdded:Connect(function(v)
                addtoplayer(v)
            end)
        end)

        local fly = tab2:Button('Fly', function()
            ----------------------------------------------------
            ---  A redistribution of https://wearedevs.net/  ---
            ----------------------------------------------------

            -- Made by gamermanaway
            -- Game: https://www.roblox.com/games/292439477/Phantom-Forces

            --[[
            Controls:

            P - Toggle On/Off
            LeftShift - Faster/Slower
            W - Forward
            A - Left
            S -Backward
            D - Right
            LeftControl - Down
            Space - Up
            ]]--

            local Players = game:GetService("Players")
            local UserInputService = game:GetService("UserInputService")
            local RunService = game:GetService("RunService")

            local CurrentCamera = workspace.CurrentCamera

            local LocalPlayer = Players.LocalPlayer

            local Boolean = false
            local Speed = 75
            local Speed2 = 75
            local boostSpeed = 100
            local MovementTable = {
                0,
                0,
                0,
                0,
                0,
                0
            }
            local KeyCodeTable = {
                [Enum.KeyCode.W] = 1,
                [Enum.KeyCode.A] = 2,
                [Enum.KeyCode.S] = 3,
                [Enum.KeyCode.D] = 4,
                [Enum.KeyCode.LeftControl] = 5,
                [Enum.KeyCode.Space] = 6
            }

            UserInputService.InputBegan:Connect(function(Input, ...)
                if Input.KeyCode == Enum.KeyCode.P then
                    if Boolean then
                        Boolean = false
                    else
                        Boolean = true
                    end
                elseif Input.KeyCode == Enum.KeyCode.LeftShift then
                    Speed = boostSpeed
                elseif KeyCodeTable[Input.KeyCode] then
                    MovementTable[KeyCodeTable[Input.KeyCode]] = 1
                end
            end)

            UserInputService.InputEnded:Connect(function(Input, ...)
                if Input.KeyCode == Enum.KeyCode.LeftShift then
                    Speed = Speed2
                elseif KeyCodeTable[Input.KeyCode] then
                    MovementTable[KeyCodeTable[Input.KeyCode]] = 0
                end
            end)

            local GetMass = function(Model)
                local Mass = 0
                for _, Value in pairs(Model:GetDescendants()) do
                    if Value:IsA("BasePart") then
                        Mass = Mass + Value:GetMass()
                    end
                end
                return Mass * workspace.Gravity
            end

            RunService.RenderStepped:Connect(function(...)
                local Character = LocalPlayer.Character
                if Character then
                    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
                    local Mass = GetMass(Character)
                    if HumanoidRootPart then
                        local BodyVelocity = HumanoidRootPart:FindFirstChildOfClass("BodyVelocity")
                        if BodyVelocity then
                            if Boolean then
                                BodyVelocity.MaxForce = Vector3.new(Mass * Speed, Mass * Speed, Mass * Speed)
                                BodyVelocity.Velocity = CurrentCamera.CFrame.LookVector * Speed * (MovementTable[1] - MovementTable[3]) + CurrentCamera.CFrame.RightVector * Speed * (MovementTable[4] - MovementTable[2]) + CurrentCamera.CFrame.UpVector * Speed * (MovementTable[6] - MovementTable[5])
                            else
                                BodyVelocity.MaxForce = Vector3.new(0, 0, 0)
                                BodyVelocity.Velocity = Vector3.new(0, 2, 0)
                            end
                        end
                    end
                end
            end)
        end)
    end

    if game == 'Big Paintball' then
        --All big paintball stuff here
        local tab2 = lib:CreatteLib('Big Paintball')

        local unlockAll = tab2:Button('Unlock All Guns', function()
            --Unlock all script
            --Credit to the person who made
            local library = require(game:GetService("ReplicatedStorage").Framework.Library)

            local env = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["First Person Controller"])

            local unlock_all = true

            --// Gun Bypass
            local old_fire = library.Network.Fire
            library.Network.Fire = newcclosure(function(self, ...)
            local args = {...}

            if unlock_all and tostring(self) == "Request Respawn" then
                args[1] = "1"
            end

            return old_fire(self, unpack(args))
            end)

            local old_own = env.DoesOwnGun
            env.DoesOwnGun = function(...)
            return (unlock_all and true) or old_own(...)
            end
            --

            --// Unlock All
            local old_own_gun = library.GunCmds.DoesOwnGun
            library.GunCmds.DoesOwnGun = newcclosure(function(self, ...)
            return (unlock_all and true) or old_own_gun(self, ...)
            end)
            --

            --// Unlock Offsale
            for _, gun in next, library.Directory.Guns do
            gun["offsale"] = false
            end
            --
        end)
        --more big paintball stuff here
    end
    --More games here
end