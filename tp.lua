script.Parent.Touched:Connect(function(hit)
	if hit and hit.Parent:FindFirstChild("Humanoid") then
		local destination=script.Parent.Parent.destination
		hit.Parent.HumanoidRootPart.CFrame=destination.CFrame
	end
end)
