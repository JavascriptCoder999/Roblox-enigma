
--make 2 parts must be anchored
--add attachment then in that add proximity prompt to both
--call one open door and one door
--add this to workspace
local door=game.Workspace.Door
local openDoor=game.Workspace.OpenDoor
local doorPrompt=door.Attachment.ProximityPrompt
local openDoorPrompt=openDoor.Attachment.ProximityPrompt
_G.doorOpen=function()
	door.Transparency=1
	door.CanCollide=false
	openDoor.Transparency=0
	openDoor.CanCollide=true 
	doorPrompt.Enabled=false
	openDoorPrompt.Enabled=true
	print("open door.")
end
_G.doorClose=function()
		door.Transparency=0
		door.CanCollide=true
		openDoor.Transparency=1
		openDoor.CanCollide=false
		doorPrompt.Enabled=true
		openDoorPrompt.Enabled=false
		print("close door.")
end

--more
local prompt=script.Parent.Attachment.ProximityPrompt
prompt.Triggered:Connect(function()
	_G.doorClose()
end) 
--add to opendoor and door but change in line 3 doorClose to doorOpen les go u done it wowee
