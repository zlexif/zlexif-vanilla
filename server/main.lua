local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('zlexif-vu:server:CraftDrinks', function(data, weapon)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local receiveAmount = 1
    Player.Functions.AddItem(data, receiveAmount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[data], "add")
end)

RegisterNetEvent('zlexif-vu:server:CraftFood', function(data, weapon)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local receiveAmount = 1
    Player.Functions.AddItem(data, receiveAmount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[data], "add")
end)

QBCore.Functions.CreateCallback('zlexif-vu:server:Materials', function(source, cb, materials)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if not player then
        print("Error: Player not found for source", src)
        cb(false)
        return
    end

    local hasMaterials = true
    local missingMaterials = {}

    for k, v in pairs(materials) do
        local item = player.Functions.GetItemByName(v.item)
        if item == nil then
            table.insert(missingMaterials, v.item)
            hasMaterials = false
             print("Player does not have item:", v.item)
        elseif item.amount < v.amount then
            table.insert(missingMaterials, v.item)
            hasMaterials = false
             print("Player does not have enough of item:", v.item, "Requires:", v.amount, "Has:", item.amount)
        end
    end

    if not hasMaterials then
        print("Player with ID [" .. tostring(src) .. "] does not have the necessary materials: " .. table.concat(missingMaterials, ", "))
    end

    cb(hasMaterials)
end)

RegisterNetEvent("zlexif-vu:Server:Billing", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == Config.Job then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                    MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (@citizenid, @amount, @society, @sender)', {
                        ['@citizenid'] = billed.PlayerData.citizenid,
                        ['@amount'] = amount,
                        ['@society'] = biller.PlayerData.job.name,
                        ['@sender'] = biller.PlayerData.charinfo.firstname
                    })
                    TriggerClientEvent("qb-phone:RefreshPhone", billed.PlayerData.source)
                    
                    -- Notification based on Config
                    if Config.NotificationSystem == 'qb' then
                        QBCore.Functions.Notify(source, Language.Notify.Send, 'success', 5000)
                        QBCore.Functions.Notify(billed.PlayerData.source, Language.Notify.InvoiceReceived, 'primary', 5000)
                    elseif Config.NotificationSystem == 'okok' then
                        TriggerClientEvent('okokNotify:Alert', source, Language.Notify.Send, '', 5000, 'success')
                        TriggerClientEvent('okokNotify:Alert', billed.PlayerData.source, Language.Notify.InvoiceReceived, '', 5000, 'primary')
                    end

                else
                    if Config.NotificationSystem == 'qb' then
                        QBCore.Functions.Notify(source, Language.Notify.HigherValue, 'error', 5000)
                    elseif Config.NotificationSystem == 'okok' then
                        TriggerClientEvent('okokNotify:Alert', source, Language.Notify.HigherValue, '', 5000, 'error')
                    end
                end
            else
                if Config.NotificationSystem == 'qb' then
                    QBCore.Functions.Notify(source, Language.Notify.InvoiceOwn, 'error', 5000)
                elseif Config.NotificationSystem == 'okok' then
                    TriggerClientEvent('okokNotify:Alert', source, Language.Notify.InvoiceOwn, '', 5000, 'error')
                end
            end
        else
            if Config.NotificationSystem == 'qb' then
                QBCore.Functions.Notify(source, Language.Notify.PlayerOffline, 'error', 5000)
            elseif Config.NotificationSystem == 'okok' then
                TriggerClientEvent('okokNotify:Alert', source, Language.Notify.PlayerOffline, '', 5000, 'error')
            end
        end
    else
        if Config.NotificationSystem == 'qb' then
            QBCore.Functions.Notify(source, Language.Notify.NoPermission, 'error', 5000)
        elseif Config.NotificationSystem == 'okok' then
            TriggerClientEvent('okokNotify:Alert', source, Language.Notify.NoPermission, '', 5000, 'error')
        end
    end
end)
