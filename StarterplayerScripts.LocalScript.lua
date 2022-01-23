
local player = game.Players.LocalPlayer
local camera=workspace.CurrentCamera

player.CharacterAdded:Wait()
player.Character:WaitForChild("HumanoidRootPart")

camera.CameraSubject=player.Character.HumanoidRootPart
camera.CameraType=Enum.CameraType.Attach
camera.FieldOfView=100

game:GetService('RunService').Stepped:Connect(function()
	camera.CFrame=CFrame.new(player.Character.HumanoidRootPart.Position)*CFrame.new(0,0,30)
	
end)
