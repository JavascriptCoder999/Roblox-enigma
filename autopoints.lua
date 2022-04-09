local DataStoreService=game:GetService("DataStoreService")
local playerData=DataStoreService:GetDataStore("PlayerData")
local function onPlayerJoin(player)
	local leaderstats=Instance.new("Folder")
	leaderstats.Name="leaderstats"
	leaderstats.Parent=player
	local money=Instance.new("IntValue")
	money.Name="Money"
	money.Parent=leaderstats
	local playerUserId="Player_"..player.UserId
	local data=playerData:GetAsync(playerUserId)
	if data then
		money.Value=data
	else
		money.Value=0
	end
end
local function onPlayerExit(player)
	local success, err=pcall(function()
		local playerUserId="Player"..player.UserId
		playerData:SetAsync(playerUserId,player.leaderstats.Money.Value)
	end)
	if not success then
		local warning="Could not save data"
		warn(warning)
	end
end
game.Players.PlayerAdded:Connect(onPlayerJoin)
game.Players.PlayerRemoving:Connect(onPlayerExit)
