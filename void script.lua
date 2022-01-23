local Lava=script.Parent
function onTouch(otherPart)
	local humanoid=otherPart.parent:FindFirstChild("Humanoid")
	if humanoid then
		humanoid.Health=-100
		Lava.Position=Vector3.new (0,0,0)
	end
end
Lava.Touched:Connect(onTouch)
while true do
	Lava.Position=Lava.Position+Vector3.new(-.05,0,0)
	wait(0)
end
