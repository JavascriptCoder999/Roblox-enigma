local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")

local walkAnim = script:WaitForChild("Walk")
local walkAnimTrack = humanoid.Animator:LoadAnimation(walkAnim)

humanoid.Running:Connect(function(speed)
	if speed > 0 then
		walkAnimTrack:Play()
	else
		walkAnimTrack:Stop()
	end
end)
--only works if you use animation editor and copy the id and put the animation inside the local script
--has to be local script
