local function boostWasTouched(otherPart)
  local humanoid=otherPart.Parent:FirstChildWhichInA("Humanoid")
  if humanoid then
    
  end
end
script.Parent.Touched:Connect(boostWasTouched)
