local healthPac=script.Parent
local function ontouch(otherPart)
	local partPar=otherPart.Parent
	local humanoid=partPar:FindFirstChildWhichIsA("Humanoid")
	local healNum=math.random(1,10)
	local healthPac=script.Parent
	local healthNum=math.random(0.03,0.06)
	humanoid.Health+=healNum
	healthPac.CanTouch=false
	healthPac.Transparency=0.6
	wait(5)
	healthPac.CanTouch=true
	healthPac.Transparency=0
end
	healthPac.Touched:Connect(ontouch)
