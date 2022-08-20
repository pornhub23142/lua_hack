local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Super hub","")



local LP = UI:addPage("Local",1,false,6)

-- Label

LP:addLabel("Local","Don't use in games with anti cheats")

--- Button

LP:addButton("DIE",function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

-- Toggle

LP:addToggle("Sprint",function(value)
    if value == false then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
    end
end)

-- Slider

LP:addSlider("WalkSpeed",16,150,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

-- Textbox

LP:addTextBox("Jump Power / 50 is default","Number here",function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

-- Dropdown 

local PLIST = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.DisplayName)
end

LP:addDropdown("Teleport to Player",PLIST,4,function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)

