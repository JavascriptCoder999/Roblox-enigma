function onTouch(part)
	local humanoid=part.Parent:FindFirstChild("Humanoid")
	if humanoid then
		humanoid.Health=0
	end
end
script.Parent.Touched:connect(onTouch)
