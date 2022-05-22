local door=script.Parent
local MarketplaceService=game:GetService("MarketplaceService")
local players=game:GetService("Players")
local gamePassID=46081985
local function doorTouch(part)
	local player=players:GetPlayerFromCharacter(part.Parent)
	local hasPass=false
	local success, message=pcall(function()
		hasPass=MarketplaceService:UserOwnsGamePassAsync(player.UserId, gamePassID)
	end)
	if not success then
		warn("Error while checking if player has pass: "..tostring(message))
		return
	end
	if hasPass==true then
		door.CanCollide=false
	end
end
door.Touched:Connect(doorTouch)
while true do
	door.CanCollide=true
	wait(0.5)
end
