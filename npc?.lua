local zombie=workspace.Zombie
local pointA, pointB, pointC=workspace.pointA, workspace.pointB, workspace.pointC
while true do
	zombie.Humanoid:MoveTo(pointA.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(nil)
	zombie.Humanoid:MoveTo(pointB.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(nil)
	zombie.Humanoid:MoveTo(pointC.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(nil)
end
--make three parts for it to go to, name them pointA, pointB, and pointC
--make sure npc is not anchored
