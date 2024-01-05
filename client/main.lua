local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    if Config.Blip.Enable then
        local blip = AddBlipForCoord(Config.Blip.Location) 
        SetBlipSprite(blip, Config.Blip.Sprite) 
        SetBlipDisplay(blip, Config.Blip.Display)
        SetBlipScale(blip, Config.Blip.Scale)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, Config.Blip.Colour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Blip.Name) 
        EndTextCommandSetBlipName(blip)
    end
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    PlayerJob = player.job
    onDuty = player.job.onduty
end)


AddEventHandler("zlexif-vu:Client:Storage", function()
    TriggerEvent(Config.Stash.StashInvTrigger, Config.Stash.NameOfStash)
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", Config.Stash.NameOfStash, {
        maxweight = Config.Stash.MaxWeighStash,
        slots = Config.Stash.MaxSlotsStash,
    })
end)

AddEventHandler("zlexif-vu:Client:OpenTray01", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray01")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray01", {
        maxweight = 5000,
        slots = 10,
    })
end)

AddEventHandler("zlexif-vu:Client:OpenTray02", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray02")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray02", {
        maxweight = 5000,
        slots = 10,
    })
end)

AddEventHandler("zlexif-vu:Client:OpenTray03", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray03")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray03", {
        maxweight = 5000,
        slots = 10,
    })
end)

AddEventHandler("zlexif-vu:Client:OpenTray04", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray04")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray04", {
        maxweight = 5000,
        slots = 10,
    })
end)

RegisterNetEvent("zlexif-vu:Client:OpenShop", function(index)
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "bakery", {
        label = "store",
        items = Config.Items,
        slots = #Config.Items,
    })
end);
 
RegisterNetEvent('zlexif-vu:Client:Invoicing', function()
    if Config.JimPayments then
        TriggerEvent("jim-payments:client:Charge", Config.Job)
    else
        local dialog = exports["qb-input"]:ShowInput({
            header = Language.Input.Header,
            submitText = Language.Input.Submit,
            inputs = {
                { type = 'number', isRequired = true, name = 'id', text = Language.Input.Paypal },
                { type = 'number', isRequired = true, name = 'amount', text = Language.Input.Amount }
            }
        })
        if dialog then
            if not dialog.id or not dialog.amount then return end
            TriggerServerEvent("zlexif-vu:Server:Billing", dialog.id, dialog.amount)
        end
    end
end)

local function SendNotification(playerId, message, messageType, duration)
    if Config.NotificationSystem == 'qb' then
        QBCore.Functions.Notify(message, messageType, duration)
    elseif Config.NotificationSystem == 'okok' then
        exports['okokNotify']:Alert(playerId, message, duration, messageType)
    else
        print('Invalid notification system configured. Please check your Config.NotificationSystem setting.')
    end
end

function CraftDrinks(drinkType, playerId)
    local drinkItemConfig = Config.Drinks[drinkType]
    if not drinkItemConfig then
        print('Invalid drink type or configuration missing for ' .. tostring(drinkType))
        return
    end

    QBCore.Functions.Progressbar('CraftDrinks', Language.Progressbars.Make..drinkItemConfig.label, 5000, true, true, {  -- `true` to make it cancelable and not freeze the player
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, { 
        animDict = "mini@repair", 
        anim = "fixing_a_ped", 
    }, {}, {}, function() -- Success
        SendNotification(playerId, Language.Notify.Make..drinkItemConfig.label, 'success', 5000)
        TriggerServerEvent('zlexif-vu:server:CraftDrinks', drinkItemConfig.hash)
        for _, material in pairs(drinkItemConfig.materials) do
            TriggerServerEvent('zlexif-vu:Server:RemoveItem', material.item, material.amount)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[material.item], "remove")
        end
        ClearPedTasks(PlayerPedId())
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        SendNotification(playerId, Language.Notify.Cancelled, 'error', 6000)
    end)
end

RegisterNetEvent('zlexif-vu:client:CraftDrinks', function(data)
    local playerId = source  
    QBCore.Functions.TriggerCallback("zlexif-vu:server:Materials", function(hasMaterials)
        if hasMaterials then
            CraftDrinks(data.type, playerId)
        else
            SendNotification(playerId, Language.Notify.NoMaterials, 'error', 6000)
        end
    end, Config.Drinks[data.type].materials)
end)


local hasWashedHands = false

RegisterNetEvent('zlexif-vu:client:WashHands', function()
    local animDict = "amb@prop_human_bum_bin@base"
    local animName = "base"


    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(0)
    end


    TaskPlayAnim(PlayerPedId(), animDict, animName, 8.0, -8.0, -1, 49, 0, false, false, false)


    QBCore.Functions.Progressbar('wash_hands', 'Washing hands...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- On Success
        ClearPedTasks(PlayerPedId())  
        hasWashedHands = true  
        SendNotification(source, Language.Notify.HandWashSuccess, 'success', 2500)
    end, function() -- On Fail
        ClearPedTasks(PlayerPedId())  
        SendNotification(source, Language.Notify.SinkCancel, 'error', 2500)
    end)
end)

function CraftFood(foodType, playerId)
    if not hasWashedHands then
        SendNotification(playerId, Language.Notify.CleanHandsWarning, 'error', 6000)
        return
    end

    local foodItemConfig = Config.Food[foodType]
    if not foodItemConfig then
        print('Invalid food type or configuration missing for ' .. tostring(foodType))
        return
    end

    QBCore.Functions.Progressbar('CraftFood', Language.Progressbars.Make..foodItemConfig.label, 6000, true, true, {
        disableMovement = true, 
        disableCarMovement = true, 
        disableMouse = false, 
        disableCombat = true,
    }, { 
        animDict = "mini@repair", 
        anim = "fixing_a_ped", 
    }, {}, {}, function() -- Success
        SendNotification(playerId, Language.Notify.Make..foodItemConfig.label, 'success', 6000)
        TriggerServerEvent('zlexif-vu:server:CraftFood', foodItemConfig.hash)
        for _, material in pairs(foodItemConfig.materials) do
            TriggerServerEvent('zlexif-vu:Server:RemoveItem', material.item, material.amount)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[material.item], "remove")
        end
        ClearPedTasks(PlayerPedId())
        hasWashedHands = false  
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        SendNotification(playerId, Language.Notify.Cancelled, 'error', 6000)
    end)
end


RegisterNetEvent('zlexif-vu:client:CraftFood', function(data)
    local playerId = source 
    QBCore.Functions.TriggerCallback("zlexif-vu:server:Materials", function(hasMaterials)
        if hasMaterials then
            CraftFood(data.type, playerId)
        else
            SendNotification(playerId, Language.Notify.NoMaterials, 'error', 6000)
        end
    end, Config.Food[data.type].materials)
end)


function CraftDrinksMenu()
    local columns = {{header = Language.Menu.Drinks, isMenuHeader = true,}}

    if not Config.Drinks then
        print("Error: Config.Drinks is nil")
        return
    end

    for k, drink in pairs(Config.Drinks) do
        if not drink.hash or not drink.label or not drink.materials then
            print("Error: Drink configuration is missing required fields for key:", k)
        else
            local itemShared = QBCore.Shared.Items[drink.hash]
            if not itemShared then
                print("Error: Item not found in QBCore.Shared.Items for hash:", drink.hash)
            else
                local item = {
                    header = "<img src=nui://"..Config.InvLink..itemShared.image.." width=35px style='margin-right: 10px'> " .. drink.label,
                    text = Language.Menu.Required.." <br>"
                }

                for _, material in pairs(drink.materials) do
                    local materialShared = QBCore.Shared.Items[material.item]
                    if materialShared then
                        item.text = item.text .. "- " .. materialShared.label .. ": " .. material.amount .. "<br>"
                    end
                end
                
                item.params = { event = 'zlexif-vu:client:CraftDrinks', args = { type = k } }
                table.insert(columns, item)
            end
        end
    end

    exports['qb-menu']:openMenu(columns)
end

function CraftFoodMenu()
    local columns = {{header = Language.Menu.Food, isMenuHeader = true,}}

    if not Config.Food then
        print("Error: Config.Food is nil")
        return
    end

    for k, food in pairs(Config.Food) do
        if not food.hash or not food.label or not food.materials then
            print("Error: Food configuration is missing required fields for key:", k)
        else
            local itemShared = QBCore.Shared.Items[food.hash]
            if not itemShared then
                print("Error: Item not found in QBCore.Shared.Items for hash:", food.hash)
            else
                local item = {
                    header = "<img src=nui://"..Config.InvLink..itemShared.image.." width=35px style='margin-right: 10px'> " .. food.label,
                    text = Language.Menu.Required.." <br>"
                }

                for _, material in pairs(food.materials) do
                    local materialShared = QBCore.Shared.Items[material.item]
                    if materialShared then
                        item.text = item.text .. "- " .. materialShared.label .. ": " .. material.amount .. "<br>"
                    end
                end
                
                item.params = { event = 'zlexif-vu:client:CraftFood', args = { type = k } }
                table.insert(columns, item)
            end
        end
    end

    exports['qb-menu']:openMenu(columns)
end

RegisterNetEvent('qb-stripclub:startDancing')
AddEventHandler('qb-stripclub:startDancing', function()
    local playerPed = PlayerPedId()
    local animDict = "mp_safehouse"
    local animName = "lap_dance_girl"

    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Wait(100) 
    end

    TaskPlayAnim(playerPed, animDict, animName, 8.0, -8.0, -1, 1, 0, false, false, false)
end)
