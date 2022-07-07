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
    
    
    local tab1 = lib:CreateTab('Tab1')
    
    tab1:Label('Epik Label')
    tab1:Button('Epik Button', function()
    print("OMG, YOU PRESSED THE BUTTON! YOU'RE SO SMART!")
    end)
    tab1:Toggle('Epik Toggle', false, function(bool)
    print(bool)
    end)
    tab1:TextBox('Epik Textbox', 'Placeholder idk', function(output)
    print(output)
    end)
    tab1:Dropdown('Epik Dropdown', {'Epic', 'Right?', 'Skillz'}, function(output)
    print(output)
    end)
    tab1:Label('Everything is epik, totes.')
    
    local tab2 = Library:CreateTab('Tab2')
    tab2:Label('OMG ANOTHER TAB!')
    
    
    --[[
    Refresh example:
    ]]
    local TabwithRefresh = lib:CreateTab('TabwithRefresh')
    
    local Dropdown = TabwithRefresh:Dropdown('Epik Dropdown', {'Epic', 'Right?', 'Skillz'}, function(output)
    print(output)
    end)
    
    wait(10)
    
    Dropdown:Refresh('OMG REFRESH', {'NANI', 'WHAT IS', 'THIS MAGIC?'}, function(output)
    print(output)
    print('lol')
    end)