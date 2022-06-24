wait(4)
local green=game.Workspace.GreenTeam:GetChildren()
local blue=game.Workspace.BlueTeam:GetChildren()
local yellow=game.Workspace.YellowTeam:GetChildren()
local teams=game:GetService("Teams")
local players=game:GetService("Players")
local player=players:GetPlayerFromCharacter(_G.PlayerPart.Parent)
while wait(1) do
		local newPart=game.ServerStorage["Danger"]:Clone()
			if player.TeamColor==BrickColor.new("Lime green") then
		local randomPos=green[math.random(1,#green)]
				newPart.Position=randomPos.Position
				newPart.Parent=workspace
	end
			if player.TeamColor==BrickColor.new("Deep orange") then
		local randomPos=yellow[math.random(1,#yellow)]
				newPart.Position=randomPos.Position
				newPart.Parent=workspace
	end
	if player.TeamColor==BrickColor.new("Navy blue") then
		local randomPos=blue[math.random(1,#blue)]
		newPart.Position=randomPos.Position
		newPart.Parent=workspace
	end
end
