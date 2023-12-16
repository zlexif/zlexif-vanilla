local QBCore = exports['qb-core']:GetCoreObject()
Config = {}


-- ██████╗ ███████╗███████╗ ██████╗ ██╗   ██╗██████╗  ██████╗███████╗███████╗
-- ██╔══██╗██╔════╝██╔════╝██╔═══██╗██║   ██║██╔══██╗██╔════╝██╔════╝██╔════╝
-- ██████╔╝█████╗  ███████╗██║   ██║██║   ██║██████╔╝██║     █████╗  ███████╗
-- ██╔══██╗██╔══╝  ╚════██║██║   ██║██║   ██║██╔══██╗██║     ██╔══╝  ╚════██║
-- ██║  ██║███████╗███████║╚██████╔╝╚██████╔╝██║  ██║╚██████╗███████╗███████║
-- ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚══════╝╚══════╝


Config.Job = "vanilla" -- Job
Config.Target = "qb-target" 
Config.InvLink = "qb-inventory/html/images/" -- Your directory images inventory
Config.NotificationSystem = 'qb' -- Change to 'okok' if you want to use okokNotify


-- ██████╗░██╗░░░░░██╗██████╗░
-- ██╔══██╗██║░░░░░██║██╔══██╗
-- ██████╦╝██║░░░░░██║██████╔╝
-- ██╔══██╗██║░░░░░██║██╔═══╝░
-- ██████╦╝███████╗██║██║░░░░░
-- ╚═════╝░╚══════╝╚═╝╚═╝░░░░░

Config.Blip = {
	Enable = false,
	Location = vector3(129.26, -1299.0, 29.23),
	Sprite = 89,
	Display = 2,
	Scale = 0.9,
	Colour = 8,
	Name = "Vanilla Unicorn",
}


-- ░██████╗████████╗░█████╗░░██████╗██╗░░██╗
-- ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║░░██║
-- ╚█████╗░░░░██║░░░███████║╚█████╗░███████║
-- ░╚═══██╗░░░██║░░░██╔══██║░╚═══██╗██╔══██║
-- ██████╔╝░░░██║░░░██║░░██║██████╔╝██║░░██║
-- ╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝

Config.Stash = {
	StashInvTrigger = "inventory:client:SetCurrentStash",
	OpenInvTrigger = "inventory:server:OpenInventory",
	NameOfStash = "vu_storage",
	MaxWeighStash = 250000,
	MaxSlotsStash = 150,
}


-- ██████╗░██╗██╗░░░░░██╗░░░░░██╗███╗░░██╗░██████╗░
-- ██╔══██╗██║██║░░░░░██║░░░░░██║████╗░██║██╔════╝░
-- ██████╦╝██║██║░░░░░██║░░░░░██║██╔██╗██║██║░░██╗░
-- ██╔══██╗██║██║░░░░░██║░░░░░██║██║╚████║██║░░╚██╗
-- ██████╦╝██║███████╗███████╗██║██║░╚███║╚██████╔╝
-- ╚═════╝░╚═╝╚══════╝╚══════╝╚═╝╚═╝░░╚══╝░╚═════╝░
Config.JimPayments = true -- Using jim-payments?


-- ░██████╗██╗░░██╗░█████╗░██████╗░
-- ██╔════╝██║░░██║██╔══██╗██╔══██╗
-- ╚█████╗░███████║██║░░██║██████╔╝
-- ░╚═══██╗██╔══██║██║░░██║██╔═══╝░
-- ██████╔ ██║░░██║╚█████╔╝██║░░░░░
-- ╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░░░░


Config.Items = {
    [1] = { name = "cabbage", price = 2, amount = 50, info = {}, type = "item", slot = 1 },
    [2] = { name = "cocktailglass", price = 3, amount = 50, info = {}, type = "item", slot = 2, },
    [3] = { name = "lemon", price = 4, amount = 50, info = {}, type = "item", slot = 3, },
    [4] = { name = "lettuce", price = 2, amount = 50, info = {}, type = "item", slot = 4, },
    [5] = { name = "pickle", price = 1, amount = 50, info = {}, type = "item", slot = 5, },
    [6] = { name = "slicedonion", price = 2, amount = 50, info = {}, type = "item", slot = 6, },
    [7] = { name = "tomato", price = 2, amount = 50, info = {}, type = "item", slot = 7, },
    [8] = { name = "shrimps", price = 3, amount = 50, info = {}, type = "item", slot = 8, },
    [9] = { name = "sugar", price = 1, amount = 50, info = {}, type = "item", slot = 9, },
    [10] = { name = "water_bottle", price = 1, amount = 50, info = {}, type = "item", slot = 10, },
    [11] = { name = "strawberry", price = 1, amount = 50, info = {}, type = "item", slot = 11, }
}

-- ██████╗ ██████╗ ██╗███╗   ██╗██╗  ██╗███████╗
-- ██╔══██╗██╔══██╗██║████╗  ██║██║ ██╔╝██╔════╝
-- ██║  ██║██████╔╝██║██╔██╗ ██║█████╔╝ ███████╗
-- ██║  ██║██╔══██╗██║██║╚██╗██║██╔═██╗ ╚════██║
-- ██████╔╝██║  ██║██║██║ ╚████║██║  ██╗███████║
-- ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝

-- Craft drinks
Config.Drinks = {
    ["blue_lagoon"] = { 
        hash = "blue_lagoon", 
        label = "Blue Lagoon",
        materials = {
            [1] = { item = "cocktailglass",      amount = 1 },
            [2] = { item = "lemon",              amount = 1 },
            [3] = { item = "sugar",              amount = 2 },
            [4] = { item = "water_bottle",       amount = 2 },
        }
    },
    ["caipirinha"] = { 
        hash = "caipirinha", 
        label = "Caipirinha",
        materials = {
            [1] = { item = "water_bottle",       amount = 3 },
            [2] = { item = "pickle",   amount = 2 },
        }
    },
    ["lemonade"] = { 
        hash = "lemonade", 
        label = "Lemonade Drink",
        materials = {
            [1] = { item = "water_bottle",         amount = 3 },
            [2] = { item = "lemon",                amount = 1 },
            [3] = { item = "sugar",                amount = 2 },
            [4] = { item = "cocktailglass",        amount = 1 },
        }
    },
    ["strawberrydaquiri"] = { 
        hash = "strawberrydaquiri", 
        label = "Strawberry Daquiri",
        materials = {
            [1] = { item = "water_bottle",      amount = 3 },
            [2] = { item = "strawberry",       amount = 1 },
            [3] = { item = "cocktailglass",    amount = 1 },
        }
    },
    ["kamikaze"] = { 
        hash = "kamikaze", 
        label = "Kamikaze Cocktail",
        materials = {
            [1] = { item = "water_bottle",      amount = 3 },
            [2] = { item = "cocktailglass",       amount = 1 },
            [3] = { item = "sugar",       amount = 2 },
            [4] = { item = "lemon",       amount = 2 },
        }
    },
    ["brussian"] = { 
        hash = "brussian", 
        label = "Black Russian",
        materials = {
            [1] = { item = "cocktailglass",      amount = 1 },
            [2] = { item = "water_bottle",       amount = 2 },
            [3] = { item = "sugar",               amount = 2 },
        }
    },
}


-- ███████╗ ██████╗  ██████╗ ██████╗ 
-- ██╔════╝██╔═══██╗██╔═══██╗██╔══██╗
-- █████╗  ██║   ██║██║   ██║██║  ██║
-- ██╔══╝  ██║   ██║██║   ██║██║  ██║
-- ██║     ╚██████╔╝╚██████╔╝██████╔╝
-- ╚═╝      ╚═════╝  ╚═════╝ ╚═════╝ 

Config.Food = {
    ["vegansalad"] = { 
        hash = "vegansalad", 
        label = "Vegan Salad",
        materials = {
            [1] = { item = "cabbage",       amount = 2 },
            [2] = { item = "lemon",         amount = 3 },
            [3] = { item = "lettuce",       amount = 2 },
            [4] = { item = "slicedonion",   amount = 5 },
            [5] = { item = "pickle",        amount = 1 },
            [6] = { item = "tomato",        amount = 5 },
            [7] = { item = "sugar",         amount = 2 },
            [8] = { item = "water_bottle",  amount = 2 },
        }
    },
    ["shrimpsalad"] = { 
        hash = "shrimpsalad", 
        label = "Shrimp Salad",
        materials = {
            [1] = { item = "water_bottle",   amount = 2 },
            [2] = { item = "cabbage",        amount = 2 },
            [3] = { item = "lemon",          amount = 4 },
            [4] = { item = "lettuce",        amount = 2 },
            [5] = { item = "pickle",         amount = 1 },
            [6] = { item = "slicedonion",    amount = 5 },
            [7] = { item = "tomato",         amount = 2 },
            [8] = { item = "shrimps",        amount = 5 },
            [9] = { item = "sugar",          amount = 2 },
        }
    },
}

-- ██████╗ ██╗   ██╗████████╗██╗   ██╗
-- ██╔══██╗██║   ██║╚══██╔══╝╚██╗ ██╔╝
-- ██║  ██║██║   ██║   ██║    ╚████╔╝ 
-- ██║  ██║██║   ██║   ██║     ╚██╔╝  
-- ██████╔╝╚██████╔╝   ██║      ██║   
-- ╚═════╝  ╚═════╝    ╚═╝      ╚═╝   

function Duty()
    TriggerServerEvent("QBCore:ToggleDuty")
end