local clickDetector=script.Parent.ClickDetector
function onMouseCLick()
	local oneDollar=Instance.new("Part")
	oneDollar.Name="ONEDOLLAR"
	oneDollar.Parent=game.Workspace
	oneDollar.BrickColor=BrickColor.new("Dark green")
	oneDollar.Position=script.Parent.Position-Vector3.new(0,1,0)
	oneDollar.Size=Vector3.new(1,1,1)
end
clickDetector.MouseClick:connect(onMouseCLick)
