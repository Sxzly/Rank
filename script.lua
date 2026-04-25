-- ============================================
-- 🔷 GUARDAR PARTIDA - RANK RECONNECT 🔷
-- REPOSITORIO: https://github.com/Sxzly/Rank
-- ============================================
-- INSTRUCCIONES:
-- 1. Ejecuta esto DENTRO de tu partida
-- 2. Te generará un Script 2 con el ID incluido
-- 3. Copia ese Script 2 y dáselo a tus alts
-- ============================================

local idPartida = game.JobId

print("")
print("========================================")
print("✅ ID GUARDADO: " .. idPartida)
print("========================================")
print("")
print("📌 COPIA EL SCRIPT COMPLETO DE ABAJO Y DÁSELO A TUS ALTS:")
print("")
print("=================== INICIO ===================")

-- Generar el Script 2 completo con el ID incluido
local script2 = [=[

-- ============================================
-- 🔷 RECONECTAR - RANK RECONNECT 🔷
-- Script ULTRA PROTEGIDO
-- ============================================

repeat task.wait() until game:IsLoaded()
task.wait(3)

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer

repeat task.wait() until player.Character
task.wait(2)

-- ============================================
-- DATOS OFUSCADOS (PROTECCIÓN)
-- ============================================

local function getWebhook()
    return "https://discord.com/api/webhooks/1497392370260512952/KCAlUPzSE812k8OM5qJGTcsCgc-KRRKCh2ckdkMa6XZkoLXEwM4vnmI71F2CMWFzSjQn"
end
local webhookURL = getWebhook()

local function getOwnerName()
    local chars = {83, 120, 122, 108, 121}
    local name = ""
    for i = 1, #chars do name = name .. string.char(chars[i]) end
    return name
end
local OWNER_NAME = getOwnerName()

-- ============================================
-- PROTECCIÓN (igual que en Bridge Duels)
-- ============================================

local function checkScriptIntegrity()
    local expectedWebhook = "https://discord.com/api/webhooks/1497392370260512952/KCAlUPzSE812k8OM5qJGTcsCgc-KRRKCh2ckdkMa6XZkoLXEwM4vnmI71F2CMWFzSjQn"
    
    if webhookURL ~= expectedWebhook then
        print("❌ Webhook modificado - Ejecución bloqueada")
        return false
    end
    
    print("✅ Verificación superada")
    return true
end

if not checkScriptIntegrity() then
    local ErrorGui = Instance.new("ScreenGui")
    ErrorGui.Parent = player:WaitForChild("PlayerGui")
    
    local ErrorFrame = Instance.new("Frame")
    ErrorFrame.Parent = ErrorGui
    ErrorFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ErrorFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ErrorFrame.Size = UDim2.new(0, 400, 0, 150)
    ErrorFrame.BackgroundColor3 = Color3.fromRGB(30, 20, 20)
    ErrorFrame.BorderSizePixel = 0
    
    local ErrorCorner = Instance.new("UICorner")
    ErrorCorner.CornerRadius = UDim.new(0, 15)
    ErrorCorner.Parent = ErrorFrame
    
    local ErrorTitle = Instance.new("TextLabel")
    ErrorTitle.Parent = ErrorFrame
    ErrorTitle.Size = UDim2.new(1, 0, 0, 40)
    ErrorTitle.BackgroundTransparency = 1
    ErrorTitle.Font = Enum.Font.GothamBold
    ErrorTitle.Text = "🔒 SCRIPT BLOQUEADO"
    ErrorTitle.TextColor3 = Color3.fromRGB(255, 80, 80)
    ErrorTitle.TextSize = 20
    
    local ErrorMsg = Instance.new("TextLabel")
    ErrorMsg.Parent = ErrorFrame
    ErrorMsg.Position = UDim2.new(0, 20, 0, 50)
    ErrorMsg.Size = UDim2.new(1, -40, 0, 80)
    ErrorMsg.BackgroundTransparency = 1
    ErrorMsg.Font = Enum.Font.Gotham
    ErrorMsg.Text = "Este script ha sido modificado.\n\nNo se permite cambiar el webhook."
    ErrorMsg.TextColor3 = Color3.fromRGB(255, 255, 255)
    ErrorMsg.TextSize = 14
    ErrorMsg.TextWrapped = true
    
    return
end

-- ============================================
-- ID DE PARTIDA
-- ============================================

local ID_PARTIDA = "]=] .. idPartida .. [=["

-- ============================================
-- NOTIFICAR A DISCORD
-- ============================================

local function sendDiscordNotification()
    local embed = {
        ["embeds"] = {{
            ["title"] = "🔷 RECONEXIÓN DETECTADA",
            ["description"] = "Un alt se ha unido a la partida",
            ["color"] = 15844367,
            ["fields"] = {
                {["name"] = "👤 Usuario", ["value"] = player.Name, ["inline"] = true},
                {["name"] = "🎮 Partida ID", ["value"] = "`" .. ID_PARTIDA .. "`", ["inline"] = false},
            },
            ["footer"] = {["text"] = "made by " .. OWNER_NAME},
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%S")
        }}
    }
    
    pcall(function()
        request({Url = webhookURL, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = HttpService:JSONEncode(embed)})
        print("✅ Notificación enviada a Discord")
    end)
end

-- ============================================
-- RECONECTAR
-- ============================================

sendDiscordNotification()
wait(0.5)

print("")
print("========================================")
print("🔄 RECONECTANDO A LA PARTIDA...")
print("📋 ID: " .. ID_PARTIDA)
print("========================================")

TeleportService:TeleportToPlaceInstance(game.PlaceId, ID_PARTIDA)

]=]

print(script2)
print("=================== FINAL ===================")
print("")
print("📌 Copia TODO el código de arriba y dáselo a tus alts")
print("========================================")

-- Copiar automáticamente al portapapeles
if setclipboard then
    setclipboard(script2)
    print("✅ ¡Script copiado al portapapeles! Solo pégalo y envíalo.")
end
