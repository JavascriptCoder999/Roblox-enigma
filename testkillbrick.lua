local function trapWasTouched (otherPart)
	local humanoid=otherPart.parent:FindFirstChildWhichInA("Humanoid")
	print("Trap Activated!")
end
script.Parent.Touched:Connect(trapWasTouched)
