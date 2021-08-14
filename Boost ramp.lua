local function boostWasTouched(otherPart)
	local humanoid=otherPart.Parent:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		humanoid.WalkSpeed=46
		humanoid.JumpHeight=100
		wait(6)
		humanoid.WalkSpeed=16
		humanoid.JumpHeight=7.2
	end
end
script.Parent.Touched:Connect(boostWasTouched)
