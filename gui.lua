--Made by : https://v3rmillion.net/member.php?action=profile&uid=712121

--[[
Theme = {
["MainColor"] = Color3.fromRGB(20, 20, 20);
["BackColor"] = Color3.fromRGB(10, 10, 10);
["AccentRGB"] = Color3.fromRGB(64, 51, 145);
["ToggleRGB"] = Color3.fromRGB(64, 51, 145);
}
]]--
local library = loadstring(game:HttpGet("https://wally-hub.eats-shit.xyz/images/ql0tevzglj94.txt"))()
local tab1 = library.newTab("Local")
local tab3 = library.newTab("ESP")
local tab2 = library.newTab("Settings")
kys = function()
game:GetService("Players").LocalPlayer.Character:BreakJoints()
end
tab1.addbtn("die", kys)
tab1.addtoggle("WS Enabled", "wsenb", function(enb) end)
tab1.addbox("WS Value", "wsvalue", 16, function(value) end)
game:GetService("RunService").RenderStepped:Connect(function()
if library.flags["wsenb"] == false then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
else
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = library.flags["wsvalue"]
end
end)
tab2.addbtn("Destroy GUI", function() for i,v in pairs(game.CoreGui:GetChildren()) do if v.Name == "UiLib" then v:Destroy() end end end)
tab2.addbox("Title", "titleflag", "Title Here", function(lol) end)
tab2.addbox("Duration", "durflag", 1, function(ggg) end)
tab2.addbox("Description", "descflag", "Description", function(ll) end)
tab2.addbtn("Send Notification", function()
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = library.flags["titleflag"],
Duration = tostring(library.flags["durflag"]),
Text = library.flags["descflag"]
})
end)