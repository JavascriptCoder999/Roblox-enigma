local part=script.Parent
local followForce=Instance.new("BodyForce")
followForce.Parent=part
followForce.Force=Vector3.new(0,part:GetMass()*workspace.Gravity,0)
local function move(step,Velocity,Goal)
	local distance=(part.Position-Goal.Position).Magnitude
	part.CFrame=part.CFrame:Lerp(Goal.CFrame,step*Velocity/distance)
	part.CFrame=CFrame.new(part.Position,Goal.Position)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
end
game:GetService("RunService").Stepped:Connect(function(time,step)
	move(step,20,_G.PlayerPart)
end)
local function onTouch(playerPart)
	local human=playerPart.Parent:FindFirstChild("Humanoid")
	if human then
		human.Health=0
		part:Destroy()
	end
end
part.Touched:Connect(onTouch)
local clickDetector=part.ClickDetector
function onMouseClick()
	part:Destroy()
end
