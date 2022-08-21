local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Super hub","")

local Home = UI:addPage("Home",1,true,6)

Home:addLabel("Main","")

Home:addButton("Teleport to Criminal base",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.5391845703125, 94.1287612915039, 2055.542724609375)
end)

Home:addButton("Teleport to Police Office",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(817.0441284179688, 99.98998260498047, 2266.814208984375)
end)

Home:addButton("Teleport to Cells",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.6797485351562, 112.6314926147461, 2448.21484375)
end)

Home:addSlider("Gravity",0,400,function(value)
    game.Workspace.Gravity = value
end)

Home:addTextBox("This is a TextBox","",function(value)
    game.StarterGui:SetCore("SendNotification",{
        Title = "Wrote";
        Text = value;
    })
end)


-- Just an example of how you would actually use it i guess

local LP = UI:addPage("Local",2,false,6)

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