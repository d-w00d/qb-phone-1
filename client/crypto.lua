local QBCore = exports['qb-core']:GetCoreObject()

-- NUI Callback

RegisterNUICallback('GetCryptosFromDegens', function(data, cb)
    cb(Config.CryptoCoins)
end)


RegisterNUICallback('BuyCrypto', function(data, cb)
    print(data.metadata)
    print(data.amount)
    TriggerServerEvent('qb-phone:server:PurchaseCrypto', data.metadata, data.amount)

    cb("ok")
end)

RegisterNetEvent('qb-phone:client:UpdateCrypto', function()
    SendNUIMessage({
        action = "UpdateCrypto",
        PlayerData = PlayerData,
    })
end)


