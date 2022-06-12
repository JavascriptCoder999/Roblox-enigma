local button=script.Parent
local seat=game.Workspace.Spaceship.Seat 
local function onButtonActivated()
	local force=Instance.new("BodyForce")
	local fire=Instance.new("Fire")
	fire.Parent=seat
	force.Parent=seat
	force.Force=Vector3.new(0,500,0)
	wait(2)
	force:Destroy()
	fire:Destroy()
end
button.Activated:Connect(onButtonActivated)
