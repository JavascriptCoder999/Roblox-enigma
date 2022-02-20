local RunService=game:GetService("RunService")
local npc=workspace["Realistic Big Doll"]
local char=game.Players.LocalPlayer.Character
RunService.RenderStepped:Connect(function()
	local NPC2U=(char.Head.Position-npc.Head.Position).Unit
end)
