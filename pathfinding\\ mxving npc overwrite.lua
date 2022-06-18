local zombie = workspace.zombie
local pointA, pointB, pointC, pointD, pointE = workspace.pointA, workspace.pointB, workspace.pointC, workspace.pointD, workspace.pointE
while true do
	zombie.Humanoid:MoveTo(pointA.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(1)
	zombie.Humanoid:MoveTo(pointB.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(1)
	zombie.Humanoid:MoveTo(pointC.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(1)
	zombie.Humanoid:MoveTo(pointD.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(1)
	zombie.Humanoid:MoveTo(pointE.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(1)
end
