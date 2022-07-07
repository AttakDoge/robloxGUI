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

--Made by : https://v3rmillion.net/member.php?action=profile&uid=1265584

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
    START PHANTOM FORCES TAB
]]

--Custom tab - depends on game
local availableGames = {
    [292439477] = 'Phantom Forces'
    [3527629287] = 'Big Paintball'
}

local game = availableGames[game.GameId]
if game == nil then
    print('DogeHub: no games are supported!')
end
else
    if game == 'Phantom Forces' then
        --All pf stuff here
        local tab2 = lib:CreateTab('Phantom Forces')
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
end