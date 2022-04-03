local square=script.Parent
function onTouch(part)
	local humanoid=part.Parent:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		if square:GetAttribute("DANGER",true) then
			humanoid.Health=0
			square.BrickColor=BrickColor.new("Dark red")
		else
			square.BrickColor=BrickColor.new("Camo")
		end
	end
end
square.Touched:Connect(onTouch)
