local positionFolder=game.Workspace.MeteorPositions:GetChildren()
while wait(0.4)do
	local randomPosition=positionFolder[math.random(1,#positionFolder)]
	local MeteorClone=game.ServerStorage.M3T30R:Clone()
	MeteorClone.Parent=workspace
	MeteorClone.Position=randomPosition.Position
end
