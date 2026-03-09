-- Blox Fruits Fast Attack
local fast = false

local gui = Instance.new("ScreenGui", game.CoreGui)
local btn = Instance.new("TextButton", gui)

btn.Size = UDim2.new(0,120,0,40)
btn.Position = UDim2.new(0,20,0,200)
btn.Text = "Fast Attack : OFF"

btn.MouseButton1Click:Connect(function()
    fast = not fast
    btn.Text = fast and "Fast Attack : ON" or "Fast Attack : OFF"
end)

spawn(function()
    while true do
        task.wait(0.03)
