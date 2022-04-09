--seperate script in server script service
while true do
	wait(3)
	for _,plr in pairs(game.Players:GetChildren()) do
		local stats=plr:FindFirstChild('leaderstats')
		if stats then
	stats.Money.Value=stats.Money.Value+5
end
	end
end
