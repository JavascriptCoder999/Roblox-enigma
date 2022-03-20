--add model of parts in shape of tiles[union]
wait(8)

local colors={}

local tiles=script.Parent.tiles:GetChildren();

for i=1,#tiles do
	local tile=tiles[i]
	local tileColor=tile.BrickColor;
	table.insert(colors,i,tileColor);
end

function pickColor()
	local randNum=math.random(1,#colors);
	local color=colors[randNum];
	return color;
end

local timer=5;
local timerChange=.1;

function hideTiles(color)
	for i=1,#tiles do
		if(tiles[i].BrickColor~=color)then
			tiles[i].Transparency=1;
			tiles[i].CanCollide=false;
		end
	end
end

function showTiles()
	for i=1,#tiles do
		tiles[i].Transparency=0;
		tiles[i].CanCollide=true;
	end
end

function runGame()
	local color=pickColor();
	script.Parent.display.BrickColor=color;
	wait(timer);
	hideTiles(color)
	wait(1)
	showTiles()
	timer=timer-timerChange;
end

while(timer>1)do
	runGame();
end
