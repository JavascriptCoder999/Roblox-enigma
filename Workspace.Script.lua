_G.upgrade=function(upgradeNumber)
	local newBrick=Instance.new("Part")
	local spawner=game.Workspace.Spawner
		newBrick.Position=spawner.Position-Vector3.new(0,1,0)
		newBrick.Size=Vector3.new(1.5,1.5,1.5)
		newBrick.Parent=game.Workspace
			if upgradeNumber==1 then
		newBrick.BrickColor=BrickColor.new("Baby blue")
		newBrick.Name="FIVEDOLLARS"
	end
			if upgradeNumber==2 then
		newBrick.BrickColor=BrickColor.new("Yellow flip/flop")
		newBrick.Name="TENDOLLARS"
	end
			if upgradeNumber==3 then
		newBrick.BrickColor=BrickColor.new("Pink")
		newBrick.Name="TWENTYDOLLARS"
	end
end
