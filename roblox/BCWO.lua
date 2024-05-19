local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Credux/Main/Script/roblox/BCWO%20Men.lua'))()
 
local Window = Rayfield:CreateWindow({
   Name = "BCW:O Script",
   LoadingTitle = "Balanced Craftwars Overhaul Script",
   LoadingSubtitle = "by No One",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "BCWO"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
 
local Tab_I = Window:CreateTab("Main")
local Section = Tab_I:CreateSection("Stuffs")
local Toggle = Tab_I:CreateToggle({
   Name = "Equinox Canon [AUTO_AIM + SHORT_COOLDOWN]",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   while true do
for _, Players in ipairs(game.Players:GetPlayers()) do
for _, Enemies in ipairs(workspace:GetChildren()) do
if Enemies.ClassName == "Model" and Enemies:FindFirstChild("EnemyMain") ~= nil and Enemies:FindFirstChild("Humanoid").Health > 1 then
if Enemies:FindFirstChild("Torso") ~= nil then
local args = {
    [1] = "fire",
    [2] = {
        [1] = game.Players.LocalPlayer.Character:FindFirstChild("Torso").Position,
        [2] = Enemies:FindFirstChild("Torso").Position,
        [3] = 100
    }
}
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Equinox Cannon").RemoteFunction:InvokeServer(unpack(args))
else repeat task.wait() until Enemies:FindFirstChild("Torso") ~= nil
end
end
end
end
task.wait(0.005)
end
   end,
})
local Toggle = Tab_I:CreateToggle({
   Name = "Void Star [AUTO_AIM + SHORT_COOLDOWN]",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  while true do
for _, Players in ipairs(game.Players:GetPlayers()) do
for _, Enemies in ipairs(workspace:GetChildren()) do
if Enemies.ClassName == "Model" and Enemies:FindFirstChild("EnemyMain") ~= nil and Enemies:FindFirstChild("Humanoid").Health > 1 then
if Enemies:FindFirstChild("Torso") ~= nil then
local args = {
[1] = "shoot",
[2] = {
[1] = game.Players.LocalPlayer.Character:FindFirstChild("Torso").Position,
[2] = Enemies:FindFirstChild("Torso").Position
}
}
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Void Star").RemoteFunction:InvokeServer(unpack(args))
else repeat task.wait() until Enemies:FindFirstChild("Torso") ~= nil
end
end
end
end
task.wait(0.005)
end
end,
})
 
local Button = Tab_I:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end,
})
 
local Tab_II = Window:CreateTab("Dungeons")
local Section = Tab_II:CreateSection("Temple_OF_Riches")
local Toggle = Tab_II:CreateToggle({
   Name = "Torment_FARM",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value == true then
   local plr = game.Players.LocalPlayer
if workspace:FindFirstChild("HERE") == nil and workspace:FindFirstChild("TempleOfRiches") ~= nil then
local p = Instance.new("Part", workspace)
p.Name = "HERE"
p.Anchored = true
p.Size = Vector3.new(500,20,500)
p.CFrame = CFrame.new(-293.685638, 21920.7422, -22.6846542, -0.848387599, 0, -0.529375553, 0, 1, 0, 0.529375553, 0, -0.848387599)
else workspace.HERE:Destroy()
end
for _, Parts in ipairs(plr.Character:GetChildren()) do
if Parts.ClassName == "Part" then
Parts.CFrame = CFrame.new(-293.585205, 21951.3672, -23.1600666, -0.849871159, -0, -0.526990533, 0, 1, 0, 0.526990533, 0, -0.849871159)
end
end
 
repeat
local args = {
    [1] = "fire",
    [2] = {
        [1] = Vector3.new(-18.035133361816406, 77.1800537109375, -227.30027770996094),
        [2] = Vector3.new(-4.906883239746094, 6.000038146972656, 19.0361328125),
        [3] = 100
    }
}
 
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Equinox Cannon").RemoteFunction:InvokeServer(unpack(args))
local args = {
    [1] = "superfire",
    [2] = {
        [1] = Vector3.new(13.404540061950684, 49.268306732177734, 105.53106689453125),
        [2] = Vector3.new(15.534479141235352, -0.5150753259658813, 68.16338348388672)
    }
}
 
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Equinox Cannon").RemoteFunction:InvokeServer(unpack(args))
until Value == false
end
   end,
})
 
local Button = Tab_II:CreateButton({
   Name = "Teleport Back",
   Callback = function()
   local Player = game.Players.LocalPlayer
   for _, Parts in ipairs(Player.Character:GetChildren()) do
if Parts.ClassName == "Part" and workspace:FindFirstChild("TempleOfRiches") ~= nil then
Parts.CFrame = CFrame.new(-217.789246, 48.4999619, 217.789505, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
end
   end
end,
})
 
local Button = Tab_II:CreateButton({
   Name = "Teleport To Part",
   Callback = function()
   local Player = game.Players.LocalPlayer
   if workspace:FindFirstChild("HERE") ~= nil then
   for _, Parts in ipairs(Player.Character:GetChildren()) do
if Parts.ClassName == "Part" and workspace:FindFirstChild("TempleOfRiches") ~= nil then
Parts.CFrame = CFrame.new(-293.585205, 21951.3672, -23.1600666, -0.849871159, -0, -0.526990533, 0, 1, 0, 0.526990533, 0, -0.849871159)
end
end
else
local p = Instance.new("Part", workspace)
p.Name = "HERE"
p.Anchored = true
p.Size = Vector3.new(500,20,500)
p.CFrame = CFrame.new(-293.685638, 21920.7422, -22.6846542, -0.848387599, 0, -0.529375553, 0, 1, 0, 0.529375553, 0, -0.848387599)
end
end,
})
 
local Tab_III = Window:CreateTab("Mining")
local Section = Tab_III:CreateSection("Stuffs")
 
local Dropdown = Tab_III:CreateInput({
   Name = "Ore Finder",
   PlaceholderText = "Input Ore Name Here",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
      local TweenService = game:GetService("TweenService")
local Info = TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
local Part = game.Players.LocalPlayer.Character:FindFirstChild("Torso")
local Goal = {
CFrame = workspace.Map.Ores[Text].Base.CFrame * CFrame.new(0,0,6)
}
 
local Tween = TweenService:Create(Part, Info, Goal)
local HighLight = Instance.new("Highlight", workspace.Map.Ores[Text].Mineral)
Part.Anchored = true
Tween:Play()
Tween.Completed:Wait(1)
Part.Anchored = false
   end,
})
 
local Button = Tab_III:CreateButton({
   Name = "Delete All Fake Ores [ONLY WORK IN PRIVATE SERVER]",
   Callback = function()
   local Player = game.Players.LocalPlayer
   if workspace:FindFirstChild("Beneath") or workspace:FindFirstChild("Caverns") ~= nil then
   for _, Ores in ipairs(workspace.Map.Ores:GetChildren()) do
if Ores.ClassName == "Model" then
Ores:Destroy()
end
end
end
end,
})
 
local Button = Tab_III:CreateButton({
   Name = "Teleport To Enchanting Room",
   Callback = function()
   local Player = game.Players.LocalPlayer
   if workspace:FindFirstChild("Beneath") ~= nil then
   for _, Parts in ipairs(Player.Character:GetChildren()) do
if Parts.ClassName == "Part" then
Parts.CFrame = CFrame.new(-1026.20642, 265.233612, 770.59729, -0.91853714, 0, 0.395334631, 0, 1, 0, -0.395334631, -0, -0.91853714)
end
end
end
end,
})
 
local Button = Tab_III:CreateButton({
   Name = "Delete All Beneath Mobs [ONLY WORK IN PRIVATE SERVER]",
   Callback = function()
   local Player = game.Players.LocalPlayer
   if workspace:FindFirstChild("Beneath") ~= nil then
   for _, Enemies in ipairs(workspace:GetChildren()) do
if Enemies.ClassName == "Model" and Enemies:FindFirstChild("EnemyMain") ~= nil then
Enemies:Destroy()
end
end
end
end,
})
 
local Button = Tab_III:CreateButton({
   Name = "Pickaxe of Balance [AUTO + SHORT_COOLDOWN]",
   Callback = function()
   local Player = game.Players.LocalPlayer
   if workspace:FindFirstChild("Beneath") or workspace:FindFirstChild("Caverns") ~= nil then
   while true do
 local args = {
    [1] = "mine"
}
 
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pickaxe of Balance").RemoteFunction:InvokeServer(unpack(args))
task.wait(0.005)
end
end
end,
})
