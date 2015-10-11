-- This is the entry-point to your game mode and should be used primarily to precache models/particles/sounds/etc

require('internal/util')
require('gamemode')
require('utilities')
require('upgrades')
require('mechanics')
require('orders')
require('builder')
require('buildinghelper')


require('libraries/timers')
require('libraries/popups')
require('libraries/notifications')


function Precache( context )
--[[
  This function is used to precache resources/units/items/abilities that will be needed
  for sure in your game and that will not be precached by hero selection.  When a hero
  is selected from the hero selection screen, the game will precache that hero's assets,
  any equipped cosmetics, and perform the data-driven precaching defined in that hero's
  precache{} block, as well as the precache{} block for any equipped abilities.

  See GameMode:PostLoadPrecache() in gamemode.lua for more information
  ]]

  DebugPrint("[BAREBONES] Performing pre-load precache")

  -- Particles can be precached individually or by folder
  -- It it likely that precaching a single particle system will precache all of its children, but this may not be guaranteed
  PrecacheResource("particle", "particles/econ/generic/generic_aoe_explosion_sphere_1/generic_aoe_explosion_sphere_1.vpcf", context)
  PrecacheResource("particle_folder", "particles/test_particle", context)

  -- Models can also be precached by folder or individually
  -- PrecacheModel should generally used over PrecacheResource for individual models
  PrecacheResource("model_folder", "particles/heroes/antimage", context)
  PrecacheResource("model", "particles/heroes/viper/viper.vmdl", context)
  PrecacheModel("models/heroes/viper/viper.vmdl", context)

  -- Sounds can precached here like anything else
  PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_gyrocopter.vsndevts", context)

  -- Entire items can be precached by name
  -- Abilities can also be precached in this way despite the name
  PrecacheItemByNameSync("example_ability", context)
  PrecacheItemByNameSync("item_example_item", context)

  -- Entire heroes (sound effects/voice/models/particles) can be precached with PrecacheUnitByNameSync
  -- Custom units from npc_units_custom.txt can also have all of their abilities and precache{} blocks precached in this way
  PrecacheUnitByNameSync("npc_dota_hero_ancient_apparition", context)
  PrecacheUnitByNameSync("npc_dota_hero_enigma", context)

  	--THIS IS FROM BUILDERHELPER THIS IS FROM BUILDERHELPER THIS IS FROM BUILDERHELPER THIS IS FROM BUILDERHELPER THIS IS FROM BUILDERHELPER THIS IS FROM BUILDERHELPER 
  	-- Model ghost and grid particles 
	PrecacheResource("particle_folder", "particles/buildinghelper", context)
	PrecacheResource("particle_folder", "particles/econ/items/earthshaker/earthshaker_gravelmaw/", context)

	-- Resources used
	PrecacheUnitByNameSync("peasant", context)
	PrecacheUnitByNameSync("tower", context)
  PrecacheUnitByNameSync("archery_tower", context)
  PrecacheUnitByNameSync("canon_tower", context)
  PrecacheUnitByNameSync("ram_tower", context)
  PrecacheUnitByNameSync("siege_tower", context)
	PrecacheUnitByNameSync("tower_tier2", context)
	PrecacheUnitByNameSync("city_center", context)
	PrecacheUnitByNameSync("city_center_tier2", context)
	PrecacheUnitByNameSync("tech_center", context)
	PrecacheUnitByNameSync("dragon_tower", context)
	PrecacheUnitByNameSync("dark_tower", context)
	PrecacheUnitByNameSync("wall", context)

	PrecacheItemByNameSync("item_apply_modifiers", context)

	PrecacheUnitByNameSync("sheep", context) -- MY AWESOME CREEP
end

-- Create the game mode when we activate
function Activate()
  GameRules.GameMode = GameMode()
  GameRules.GameMode:InitGameMode()
end