local part=script.Parent
local function onPartTouched(othertPart)
	while part.Transparency<1 do
		part.Transparency+=0.05 --you can increase the speed of disappearing  from 0.05 to higher
		wait(0.1)
	end
	if part.Transparency>=1 then
		part.CanCollide=false
	end
end
part.Touched:Connect(onPartTouched)
--add part preferably near spawn then put this script in script in part

local part=game.Workspace.Part
local grid={}
local function spawnBrick(x,z)
	local brick=part:Clone()
	brick.Parent=game.Workspace
	brick.Position=Vector3.new(x*10,0,z*10)
	brick.Anchored=true
	print("Hello World!")
end

for x=0,4,1 do
	for z=0,4,1 do
		spawnBrick(x,z)
	end
end
--put this script in script in workspace

local part=script.Parent
local function remakeblock()
	part.CanCollide=false
	part.Transparency=0
end
local function onPartTouched(othertPart)
	while part.Transparency<1 do
		part.Transparency+=0.05
		wait(0.1)
	end
	if part.Transparency>=1 then
		part.CanCollide=true
	end
	wait(8) --8 can be changed to other numbers
	remakeblock()
end

part.Touched:Connect(onPartTouched)
--code for if you want it do reapper after you die.
