## Zlexif's Vanilla Unicorn Job.
join **[Discord] https://discord.gg/XAV4AfgQaZ** |

# Required
qb-core (https://github.com/qbcore-framework/qb-core)
qb-management (https://github.com/qbcore-framework/qb-management)
qb-target (https://github.com/qbcore-framework/qb-target)
gabz vanilla unicorn mlo (https://fivem.gabzv.com/package/4724693)
progressbar (https://github.com/qbcore-framework/progressbar)
qb-input (https://github.com/qbcore-framework/progressbar)
qb-menu (https://github.com/qbcore-framework/qb-menu)
qb-smallresources (https://github.com/qbcore-framework/qb-smallresources)
# OLD QBCORE :

# **qb-core/shared/items.lua**
-- Vanilla Unicorn
	--Ingredients
	["cabbage"] 					= {["name"] = "cabbage",  	     			["label"] = "Cabbage",	 			    ["weight"] = 100, 		["type"] = "item", 		["image"] = "cabbage.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["cocktailglass"] 				= {["name"] = "cocktailglass",  	     	["label"] = "Cocktail Glass",	 	    ["weight"] = 200, 		["type"] = "item", 		["image"] = "cocktailglass.png",    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "Needs filling..." },
	["lemon"] 						= {["name"] = "lemon",  	     			["label"] = "Lemon",	 			    ["weight"] = 100, 		["type"] = "item", 		["image"] = "lemon.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["lettuce"] 					= {["name"] = "lettuce",  	     			["label"] = "Lettuce",	 			    ["weight"] = 100, 		["type"] = "item", 		["image"] = "lettuce.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["pickle"] 						= {["name"] = "pickle",  	     			["label"] = "Pickle Jar",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "pickle.png",		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["slicedonion"] 				= {["name"] = "slicedonion",  	     		["label"] = "Sliced Onions",		 	["weight"] = 50, 		["type"] = "item", 		["image"] = "slicedonion.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["tomato"] 						= {["name"] = "tomato",  	     			["label"] = "Tomato",	 			    ["weight"] = 100, 		["type"] = "item", 		["image"] = "tomato.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["shrimps"] 					= {["name"] = "shrimps",  	     			["label"] = "Shrimps",	 			    ["weight"] = 100, 		["type"] = "item", 		["image"] = "shrimps.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["sugar"] 						= {["name"] = "sugar",  	     			["label"] = "Sugar",	 			    ["weight"] = 100, 		["type"] = "item", 		["image"] = "sugar.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["strawberry"] 					= {["name"] = "strawberry",  	     		["label"] = "Strawberry",	 		    ["weight"] = 100, 		["type"] = "item", 		["image"] = "strawberry.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },

	--Drinks
	["blue_lagoon"] 				= {["name"] = "blue_lagoon",  	     		["label"] = "Blue Lagoon",	 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "blue_lagoon.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["caipirinha"] 					= {["name"] = "caipirinha",  	     		["label"] = "Caipirinha Cocktail",	 	["weight"] = 700, 		["type"] = "item", 		["image"] = "caipirinha.png",	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["lemonade"] 					= {["name"] = "lemonade",  	     			["label"] = "Lemonade Drink",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "lemonade.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["strawberrydaquiri"] 			= {["name"] = "strawberrydaquiri",  	   	["label"] = "Strawberry Daquiri",	 	["weight"] = 100, 		["type"] = "item", 		["image"] = "strawberrydaquiri.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["kamikaze"] 					= {["name"] = "kamikaze",  	     			["label"] = "Kamikaze Coctail",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "kamikaze.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },	
	["brussian"] 					= {["name"] = "brussian",  	     			["label"] = "Black Russian",	 		["weight"] = 400, 		["type"] = "item", 		["image"] = "brussian.png", 	    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },	
	-- Salads
	["vegansalad"] 					= {["name"] = "vegansalad",  	    	 	["label"] = "Vegan Salad",		 		["weight"] = 1000, 		["type"] = "item", 		["image"] = "vegansalad.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
	["shrimpsalad"] 				= {["name"] = "shrimpsalad",  	     		["label"] = "Shrimp Salad",	 		    ["weight"] = 1100, 		["type"] = "item", 		["image"] = "shrimpsalad.png", 		["unique"] = true, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
# **qb-smallresources/config.lua**
	ConsumeablesDrink = {
	    ["lemonade"] = math.random(40, 60),
	}

	ConsumeablesEat = {
		["cabbage"] = math.random(1, 10),
		["lemon"] = math.random(5, 25),
		["lettuce"] = math.random(1, 3),
		["pickle"] = math.random(5, 15),
		["slicedonion"] = math.random(1, 2),
		["tomato"] = math.random(5, 15),
		["shrimps"] = math.random(15, 20),
		["strawberry"] = math.random(1, 5),
		["vegansalad"] = math.random(50, 70),
		["shrimpsalad"] = math.random(60, 90),	
	}

	ConsumeablesAlcohol = {
	    ["blue_lagoon"] = math.random(40, 60),
	    ["caipirinha"] = math.random(35, 55),
		["strawberrydaquiri"] = math.random(45, 65),
	    ["kamikaze"] = math.random(35, 55),
		["brussian"] = math.random(25, 45),
	}

# **qb-core/shared/jobs.lua**
   ['vanilla'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = true, -- If whenever you see the job your defaultly on duty
		offDutyPay = false, -- If you want employees to be paid even when theyre not on duty/off duty ( THIS IS IN GAME NOT WHEN YOUR OFFLINE COMPLETELY)
		grades = {
            ['0'] = {
                name = 'Runner', -- NAME OF THE GRADE
                payment = 650 -- PAYMENT FOR THIS GRADE ( EVERY 30 MINS OR ACCORDING TO YOUR loops.lua)  -- Configure According To Your Economy
            },
            ['1'] = {
                name = 'Barista',
                payment = 950, -- Configure According To Your Economy
            },
            ['2'] = {
                name = 'Head Barista',
                isboss = true,
                payment = 1400, -- Configure According To Your Economy
            },
            ['3'] = {
                name = 'Asst. Manager',
                isboss = true,
                payment = 1600,
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 2000, -- Configure According To Your Economy
            },
        },
	},
	
	
	# NEW QBCORE :
# **qb-core/shared/items.lua**


--  ██╗   ██╗ █████╗ ███╗   ██╗██╗██╗     ██╗      █████╗     ██╗   ██╗███╗   ██╗██╗ ██████╗ ██████╗ ██████╗ ███╗   ██╗
--  ██║   ██║██╔══██╗████╗  ██║██║██║     ██║     ██╔══██╗    ██║   ██║████╗  ██║██║██╔════╝██╔═══██╗██╔══██╗████╗  ██║
--  ██║   ██║███████║██╔██╗ ██║██║██║     ██║     ███████║    ██║   ██║██╔██╗ ██║██║██║     ██║   ██║██████╔╝██╔██╗ ██║
--  ╚██╗ ██╔╝██╔══██║██║╚██╗██║██║██║     ██║     ██╔══██║    ██║   ██║██║╚██╗██║██║██║     ██║   ██║██╔══██╗██║╚██╗██║
--  ╚████╔╝ ██║  ██║██║ ╚████║██║███████╗███████╗██║  ██║     ╚██████╔╝██║ ╚████║██║╚██████╗╚██████╔╝██║  ██║██║ ╚████║
--  ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝      ╚═════╝ ╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝
	--Ingredients
	cabbage 					= {name = "cabbage",  	     			label = "Cabbage",	 			    weight = 100, 		type = "item", 		image = "cabbage.png", 		    unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	cocktailglass 				= {name = "cocktailglass",  	     	label = "Cocktail Glass",	 	    weight = 200, 		type = "item", 		image = "cocktailglass.png",    unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "Needs filling..." },
	lemon 						= {name = "lemon",  	     			label = "Lemon",	 			    weight = 100, 		type = "item", 		image = "lemon.png", 		    unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	lettuce 					= {name = "lettuce",  	     			label = "Lettuce",	 			    weight = 100, 		type = "item", 		image = "lettuce.png", 		    unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	pickle 						= {name = "pickle",  	     			label = "Pickle Jar",	 			weight = 100, 		type = "item", 		image = "pickle.png",		    unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	slicedonion 				= {name = "slicedonion",  	     		label = "Sliced Onions",		 	weight = 50, 		type = "item", 		image = "slicedonion.png", 		unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	tomato 						= {name = "tomato",  	     			label = "Tomato",	 			    weight = 100, 		type = "item", 		image = "tomato.png", 			unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	shrimps 					= {name = "shrimps",  	     			label = "Shrimps",	 			    weight = 100, 		type = "item", 		image = "shrimps.png", 			unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	sugar 						= {name = "sugar",  	     			label = "Sugar",	 			    weight = 100, 		type = "item", 		image = "sugar.png", 			unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	strawberry 					= {name = "strawberry",  	     		label = "Strawberry",	 		    weight = 100, 		type = "item", 		image = "strawberry.png", 		unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },

	--Drinks
	blue_lagoon 				= {name = "blue_lagoon",  	     		label = "Blue Lagoon",	 			weight = 1000, 		type = "item", 		image = "blue_lagoon.png", 		unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	caipirinha 					= {name = "caipirinha",  	     		label = "Caipirinha Cocktail",	 	weight = 700, 		type = "item", 		image = "caipirinha.png",	    unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	lemonade 					= {name = "lemonade",  	     			label = "Lemonade Drink",	 		weight = 200, 		type = "item", 		image = "lemonade.png", 	    unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	strawberrydaquiri 			= {name = "strawberrydaquiri",  	   	label = "Strawberry Daquiri",	 	weight = 100, 		type = "item", 		image = "strawberrydaquiri.png", unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	kamikaze 					= {name = "kamikaze",  	     			label = "Kamikaze Coctail",	 		weight = 100, 		type = "item", 		image = "kamikaze.png", 	    unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },	
	brussian 					= {name = "brussian",  	     			label = "Black Russian",	 		weight = 400, 		type = "item", 		image = "brussian.png", 	    unique = false, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },	
	-- Salads
	vegansalad 					= {name = "vegansalad",  	    	 	label = "Vegan Salad",		 		weight = 1000, 		type = "item", 		image = "vegansalad.png", 		unique = true, 		useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },
	shrimpsalad 				= {name = "shrimpsalad",  	     		label = "Shrimp Salad",	 		    weight = 1100, 		type = "item", 		image = "shrimpsalad.png", 		unique = true, 	useable = true, 	shouldClose = true,   	combinable = nil,   description = "" },






# **qb-smallresources/config.lua**

         drink = { 
        ["lemonade"] = math.random(40, 60),
	    }

        eat = { 
		["cabbage"] = math.random(1, 10),
		["lemon"] = math.random(5, 25),
		["lettuce"] = math.random(1, 3),
		["pickle"] = math.random(5, 15),
		["slicedonion"] = math.random(1, 2),
		["tomato"] = math.random(5, 15),
		["shrimps"] = math.random(15, 20),
		["strawberry"] = math.random(1, 5),
		["vegansalad"] = math.random(50, 70),
		["shrimpsalad"] = math.random(60, 90),	
	}

        alcohol = { -- default alcohol items
	    ["blue_lagoon"] = math.random(40, 60),
	    ["caipirinha"] = math.random(35, 55),
		["strawberrydaquiri"] = math.random(45, 65),
	    ["kamikaze"] = math.random(35, 55),
		["brussian"] = math.random(25, 45),
	}
	
	
	
	# **qb-core/shared/jobs.lua**

--  ██╗   ██╗ █████╗ ███╗   ██╗██╗██╗     ██╗      █████╗     ██╗   ██╗███╗   ██╗██╗ ██████╗ ██████╗ ██████╗ ███╗   ██╗
--  ██║   ██║██╔══██╗████╗  ██║██║██║     ██║     ██╔══██╗    ██║   ██║████╗  ██║██║██╔════╝██╔═══██╗██╔══██╗████╗  ██║
--  ██║   ██║███████║██╔██╗ ██║██║██║     ██║     ███████║    ██║   ██║██╔██╗ ██║██║██║     ██║   ██║██████╔╝██╔██╗ ██║
--  ╚██╗ ██╔╝██╔══██║██║╚██╗██║██║██║     ██║     ██╔══██║    ██║   ██║██║╚██╗██║██║██║     ██║   ██║██╔══██╗██║╚██╗██║
--  ╚████╔╝ ██║  ██║██║ ╚████║██║███████╗███████╗██║  ██║     ╚██████╔╝██║ ╚████║██║╚██████╗╚██████╔╝██║  ██║██║ ╚████║
--  ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝     ╚═════╝ ╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝

   vanilla = {
		label = 'Vanilla Unicorn',
		defaultDuty = true, -- If whenever you see the job your defaultly on duty
		offDutyPay = false, -- If you want employees to be paid even when theyre not on duty/off duty ( THIS IS IN GAME NOT WHEN YOUR OFFLINE COMPLETELY)
		grades = {
            ['0'] = {
                name = 'Runner', -- NAME OF THE GRADE
                payment = 650 -- PAYMENT FOR THIS GRADE ( EVERY 30 MINS OR ACCORDING TO YOUR loops.lua)  -- Configure According To Your Economy
            },
            ['1'] = {
                name = 'Barista',
                payment = 950, -- Configure According To Your Economy
            },
            ['2'] = {
                name = 'Head Barista',
                isboss = true,
                payment = 1400, -- Configure According To Your Economy
            },
            ['3'] = {
                name = 'Asst. Manager',
                isboss = true,
                payment = 1600,
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 2000, -- Configure According To Your Economy
            },
        },
	},