local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Script for Hotel Elephant by Lemon4ik", "RJTheme7")

local Tab = Window:NewTab("Admin Script")

local Section = Tab:NewSection("Admin Script")

Section:NewButton("Enable Admin Script", "Your Admin panel is turned on.", function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local Tab = Window:NewTab("Local Player")

local Section = Tab:NewSection("Local Player")

Section:NewToggle("Infinite Jump", "You can turn Infinite Jump on and off.", function(state)
    _G.infinjump = state

    if _G.infinJumpStarted == nil then
        --Ensures this only runs once to save resources
        _G.infinJumpStarted = true

        --The actual infinite jump
        local plr = game:GetService('Players').LocalPlayer
        local m = plr:GetMouse()
        m.KeyDown:connect(function(k)
            if _G.infinjump then
                if k:byte() == 32 then
                humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
                humanoid:ChangeState('Jumping')
                wait()
                humanoid:ChangeState('Seated')
                end
            end
        end)
    end
end)

Section:NewSlider("WalkSpeed", "You change yours WalkSpeed.", 500, 16, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "You change yours JumpPower.", 500, 50, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewSlider("Gravity", "You change yours Gravity.", 0, 196.1999969482422, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Workspace.Gravity = s
end)

local Tab = Window:NewTab("Teleports")

local Section = Tab:NewSection("Teleports in the hotel")

Section:NewButton("Teleport to lobby", "You teleport to the hotel lobby.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.066322, 99.3999939, 21.3833447, -0.999997914, 3.77998575e-08, -0.00203605928, 3.795871e-08, 1, -7.79818947e-08, 0.00203605928, -7.80590241e-08, -0.999997914)
end)

Section:NewButton("Teleport to bar", "You teleport to the hotel bar.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.353027, 99.3999939, 62.1103401, 0.961129844, 2.63241096e-09, 0.276096672, -3.66468704e-08, 1, 1.18038336e-07, -0.276096672, -1.23568242e-07, 0.961129844)
end)

Section:NewButton("Teleport to casino", "You teleport to the hotel casino.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.16597, 87.3999939, 37.2401085, 0.00828997884, -3.43012658e-08, -0.999965608, 9.82858879e-08, 1, -3.34876304e-08, 0.999965608, -9.80049037e-08, 0.00828997884)
end)

Section:NewButton("Teleport to the pool outside", "You teleport to the pool outside.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42.8838692, 161.799942, 51.4428902, 0.914825439, 4.55519107e-08, -0.403849453, -1.55885154e-08, 1, 7.74821913e-08, 0.403849453, -6.45872618e-08, 0.914825439)
end)

Section:NewButton("Teleport to the chocolate pool", "You teleport to the chocolate pool.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.869522, 160.393402, 50.8446312, -0.00236574747, -1.91754008e-08, 0.999997199, 2.98837897e-08, 1, 1.92461513e-08, -0.999997199, 2.9929236e-08, -0.00236574747)
end)

Section:NewButton("Teleport to jacuzzi", "You teleport to jacuzzi.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.7512665, 187.457687, 39.5322418, -0.883328259, 1.56567337e-09, -0.468754947, 1.11060992e-08, 1, -1.75884161e-08, 0.468754947, -2.07423838e-08, -0.883328259)
end)

Section:NewButton("Teleport to the gym", "You teleport to the gym.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131.3396, 186.400009, 42.7067299, -0.750527143, -7.57149508e-08, -0.660839617, -4.21686686e-08, 1, -6.66821691e-08, 0.660839617, -2.21800498e-08, -0.750527143)
end)

local Section = Tab:NewSection("Teleports to hotel floors")

Section:NewButton("Teleport to the 1st floor", "You teleport to the 1st floor.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.6793671, 99.3950043, 24.7689991, -0.810879111, -2.62210111e-08, -0.585213721, 6.10628792e-09, 1, -5.32668203e-08, 0.585213721, -4.67664343e-08, -0.810879111)
end)

Section:NewButton("Teleport to the 2ad floor", "You teleport to the 2ad floor.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.5955658, 111.399994, 38.9955292, -0.582865238, 4.56603466e-09, -0.812568843, -7.16866233e-10, 1, 6.13347595e-09, 0.812568843, 4.15749302e-09, -0.582865238)
end)

Section:NewButton("Teleport to the 3rd floor", "You teleport to the 3rd floor.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103.981895, 123.399994, 63.4343147, 0.999978662, -4.00211242e-08, -0.00653185556, 3.99624405e-08, 1, -9.11487064e-09, 0.00653185556, 8.85364759e-09, 0.999978662)
end)

Section:NewButton("Teleport to the 4th floor", "You teleport to the 4th floor.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103.741325, 136.194717, 63.3069839, 0.999874949, 3.36384574e-08, -0.0158127919, -3.42505082e-08, 1, -3.84351253e-08, 0.0158127919, 3.89719155e-08, 0.999874949)
end)

Section:NewButton("Teleport to the 5th floor", "You teleport to the 5th floor.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103.18998, 148.399994, 63.1459656, 0.999656916, 9.42464773e-09, 0.0261918828, -7.99292987e-09, 1, -5.47673444e-08, -0.0261918828, 5.45392034e-08, 0.999656916)
end)

Section:NewButton("Teleport to the 6th floor", "You teleport to the 6th floor.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.0327301, 165.393402, 58.3320923, 0.652109087, 4.1611294e-08, -0.758125126, -9.55899324e-08, 1, -2.73355525e-08, 0.758125126, 9.02948969e-08, 0.652109087)
end)

local Section = Tab:NewSection("Teleport to secret rooms")

Section:NewButton("Teleport to the secret rooms 1", "You teleport to the secret rooms 1.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.348434, 4.99999952, -8.9367218, 0.99992156, -3.91055588e-09, 0.0125249457, 4.76955542e-09, 1, -6.85532129e-08, -0.0125249457, 6.86075765e-08, 0.99992156)
end)

Section:NewButton("Teleport to the secret rooms 2", "You teleport to the secret rooms 2.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.579544, 208.400009, 62.0258064, 0.999198139, -3.79562426e-09, 0.0400385447, 6.94600111e-09, 1, -7.85444882e-08, -0.0400385447, 7.87596122e-08, 0.999198139)
end)

Section:NewButton("Teleport to the secret rooms 3", "You teleport to the secret rooms 3.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-38.5873375, 31.199995, 69.2340927, -0.999996543, 6.32102726e-08, 0.0026187906, 6.3245281e-08, 1, 1.32846845e-08, -0.0026187906, 1.34502649e-08, -0.999996543)
end)

Section:NewButton("Teleport to the secret rooms 4", "You teleport to the secret rooms 4.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.181076, 26.9999981, -38.2912445, -0.999782622, -1.41060559e-08, 0.0208483469, -1.5770441e-08, 1, -7.96685669e-08, -0.0208483469, -7.99800333e-08, -0.999782622)
end)

local Section = Tab:NewSection("Teleport to other places")

Section:NewButton("Teleport to the street", "You teleport to the street.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6366348, 98.9999924, -14.1070528, -0.489777803, -1.10546772e-07, -0.871847272, -4.75902056e-08, 1, -1.00061264e-07, 0.871847272, -7.51639551e-09, -0.489777803)
end)

Section:NewButton("Teleport to the helicopter", "You teleport to the helicopter.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(56.9684219, 99.9999924, 5.3580718, 0.0180894323, -2.01069073e-09, -0.999836385, -4.85923728e-08, 1, -2.8901721e-09, 0.999836385, 4.86367036e-08, 0.0180894323)
end)

Section:NewButton("Teleport to the boat shop", "You teleport to the boat shop.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(270.290009, 11.6999989, -24.7430038, -0.9999336, -6.99123959e-08, 0.0115213227, -6.97100475e-08, 1, 1.79647497e-08, -0.0115213227, 1.71604047e-08, -0.9999336)
end)

Section:NewButton("Teleport to the clothing store", "You teleport to the clothing store.", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(340.464508, 11.6999979, -210.862503, 0.99977988, -2.21315055e-09, 0.0209815186, 2.55003885e-09, 1, -1.602967e-08, -0.0209815186, 1.60796443e-08, 0.99977988)
end)

local Tab = Window:NewTab("Money Hack")

local Section = Tab:NewSection("Money hack for you")

Section:NewButton("1k cash", "You get 1000 cash.", function()
   local args = {
    [1] = false;
    [2] = 1000;
    [3] = "Cash";
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
end)

Section:NewButton("5k cash", "You get 5000 cash.", function()
   local args = {
    [1] = false;
    [2] = 5000;
    [3] = "Cash";
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
end)

Section:NewButton("10k cash", "You get 10000 cash.", function()
   local args = {
    [1] = false;
    [2] = 10000;
    [3] = "Cash";
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
end)

Section:NewButton("50k cash", "You get 50000 cash.", function()
   local args = {
    [1] = false;
    [2] = 50000;
    [3] = "Cash";
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
end)

Section:NewButton("100k cash", "You get 100000 cash.", function()
   local args = {
    [1] = false;
    [2] = 100000;
    [3] = "Cash";
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
end)

Section:NewButton("500k cash", "You get 500000 cash.", function()
   local args = {
    [1] = false;
    [2] = 500000;
    [3] = "Cash";
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
end)

Section:NewButton("1kk cash", "You get 1000000 cash.", function()
   local args = {
    [1] = false;
    [2] = 1000000;
    [3] = "Cash";
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
end)

Section:NewButton("1kkk cash", "You get 1000000000 cash.", function()
 local args = {
    [1] = false;
    [2] = 1000000000;
    [3] = "Cash";
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
end)

local Section = Tab:NewSection("Money hack for all")

Section:NewButton("1k cash", "All get 1000 cash.", function()
  for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = false;
    [2] = 1000;
    [3] = "Cash";
    [4] = v;
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
task.wait(0)
end
end)

Section:NewButton("5k cash", "All get 5000 cash.", function()
  for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = false;
    [2] = 5000;
    [3] = "Cash";
    [4] = v;
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
task.wait(0)
end
end)

Section:NewButton("10k cash", "All get 10000 cash.", function()
  for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = false;
    [2] = 10000;
    [3] = "Cash";
    [4] = v;
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
task.wait(0)
end
end)

Section:NewButton("50k cash", "All get 50000 cash.", function()
  for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = false;
    [2] = 50000;
    [3] = "Cash";
    [4] = v;
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
task.wait(0)
end
end)

Section:NewButton("100k cash", "All get 100000 cash.", function()
  for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = false;
    [2] = 100000;
    [3] = "Cash";
    [4] = v;
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
task.wait(0)
end
end)

Section:NewButton("500k cash", "All get 500000 cash.", function()
  for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = false;
    [2] = 500000;
    [3] = "Cash";
    [4] = v;
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
task.wait(0)
end
end)

Section:NewButton("1kk cash", "All get 1000000 cash.", function()
  for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = false;
    [2] = 1000000;
    [3] = "Cash";
    [4] = v;
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
task.wait(0)
end
end)

Section:NewButton("1kkk cash", "All get 1000000000 cash.", function()
  for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = false;
    [2] = 1000000000;
    [3] = "Cash";
    [4] = v;
}

game:GetService("ReplicatedStorage"):WaitForChild("MoneyRequest", 9e9):FireServer(unpack(args))
task.wait(0)
end
end)

local Tab = Window:NewTab("Other")

local Section = Tab:NewSection("Open GUI")

local Section = Tab:NewSection("GUI Boat Shop")

Section:NewButton("Opening of the GUI Boat Shop", "You have a boat shop gui opening.", function()
   local args = {
    [1] = true;
    [2] = "BoatShop";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

Section:NewButton("Closing of the GUI Boat Shop", "You have a boat shop gui closing.", function()
   local args = {
    [1] = false;
    [2] = "BoatShop";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

local Section = Tab:NewSection("GUI BlackJack")

Section:NewButton("Opening of the GUI BlackJack", "You have a BlackJack gui opening.", function()
   local args = {
    [1] = true;
    [2] = "BlackJack";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

Section:NewButton("Closing of the GUI BlackJack", "You have a BlackJack gui closing.", function()
   local args = {
    [1] = false;
    [2] = "BlackJack";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

local Section = Tab:NewSection("GUI Borrow")

Section:NewButton("Opening of the GUI Borrow", "You have a Borrow gui opening.", function()
   local args = {
    [1] = true;
    [2] = "Borrow";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

Section:NewButton("Closing of the GUI Borrow", "You have a Borrow gui closing.", function()
   local args = {
    [1] = false;
    [2] = "Borrow";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

local Section = Tab:NewSection("GUI Hairdresser")

Section:NewButton("Opening of the GUI Hairdresser", "You have a Hairdresser gui opening.", function()
   local args = {
    [1] = true;
    [2] = "Hairdresser";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

Section:NewButton("Closing of the GUI Hairdresser", "You have a Hairdresser gui closing.", function()
 local args = {
    [1] = false;
    [2] = "Hairdresser";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

local Section = Tab:NewSection("GUI PlasticSurgeon")

Section:NewButton("Opening of the GUI PlasticSurgeon", "You have a PlasticSurgeon gui opening.", function()
   local args = {
    [1] = true;
    [2] = "PlasticSurgeon";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

Section:NewButton("Closing of the GUI PlasticSurgeon", "You have a PlasticSurgeon gui closing.", function()
 local args = {
    [1] = false;
    [2] = "PlasticSurgeon";
}

game:GetService("ReplicatedStorage"):WaitForChild("GuiHandler", 9e9):FireServer(unpack(args))
end)

local Section = Tab:NewSection("Boat spawn ( free )")

Section:NewButton("Spawn a Jetski boat", "You will spawn a Jetski boat.", function()
 local args = {
    [1] = "Jetski";
}

game:GetService("ReplicatedStorage"):WaitForChild("BoatSpawner", 9e9):InvokeServer(unpack(args))
end)

Section:NewButton("Spawn a Dinghy boat", "You will spawn a Dinghy boat.", function()
 local args = {
    [1] = "Dinghy";
}

game:GetService("ReplicatedStorage"):WaitForChild("BoatSpawner", 9e9):InvokeServer(unpack(args))
end)

Section:NewButton("Spawn a Transport boat", "You will spawn a Transport boat.", function()
 local args = {
    [1] = "Transport Boat";
}

game:GetService("ReplicatedStorage"):WaitForChild("BoatSpawner", 9e9):InvokeServer(unpack(args))
end)

local Section = Tab:NewSection("Rooms")

Section:NewButton("Take all available rooms", "You will take all possible rooms.", function()
 local args = {
    [1] = false,
    [2] = "Room 1"
}

game:GetService("ReplicatedStorage"):WaitForChild("RoomGiver"):FireServer(unpack(args))
local args = {
    [1] = false,
    [2] = "Room 2"
}

game:GetService("ReplicatedStorage"):WaitForChild("RoomGiver"):FireServer(unpack(args))

local args = {
    [1] = false,
    [2] = "Room 3"
}

game:GetService("ReplicatedStorage"):WaitForChild("RoomGiver"):FireServer(unpack(args))

local args = {
    [1] = false,
    [2] = "Room 4"
}

game:GetService("ReplicatedStorage"):WaitForChild("RoomGiver"):FireServer(unpack(args))

local args = {
    [1] = false,
    [2] = "Room 5"
}

game:GetService("ReplicatedStorage"):WaitForChild("RoomGiver"):FireServer(unpack(args))

local args = {
    [1] = false,
    [2] = "Room 6"
}

game:GetService("ReplicatedStorage"):WaitForChild("RoomGiver"):FireServer(unpack(args))

local args = {
    [1] = false,
    [2] = "Room 7"
}

game:GetService("ReplicatedStorage"):WaitForChild("RoomGiver"):FireServer(unpack(args))

local args = {
    [1] = false,
    [2] = "Room 8"
}

game:GetService("ReplicatedStorage"):WaitForChild("RoomGiver"):FireServer(unpack(args))

end)

local Tab = Window:NewTab("SCRIPT INFORMATION")

local Section = Tab:NewSection("The creator of this script: gordeika2025")

local Section = Tab:NewSection("Created: 10.05.2025")

local Section = Tab:NewSection("Updated: 10.05.2025")

local Section = Tab:NewSection("Game: Hotel Elephant")

local Section = Tab:NewSection("roblox account: gordeika2025")

local Section = Tab:NewSection("telegram account: @gordeylemon")

local Section = Tab:NewSection("discord account: lemon4ik2025")
