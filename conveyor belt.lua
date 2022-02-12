local conveyor=script.Parent
local function setVelocity()
	local conveyorVelocity=Vector3.new(30,0,0)
	conveyor.AssemblyLinearVelocity=conveyorVelocity
end
setVelocity()
