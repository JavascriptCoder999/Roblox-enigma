local camera=workspace.CurrentCamera
local Player=game.Players.LocalPlayer
local character=Player.Character
local humanoid=character.Humanoid
Player.CameraMaxZoomDistance=0.5
camera.FieldOfView=100
humanoid.CameraOffset=Vector3.new(0,0,-1)
for childIndex,child in pairs(character:GetChildren())do
	if child:IsA("BasePart")and child.Name~="Head"then
		child:GetPropertyChangedSignal("LocalTransparencyModifier"):Connect(function()
			child.LocalTransparencyModifier=0
		end)
	end
end
