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

local function loadTab(url)
    local success = false
    local attempts = 0
    while not success and attempts < 3 do
        attempts = attempts + 1
        local ok, err = pcall(function()
            loadstring(game:HttpGet(url))()
        end)
        if ok then
            success = true
        else
            warn("FAILED (" .. attempts .. "):", url)
            task.wait(5)
        end
    end
    task.wait(3)
end

loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Webhook.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Auto.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Eggs.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Rift.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Event.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Enchant.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Pets.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Shrine.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Quest.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Diceboard.Lua")
loadTab("https://raw.githubusercontent.com/AlucardSavage28/Alucardsavage28/refs/heads/main/Other.Lua")
