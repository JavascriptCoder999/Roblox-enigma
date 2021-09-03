--code used for a conveyor belt, you need to add an attribute for this
--saved to github to be pasted into studio as a block to push you one way

--variables
local conveyor = script.Parent
local attStart = conveyor:FindFirstChild("AttStart")
local attEnd = conveyor:FindFirstChild("AttEnd")

--make function
local function setVelocity()
	local direction = attEnd.WorldPosition - attStart.WorldPosition
	local conveyorVelocity = direction.Unit * conveyor:GetAttribute("ConveyorSpeed")
	conveyor.AssemblyLinearVelocity = conveyorVelocity
end
--runs code
--("ConveyorSpeed"):Connect(setVelocity) means set "conveyor speed" to set velocity (the variable)
--connect means set to
conveyor:GetAttributeChangedSignal("ConveyorSpeed"):Connect(setVelocity)
conveyor:GetPropertyChangedSignal("Orientation"):Connect(setVelocity)
setVelocity()
