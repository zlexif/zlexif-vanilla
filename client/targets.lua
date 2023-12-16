local QBCore = exports['qb-core']:GetCoreObject()

----------------------------------------------------
--------- TARGETS
----------------------------------------------------

-- || ===============> Stash
exports[Config.Target]:AddBoxZone("StashVU", vector3(128.76, -1284.22, 29.27), 1.3, 1, 
    { name="StashVU", heading = 30, debugPoly = false, minZ = 26.27, maxZ = 29.27 }, 
    { options = { {  event = "zlexif-vu:Client:Storage", icon = "fas fa-box", label = "Stash", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Stash 2
exports[Config.Target]:AddBoxZone("StashVu2", vector3(130.14, -1280.58, 30.41), 1, 1.3, 
    { name="StashVu2", heading = 300, debugPoly = false, minZ = 25.21, maxZ = 29.21 }, 
    { options = { {  event = "zlexif-vu:Client:Storage", icon = "fas fa-box", label = "Stash", job = Config.Job }, },  distance = 2.0 })
    -- || ===============> Stash 3  - COPY THIS FORMAT IF U WANT TO CREATE MORE STASHES. MAKE SURE TO CREATE A POLYZONE FIRST.
--exports[Config.Target]:AddBoxZone("BLANK", vector3(0, 0, 0), 0, 0, 
--{ name="BLANK", heading = 0, debugPoly = false, minZ = 0, maxZ = 0 }, 
--{ options = { {  event = "zlexif-vu:Client:Storage", icon = "fas fa-box", label = "Stash", job = Config.Job }, },  distance = 2.0 })
    -- || ===============> Drinks
exports[Config.Target]:AddBoxZone("Drinks",vector3(131.58, -1282.94, 29.27), 0.5, 0.5, 
    { name="Drinks", heading = 30, debugPoly = false, minZ = 25.87, maxZ = 29.87 }, 
    { options = { {   action = function() CraftDrinksMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Drinks 2 - COPY THIS FORMAT IF U WANT TO CREATE MORE DRINKS CRAFTING PLACES. MAKE SURE TO CREATE A POLYZONE FIRST.
--exports[Config.Target]:AddBoxZone("Drinks2", vector3(0, 0, 0), 0, 0, 
  --  { name="Drinks2", heading = 0, debugPoly = false, minZ = 0, maxZ = 0 }, 
    --{ options = { {   action = function() CraftDrinksMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Non Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Food
exports[Config.Target]:AddBoxZone("Salads", vector3(130.35, -1281.52, 29.27), 0.3, 0.7, 
    { name="Salads", heading = 300, debugPoly = false, minZ = 25.67, maxZ = 29.67 }, 
    { options = { {   action = function() CraftFoodMenu() end, icon = "fa-solid fa-bowl-food", label = "Salads", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Food 2
--exports[Config.Target]:AddBoxZone("Food2", vector3(0, 0, 0), 0, 0, 
  --  { name="Food2", heading = 0, debugPoly = false, minZ = 0, maxZ = 0 }, 
    --{ options = { {   action = function() CraftFoodMenu() end, icon = "fa-solid fa-bowl-food", label = "Food", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Shop UwU
exports[Config.Target]:AddBoxZone("shopvu", vector3(132.08, -1283.94, 29.27), 1, 1, 
    { name="shopvu", heading = 115, debugPoly = false, minZ = 25.27, maxZ = 29.27 }, 
    { options = { {   event = "zlexif-vu:Client:OpenShop", icon = "fas fa-box", label = "Supplies", job = Config.Job }, },  distance = 3.0 })
-- || ===============> Billing -- COPY THIS FORMAT IF U WANT TO CREATE MORE BILLING PLACES. MAKE SURE TO CREATE A POLYZONE FIRST.
--exports[Config.Target]:AddBoxZone("Billing", vector3(0, 0, 0), 0, 0, 
  --  { name="Billing", heading = 0, debugPoly = false, minZ = 0, maxZ = 0 }, 
    --{ options = { {   event = "zlexif-vu:Client:Invoicing", icon = "fa-solid fa-money-bill", label = "Bill", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Billing2
exports[Config.Target]:AddBoxZone("Billing2", vector3(129.17, -1284.9, 29.27), 0.5, 0.5, 
    { name="Billing2", heading = 35, debugPoly = false, minZ = 25.87, maxZ = 29.87 }, 
    { options = { {   event = "zlexif-vu:Client:Invoicing", icon = "fa-solid fa-money-bill", label = "Bill", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Billing3
exports[Config.Target]:AddBoxZone("Billing3", vector3(132.97, -1286.04, 29.27), 0.4, 0.4, 
    { name="Billing3", heading = 30, debugPoly = false, minZ = 25.67, maxZ = 29.67 }, 
    { options = { {   event = "zlexif-vu:Client:Invoicing", icon = "fa-solid fa-money-bill", label = "Bill", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Duty
exports[Config.Target]:AddBoxZone("Duty", vector3(93.82, -1294.53, 29.26), 1, 3, 
    { name="Duty", heading = 300, debugPoly = false, minZ = 26.26, maxZ = 30.26 }, 
    { options = { {   action = function() Duty() end, icon = "fa-solid fa-clipboard-list", label = "Duty", job = Config.Job }, },  distance = 2.0 })
-- || ===============> BossMenu
exports[Config.Target]:AddBoxZone("BossMenu", vector3(96.08, -1292.97, 29.26), 1.2, 3, 
    { name="BossMenu", heading = 300, debugPoly = false, minZ = 25.66, maxZ = 29.66 }, 
    { options = { {  event = "qb-bossmenu:client:OpenMenu", icon = "fa-solid fa-clipboard-list", label = "Boss Menu", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Tray01
exports[Config.Target]:AddBoxZone("Tray01", vector3(129.94, -1287.31, 29.27), 0.2, 0.2, 
    { name="Tray01", heading = 30, debugPoly = false, minZ = 25.67, maxZ = 29.67 }, 
    { options = { {  event = "zlexif-vu:Client:OpenTray01", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray02
--exports[Config.Target]:AddBoxZone("Tray02", vector3(0, 0, 0), 0, 0, 
  --  { name="Tray02", heading = 0, debugPoly = false, minZ = 0, maxZ = 0 }, 
  --  { options = { {  event = "zlexif-vu:Client:OpenTray02", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Clothing
exports[Config.Target]:AddBoxZone("Wardrobe", vector3(104.31, -1302.26, 28.79), 2, 0.5, 
    { name="Wardrobe", heading = 300, debugPoly = false, minZ = 26.19, maxZ = 30.19 }, 
    { options = { {  event = "qb-clothing:client:openOutfitMenu", icon = "fa-solid fa-clipboard-list", label = "Wardrobe", job = Config.Job }, },  distance = 2.0 })

    -- || ===============> Tray03 COPY THIS FORMAT IF YOU WANT TO ADD MORE TRAYS, MAKE SURE YOU CREATE THE POLYZONE FIRST.
--exports[Config.Target]:AddBoxZone("Tray03", vector3(0, 0, 0), 0, 0, 
 --   { name="Tray03", heading = 0, debugPoly = false, minZ = 0, maxZ = 0 }, 
 --   { options = { {  event = "zlexif-vu:Client:OpenTray03", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
 exports['qb-target']:AddBoxZone("HandWashingSink", vector3(130.34, -1286.29, 29.27), 0.8, 1, 
 { 
     name = "HandWashingSink", 
     heading = 120, 
     debugPoly = false, 
     minZ = 25.67, 
     maxZ= 29.67
 }, 
 { 
     options = { 
         { 
             event = "zlexif-vu:client:WashHands", 
             icon = "fas fa-tint", 
             label = "Wash Hands",
             job = Config.Job
         }, 
     },  
     distance = 1.5 
 }
)
exports['qb-target']:AddBoxZone("PoleDance", vector3(108.76, -1289.21, 29.25), 1, 1, {
    name="PoleDance",
    heading= 0,
    minZ= 27.25,
    maxZ= 31.25,
}, {
    options = {
        {
            event = "qb-stripclub:startDancing",
            icon = "fa-solid fa-music",
            label = "Start Dancing",
            job = Config.Job
        },
    },
    distance = 1.5
})
