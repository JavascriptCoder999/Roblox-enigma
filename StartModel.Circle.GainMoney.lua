local playerFolder=game:GetService("Players")
local part=script.Parent
local function onPartTouch(humanPart)
	local humanoid=humanPart.Parent:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		local player=playerFolder:GetPlayerFromCharacter(humanPart.Parent)
		local playerStatsFolder=player.leaderstats
		local MONEY=playerStatsFolder:FindFirstChild("MONEY")
		if MONEY then
			MONEY.Value=50
			while part.Transparency<1 do
				part.Transparency+=0.1
				wait(0.1)
			end
		end
	end
end
part.Touched:Connect(onPartTouch)
