local players=game:GetService("Players")
players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		local humanoidRootPart=character:WaitForChild("HumanoidRootPart")
		_G.PlayerPart=humanoidRootPart
	end)
end)
