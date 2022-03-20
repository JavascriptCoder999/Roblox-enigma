local MAX_HEALTH=100
local ENABLED_TRANSPARENCY=0.4
local DISABLED_TRANSPARENCY=0.9
local COOLDOWN=20
local ENABLED_BRIGHTNESS=10
local DISABLED_BRIGHTNESS=1
local healthPickupsFolder=workspace:WaitForChild("[health pickups]")
local healthPickups=healthPickupsFolder:GetChildren()
local function onTouchHealthPickup(otherPart,healthPickup)
	if healthPickup:GetAttribute("Enabled")then
	local char=otherPart.Parent
	local humanoid=char:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		humanoid.Health=MAX_HEALTH
	end
end
	for _, healthPickups in ipairs( healthPickups) do
		healthPickups:SetAttribute("Enabled",true)
		healthPickups.Touched:Connect(function(otherPart)
			onTouchHealthPickup(otherPart,healthPickups)
			
	end)
end
	
	local function onTouchHealthPickup(otherpart,healthPickups)
		if healthPickups:GetAttribute("Enabled") then
			local character=otherPart.Parent
			local humanoid=character:FindFirstChildWhichIsA("Humanoid")
			if humanoid then
				humanoid.Health=MAX_HEALTH
				healthPickups.Transparency=DISABLED_TRANSPARENCY
				healthPickups.PickupLight.Brightness=DISABLED_BRIGHTNESS
				healthPickups:SetAttribute("Enabled",false)
				wait(COOLDOWN)
				healthPickups.Transparency=ENABLED_TRANSPARENCY
				healthPickups.Brightness=ENABLED_BRIGHTNESS 
				healthPickups:SetAttribute("Enabled",true)
			end
			--[lua]
