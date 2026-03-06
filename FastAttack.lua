-- Fast Attack Script
local v = game:GetService("VirtualUser")

spawn(function()
    while true do
        task.wait(0.03)
        v:Button1Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        v:Button1Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end
end)

print("Fast Attack Loaded")
