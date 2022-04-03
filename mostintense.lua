local square=game.Workspace.Square
local grid={}
for i=1, 100, 1 do
	table.insert(grid,0)
end
local selector=math.random(1,10)
while selector<91 do
	grid[selector]='Danger'
	local progress=math.random(1,5)
end
if progress==1 or 2 then 
	if selector%10~=0 then
		if grid[selector+1]~='Danger' then
			grid[selector+1]~='Danger'
				selector+=1
			end
		end
	end
end
if progress ==2 or 3 then
	if selector%10~1 then
		if grid[selector-1]~='Danger' then
			grid[selector-1]='Danger'
			selector-=1
		end
	end
end
if progress ==5 then
	grid[selector+10]='Danger'
	grid[selector+20]='Danger'
	selector+=20
end
end
function spawnBrick(x,z,gridNumber)
	local nsquare=square:Clone()
	nsquare.Parent=game.Workspace
	nsquare.Position=Vector3.new(x*12,0,z*13+13)
	nsquare.Size=Vector3.new(11,1,12)
	if(grid[gridNumber]=='Danger') then
		nsquare:SetAttribute("DANGER",false)
	end
end
function makeGame()
	for x=1,10,1 do
		local gridNumber=x+(z*10)
		spawnBrick(x,z,gridNumber)
	end
end
makeGame()
