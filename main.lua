
-- OzilUI - Simple GUI Library
local OzilUI = {}

function OzilUI:CreateWindow(config)
	local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
	ScreenGui.Name = "OzilUI"

	local Frame = Instance.new("Frame", ScreenGui)
	Frame.Size = UDim2.new(0, 400, 0, 300)
	Frame.Position = UDim2.new(0.5, -200, 0.5, -150)
	Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

	local Title = Instance.new("TextLabel", Frame)
	Title.Size = UDim2.new(1, 0, 0, 40)
	Title.Text = config.Title or "OzilUI Window"
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1
	Title.Font = Enum.Font.GothamBold
	Title.TextSize = 22

	return {
		AddButton = function(_, text, callback)
			local Button = Instance.new("TextButton", Frame)
			Button.Size = UDim2.new(0, 200, 0, 40)
			Button.Position = UDim2.new(0.5, -100, 0, 60)
			Button.Text = text
			Button.TextColor3 = Color3.new(1, 1, 1)
			Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Button.Font = Enum.Font.Gotham
			Button.TextSize = 18
			Button.MouseButton1Click:Connect(callback)
		end
	}
end

return OzilUI
