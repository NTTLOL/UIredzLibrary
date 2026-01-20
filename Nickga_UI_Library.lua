--// Nickga UI Library (UI ONLY)

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NickgaUI"
ScreenGui.Parent = game.CoreGui

local Main = Instance.new("Frame")
Main.Size = UDim2.fromOffset(500, 300)
Main.Position = UDim2.fromScale(0.5, 0.5)
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(18,18,18)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true
Main.Parent = ScreenGui
Instance.new("UICorner", Main).CornerRadius = UDim.new(0,16)

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,40)
Title.BackgroundTransparency = 1
Title.Text = "Nickga"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Title.TextColor3 = Color3.new(1,1,1)
Title.Parent = Main

-- Content
local Content = Instance.new("Frame")
Content.Size = UDim2.new(1,-30,1,-70)
Content.Position = UDim2.fromOffset(15,55)
Content.BackgroundColor3 = Color3.fromRGB(25,25,25)
Content.BorderSizePixel = 0
Content.Parent = Main
Instance.new("UICorner", Content).CornerRadius = UDim.new(0,14)

local Layout = Instance.new("UIListLayout", Content)
Layout.Padding = UDim.new(0,10)

-- UI Button (NO FUNCTION)
local function CreateButton(text)
	local Btn = Instance.new("TextButton")
	Btn.Size = UDim2.new(1,-20,0,40)
	Btn.BackgroundColor3 = Color3.fromRGB(35,35,35)
	Btn.Text = text
	Btn.Font = Enum.Font.Gotham
	Btn.TextSize = 14
	Btn.TextColor3 = Color3.new(1,1,1)
	Btn.Parent = Content
	Instance.new("UICorner", Btn).CornerRadius = UDim.new(0,10)
	return Btn
end

-- UI Toggle (NO FUNCTION)
local function CreateToggle(text)
	local state = false
	local Btn = CreateButton(text.." : OFF")

	Btn.MouseButton1Click:Connect(function()
		state = not state
		Btn.Text = text.." : "..(state and "ON" or "OFF")
		Btn.BackgroundColor3 =
			state and Color3.fromRGB(0,170,0)
			or Color3.fromRGB(35,35,35)
	end)

	return Btn
end

-- EXPORT
local Nickga = {}

function Nickga:Button(name)
	return CreateButton(name)
end

function Nickga:Toggle(name)
	return CreateToggle(name)
end

return Nickga
