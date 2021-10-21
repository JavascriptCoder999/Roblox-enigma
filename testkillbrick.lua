local function trapWasTouched (otherPart)
	local humanoid=otherPart.Parent:FindFirstChild("Humanoid")
	if humanoid then
		humanoid.Health=0
		end
	end
script.Parent.Touched:Connect(trapWasTouched)
