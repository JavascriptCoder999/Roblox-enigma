local door=script.Parent
local MarketplaceService=game:GetService("MarketplaceService")
local Players=game:GetService("Players")
local gamePassID=35698359
local function doorTouch(part)
	local player=Players:GetPlayerFromCharacter(part.Parent)
	local hasPass=false
	local success, message=pcall(function()
		hasPass=MarketplaceService:UserOwnsGamePassAsync(player.UserId, gamePassID)
	end)
end
if not success then
	warn("Error while checking if player has pass: "..tostring(message))
	return
		if hasPass==true then
		door.CanCollide=false
end
	door.Touched:Connect(doorTouch)
	while true do
	door.CanCollide=true		
	wait(0.5)
end
