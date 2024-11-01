RegisterNetEvent("mp_utils:client:setDiscordData", function(discordData)
    if discordData then
        SetDiscordAppId(discordData.appid)
        SetRichPresence(discordData.presence)
        SetDiscordRichPresenceAsset(discordData.asset)
        for i = 1, #discordData.actions do
            SetDiscordRichPresenceAction(i, discordData.actions[i].name, discordData.actions[i].link)
        end
    else
        return error("discordData is nil")
    end
end)
