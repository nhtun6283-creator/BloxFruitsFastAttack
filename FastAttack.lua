-- Blox Fruits Fast Attack (ON/OFF)

local v = game:GetService("VirtualUser")
local fast = false

-- UI
local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui

local btn = Instance.new("TextButton")
btn.Parent = gui
btn.Size = UDim2.new(0,120,0,40)
btn.Position = UDim2.new(0,20,0,200)
btn.Text = "Fast Attack : OFF"
btn.BackgroundColor3 = Color3.fromRGB(0,0,0)
btn.TextColor3 = Color3.fromRGB(255,255,255)

btn.MouseButton1Click:Connect(function()
fast = not fast
btn.Text = fast and "Fast Attack : ON" or "Fast Attack : OFF"
end)

-- Fast attack loop
spawn(function()
while true do
task.wait(0.03)
if fast then
v:Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
v:Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end
end
end)
