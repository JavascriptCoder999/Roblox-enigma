local monster=script.Parent
local humanoid=monster.Humanoid
local pathFindingService=game:GetService("PathfindingService")
local function getPath(destination)
	local createdPath=pathFindingService:CreatePath()
	createdPath:ComputeAsync(monster.HumanoidRootPart.Position,destination.Position)
	return createdPath
end
local function walkTo(destination)					
	local path=getPath(destination)
	for k, waypoint in ipairs(path:GetWaypoints())do
		humanoid:MoveTo(waypoint.Position)
		humanoid.MoveToFinished:Wait()
	end
end
local function patrol()
	local points=workspace.points:GetChildren()
	local randomNum=math.random(1,#points)
	walkTo(points[randomNum])
end
while wait(1)do
	patrol()
end
