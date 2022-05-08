local playerFolder=game:GetService("Players")
local function leaderboardSetup(player)
	local statsFolder=Instance.new("Folder")
	statsFolder.Name="leaderstats"
	statsFolder.Parent=player
	local MONEY=Instance.new("IntValue")
	MONEY.Name="MONEY"
	MONEY.Value=0
	MONEY.Parent=statsFolder
end
playerFolder.PlayerAdded:Connect(leaderboardSetup)
