--I made this off a template -AttakDoge

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

local tab1 = lib:CreateTab('Scripts 1')

tab1:Label('Universal Scripts')

--Walkspeed
tab1:TextBox('Walkspeed', '16', function(output)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = output
end)

--Jump power
tab1:TextBox('Jump Power', '50', function(output)
    game.Players.LocalPlayer.Character.Humanoid.Walkspeed = output
end)

--Fast heal
tab1:Toggle('Fast Heal', false, function(bool)
    while bool do
        game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health + 5
        wait(0.2)
    end
end)

--Fly
tab1:Toggle('Fly', false, function(bool)
    code here
end)