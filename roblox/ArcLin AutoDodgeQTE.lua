-- WeaponList:
-- "Spear", "Magic", "Dagger", "Fist", "Sword"
local Weapon = "Sword"

-- Anti-Cheat Adonis Bypasser
for k, v in pairs(getgc(true)) do
    if pcall(function() return rawget(v, "indexInstance") end) and type(rawget(v, "indexInstance")) == "table" and (rawget(v, "indexInstance"))[1] == "kick" then
        v.tvk = { "kick", function() return game.Workspace:WaitForChild("") end }
    end
end
for i, v in next, getgc() do
    if typeof(v) == "function" and islclosure(v) and not isexecutorclosure(v) then
        local Constants = debug.getconstants(v)
        if table.find(Constants, "Detected") and table.find(Constants, "crash") then
            setthreadidentity(2)
            hookfunction(v, function()
                return task.wait(9e9)
            end)
            setthreadidentity(7)
        end
    end
end
-- End Anti-Cheat Adonis Bypasser

task.wait()
local old
old = hookmetamethod(game, "__namecall", function(self, ...)
  if self.Name == "RemoteFunction" and getnamecallmethod() == "FireServer" then
      local args = {...}
      if args[2] == "DodgeMinigame" and typeof(args[1]) == "table" then
       args[1] = {true, true}
       return old(self, unpack(args))
      end
  end
  return old(self, ...)
end)

task.wait()
local old2
old2 = hookmetamethod(game, "__namecall", function(self, ...)
  if self.Name == "RemoteFunction" and getnamecallmethod() == "FireServer" then
      local args = {...}
      if args[2] == Weapon.."QTE" then
       args[1] = true
       return old2(self, unpack(args))
      end
  end
  return old2(self, ...)
end)
