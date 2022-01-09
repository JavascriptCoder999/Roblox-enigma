local PositionFolder=game.Workspace.Pos:GetChildren()
while true do
	local randomPosition=PositionFolder[math.random(1, #PositionFolder)]
	local lightningClone=game.ServerStorage.lightningUnion:Clone()
	lightningClone.Parent = workspace
	lightningClone.Position=randomPosition.position
	wait(0.5)
	lightningClone:Destroy()
	wait(0.5)
end
