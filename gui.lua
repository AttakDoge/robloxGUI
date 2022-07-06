

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