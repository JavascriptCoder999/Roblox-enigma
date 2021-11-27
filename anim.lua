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
