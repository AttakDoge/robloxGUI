
--Old, could be used later, depreciated for now

--Will do nothing! also has no scripts and the template is still there

--THIS IS DEPRECIATED - IF YOU ARE READING, THIS IS NOT USED

--Start main
--[[
--Settings
local key = "RightShift" --Keyname in the quotes
local color = { --Change the nums to change the color. It is an RGB type
	red = 69,
	green = 69,
	blue = 207,
	random = 0 --Change to 1 for random color. Could be rainbow, tho
}
local randcolor = {
	[1] = math.random(0, 255),
	[2] = math.random(0, 255),
	[3] = math.random(0, 255)
}


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Kronos"))() --Kronos UI Lib
if color.random == 1 then
	local window = library:Window({
	Title = "AttakDoge's Script Hub",
	Accent = Color3.fromRGB(randcolor[1],randcolor[2],randcolor[3]),
	Logo = 3610245066,
	ToggleKey = Enum.KeyCode[key]
})
else
	local window = library:Window({
	Title = "AttakDoge's Script Hub",
	Accent = Color3.fromRGB(color.red,color.green,color.blue),
	Logo = 3610245066,
	ToggleKey = Enum.KeyCode[key]
})
end


local tab = window:NewTab({
   Title = "All Scripts",
   Logo = 4483345998
})

local tabsection = tab:TabSection({
   Title = "Main (Unviversal)"
})

local column = tabsection:AddColumn({
   Title = "Scripts"
})

local section = column:Section({
   Title = "Universal Scripts"
})

section:Button({
   Text = "Button",
   Callback = function() end
})

section:Toggle({
   Text = "Toggle",
   State = false,
   Callback = function() end
})

section:TextLabel({
   Text = "Textlabel"
})

section:Divide({})

section:Keybind({
   Text = "Keybind",
   Key = Enum.KeyCode.F,
   Callback = function() end
})

section:Textbox({
   Text = "Textbox",
   Callback = function() end
})

section:Dropdown({
   Text = "Dropdown",
   List = {'option1', 'option2', 'option3'},
   Callback = function() end
})

section:Slider({
   Text = "Slider",
   Min = 0,
   Max = 100,
   Def = 50,
   Callback = function() end
})

]]
--obfuscate below
game:Players.LocalPlayer:Kick('What did I say? Dont use this!')
wait(5)
game:GetService('StarterGUI'):SetCore('SendNotification', {Title = 'DogeHub', Text = 'Nice no kick u got there'})
wait(2)
game:GetService('StarterGUI'):SetCore('SendNotification', {Title = 'DogeHub', Text = 'U wouldnt mind if i screw u over, right?'})
wait(3)
game:GetService('StarterGUI'):SetCore('SendNotification', {Title = 'DogeHub', Text = '5'})
wait(1)
game:GetService('StarterGUI'):SetCore('SendNotification', {Title = 'DogeHub', Text = '4'})
wait(1)
game:GetService('StarterGUI'):SetCore('SendNotification', {Title = 'DogeHub', Text = '3'})
wait(1)
game:GetService('StarterGUI'):SetCore('SendNotification', {Title = 'DogeHub', Text = '2'})
wait(1)
game:GetService('StarterGUI'):SetCore('SendNotification', {Title = 'DogeHub', Text = '1'})
wait(1)
game:GetService('StarterGUI'):SetCore('SendNotification', {Title = 'DogeHub', Text = 'Screwing you over, please wait...'})
wait(5)
while true do
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('DogeHub Automated Message: '..game.Players.LocalPlayer.Name.. ' is using an old version of DogeHub cheating script hacks', 'All')
   game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 1
   game.Players.LocalPlayer.Character.Humanoid.Health = 0
   wait(1)
end
