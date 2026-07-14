-- ======================================
-- RENOA HUB | THE FINEST HUB
-- ======================================
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Renoa Hub | The Finest Hub",
    LoadingTitle = "Loading...",
    LoadingSubtitle = "By Renoa The Finest"
})

getgenv().Window = Window

local tabs = {
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Webhook.Lua", name = "Webhook"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Auto.Lua", name = "Auto"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Eggs.Lua", name = "Eggs"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Rift.Lua", name = "Rift"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Event.Lua", name = "Event"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Enchant.Lua", name = "Enchant"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Pets.Lua", name = "Pets"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Shrine.Lua", name = "Shrine"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Quest.Lua", name = "Quest"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Diceboard.Lua", name = "Diceboard"},
    {url = "https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Other.Lua", name = "Other"},
}

-- Load all tabs simultaneously
for _, tab in ipairs(tabs) do
    task.spawn(function()
        local success = false
        while not success do
            local ok, err = pcall(function()
                loadstring(game:HttpGet(tab.url))()
            end)
            if ok then
                success = true
                print("[Hub] " .. tab.name)
            else
                task.wait(0.5)
            end
        end
    end)
end
