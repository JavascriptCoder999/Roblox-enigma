wait(1)
local moneyConvertor=script.Parent
local playerFolder=game.Players:GetPlayers()
local currentPlayer=playerFolder[1]
local MONEY=currentPlayer.leaderstats:FindFirstChild("MONEY")
function onTouch(part)
	if part.Name=="ONEDOLLAR" then
		MONEY.Value=MONEY.Value+1
		part:Destroy()
	end
	if part.Name=="FIVEDOLLARS" then
		MONEY.Value=MONEY.Value+5
		part:Destroy()
	end
	if part.Name=="TENDOLLARS" then
		MONEY.Value=MONEY.Value+10
		part:Destroy()
	end
	if part.Name=="TWENTYDOLLARS" then
		MONEY.Value=MONEY.Value+20
		part:Destroy()
	end
end
moneyConvertor.Touched:Connect(onTouch)
