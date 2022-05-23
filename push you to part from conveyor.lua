local part=script.Parent
local function setVelocity()
	local conveyorVelocity=Vector3.new(50,0,0)
	part.AssemblyLinearVelocity=conveyorVelocity
end
setVelocity()
