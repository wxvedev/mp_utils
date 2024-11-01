function RemoveDefaults()
    CreateThread(function()
        for i = 1, 25 do
            EnableDispatchService(i, false)
        end

        for i = 0, 255 do
            if NetworkIsPlayerConnected(i) then
                if NetworkIsPlayerConnected(i) and GetPlayerPed(i) ~= nil then
                    SetCanAttackFriendly(GetPlayerPed(i), true, true)
                end
            end
        end
    end)

    CreateThread(function()
        while true do
            Wait(1000)
            local Player = PlayerId()
            SetPlayerWantedLevel(Player, 0, false)
            SetPlayerWantedLevelNow(Player, false)
        end
    end)

    CreateThread(function()
        while true do
            Wait(5000)
            local currentPosition = GetEntityCoords(PlayerPedId(), false)
            ClearAreaOfCops(currentPosition.x, currentPosition.y, currentPosition.z, 400.0, false)
        end
    end)

    CreateThread(function()
        while true do
            Wait(0)
            for i = 1, 22, 1 do
                HideHudComponentThisFrame(i)
            end
        end
    end)
end

AddEventHandler('MP-Base:Start', function()
    RemoveDefaults()
end)
