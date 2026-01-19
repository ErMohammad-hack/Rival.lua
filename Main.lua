loadstring(game:HttpGet("https://pastefy.app/YiGY38uo/raw"))()
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CreditsGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local creditFrame = Instance.new("Frame")
creditFrame.Size = UDim2.new(0, 300, 0, 80)
creditFrame.Position = UDim2.new(0.5, -150, 0.5, -40)
creditFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
creditFrame.BorderSizePixel = 0
creditFrame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = creditFrame

local shadow = Instance.new("ImageLabel")
shadow.Size = UDim2.new(1, 30, 1, 30)
shadow.Position = UDim2.new(0, -15, 0, -15)
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://1316045217"
shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
shadow.ImageTransparency = 0.5
shadow.Parent = creditFrame

local creditLabel = Instance.new("TextLabel")
creditLabel.Size = UDim2.new(1, -20, 1, -20)
creditLabel.Position = UDim2.new(0, 10, 0, 10)
creditLabel.BackgroundTransparency = 1
creditLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
creditLabel.Font = Enum.Font.GothamBold
creditLabel.TextScaled = true
creditLabel.Text = "Credits: Mohammad Khan on YouTube"
creditLabel.Parent = creditFrame

task.wait(5)
screenGui:Destroy()

-- sigma 
print("Script loaded!")

local player = game.Players.LocalPlayer
-- more code but sigma idk so stupid so hi there 
