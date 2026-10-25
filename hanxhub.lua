
-- GUI BELAJAR ROBLOX
-- Fitur: Drag, buka/tutup, tombol aksi
-- Pasang sebagai LocalScript di StarterGui

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- GUI utama
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BelajarMenu"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Panel menu
local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.new(0, 260, 0, 190)
main.Position = UDim2.new(0.5, -130, 0.5, -95)
main.BackgroundColor3 = Color3.fromRGB(30, 30, 42)
main.BorderSizePixel = 0
main.Active = true
main.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 12)
mainCorner.Parent = main

-- Fitur drag panel dengan sentuhan/jari
local dragDetector = Instance.new("UIDragDetector")
dragDetector.Parent = main

-- Judul
local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1, -50, 0, 40)
title.Position = UDim2.new(0, 10, 0, 5)
title.BackgroundTransparency = 1
title.Text = "MENU BELAJAR"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.Parent = main

-- Tombol aksi
local actionButton = Instance.new("TextButton")
actionButton.Size = UDim2.new(1, -30, 0, 45)
actionButton.Position = UDim2.new(0, 15, 0, 58)
actionButton.BackgroundColor3 = Color3.fromRGB(75, 105, 230)
actionButton.Text = "Klik Gue!"
actionButton.TextColor3 = Color3.new(1, 1, 1)
actionButton.TextScaled = true
actionButton.Font = Enum.Font.GothamBold
actionButton.Parent = main

local actionCorner = Instance.new("UICorner")
actionCorner.CornerRadius = UDim.new(0, 8)
actionCorner.Parent = actionButton

-- Status
local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -20, 0, 30)
status.Position = UDim2.new(0, 10, 0, 115)
status.BackgroundTransparency = 1
status.Text = "Status: siap"
status.TextColor3 = Color3.fromRGB(210, 210, 220)
status.TextScaled = true
status.Parent = main

-- Tombol tutup
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 32, 0, 32)
closeButton.Position = UDim2.new(1, -38, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(210, 65, 75)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.TextScaled = true
closeButton.Parent = main

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeButton

-- Tombol buka menu
local openButton = Instance.new("TextButton")
openButton.Name = "OpenMenu"
openButton.Size = UDim2.new(0, 125, 0, 42)
openButton.Position = UDim2.new(0, 15, 0.5, -21)
openButton.BackgroundColor3 = Color3.fromRGB(75, 105, 230)
openButton.Text = "BUKA MENU"
openButton.TextColor3 = Color3.new(1, 1, 1)
openButton.TextScaled = true
openButton.Font = Enum.Font.GothamBold
openButton.Visible = false
openButton.Parent = screenGui

local openCorner = Instance.new("UICorner")
openCorner.CornerRadius = UDim.new(0, 10)
openCorner.Parent = openButton

-- Buka/tutup menu
local function closeMenu()
    main.Visible = false
    openButton.Visible = true
end

local function openMenu()
    main.Visible = true
    openButton.Visible = false
end

closeButton.Activated:Connect(closeMenu)
openButton.Activated:Connect(openMenu)

-- Tombol aksi contoh
actionButton.Activated:Connect(function()
    status.Text = "Status: tombol berhasil!"
end)

print("GUI Belajar berhasil dibuat!")
