-- ============================================
-- 🔷 GUARDAR PARTIDA - RANK RECONNECT 🔷
-- Ejecuta esto DENTRO de tu partida
-- ============================================

local idPartida = game.JobId

print("")
print("========================================")
print("✅ ID GUARDADO: " .. idPartida)
print("========================================")
print("")
print("📌 COPIA EL SCRIPT DE ABAJO Y DÁSELO A TUS ALTS:")
print("")

local script2 = [=[

-- ============================================
-- 🔷 RECONECTAR - RANK RECONNECT 🔷
-- made by Sxzly
-- ============================================

local ID_PARTIDA = "]=] .. idPartida .. [=["

local webhookURL = "https://discord.com/api/webhooks/1497392370260512952/KCAlUPzSE812k8OM5qJGTcsCgc-KRRKCh2ckdkMa6XZkoLXEwM4vnmI71F2CMWFzSjQn"

local function notificarReconnect()
    local player = game.Players.LocalPlayer
    local data = {
        ["embeds"] = {{
            ["title"] = "🔷 RECONEXIÓN DETECTADA",
            ["description"] = "Un alt se ha unido a la partida",
            ["color"] = 15844367,
            ["fields"] = {
                {["name"] = "👤 Usuario", ["value"] = player.Name, ["inline"] = true},
                {["name"] = "🎮 Partida ID", ["value"] = "`" .. ID_PARTIDA .. "`", ["inline"] = false},
            },
            ["footer"] = {["text"] = "made by Sxzly"},
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%S")
        }}
    }
    pcall(function()
        request({Url = webhookURL, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game:GetService("HttpService"):JSONEncode(data)})
    end)
end

notificarReconnect()
wait(0.5)

game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, ID_PARTIDA)

]=]

print(script2)
print("")
print("========================================")

if setclipboard then
    setclipboard(script2)
    print("✅ Script copiado al portapapeles! Se lo pegas a tus alts")
end
