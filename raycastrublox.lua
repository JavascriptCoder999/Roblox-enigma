local UserInputService=game:GetService("UserInputService")
local tool=script.Parent
local MaxDistance=1000

local function getMouseLocation()
	local mouse=UserInputService:getMouseLocation()
	local mouseDirection=workspace.CurrentCamera:ViewportPointToRay(mouse.X,mouse.Y)
	local directionVector = mouseDirection.Direction*MaxDistance
	local raycast =workspace:Raycast(mouseDirection.Origin, directionVector)
	if raycast then
		return raycast.Position
	else
		return mouseDirection.Origin+directionVector
	end
end

local function fireWeapon()
	local mouseLocation=getMouseLocation()
	local directionVector=(mouseLocation-tool.Handle.Position).Unit*MaxDistance
	
	local ourPlayer=RaycastParams.new()
	ourPlayer.FilterDescendantsInstances=
		{game:GetService("Players").LocalPlayer.Character}
	
	local weaponRaycast=
		workspace:Raycast(tool.Handle.Position, directionVector, ourPlayer)
	
	local hitPosition
	if weaponRaycast then
		print("1")
		hitPosition=weaponRaycast.Position
		local characterModel=weaponRaycast.Instance:FindFirstAncestorOfClass("Model")
		if characterModel then
			print("2")
			local humanoid=characterModel:FindFirstChild("Humanoid")
			if humanoid then
				print("Player hit")
				humanoid.Health-=25
			end
		end
	else
		hitPosition=tool.Handle.Position+directionVector
	end
end
local function toolActivated()
	fireWeapon()
end
tool.Activated:Connect(toolActivated)
