local spawner=game.Workspace.Spawner
_G.Money=0
_G.Timer=1
while true do
	local newMoney=Instance.new("Part",game.Workspace)
	newMoney.Position=spawner.Position
	newMoney.BrickColor=BrickColor.new("Bright green")
	newMoney.Name="MoneyPart"
	_G.Money+=1
	wait(_G.Timer)
end
