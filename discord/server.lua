local MP = exports['MP-Base']:GetObject()

RegisterNetEvent("mp_utils:server:getDiscordData", function()
    local src = source
    local player = MP.Functions.GetPlayer(src)

    local data = player.Data
    local characterName = data.firstname .. " " .. data.lastname

    local discordData = {
        appid = ,
        presence = "Playing as " .. characterName,
        asset = "mp",
        assetSmall = "",
        smallAssetText = "",
        actions = {
            {
                name = "Discord",
                link = "https://discord.gg/2sUTyC6U"
            }
        },
    }

    TriggerClientEvent("mp_utils:client:setDiscordData", src, discordData)
end)
