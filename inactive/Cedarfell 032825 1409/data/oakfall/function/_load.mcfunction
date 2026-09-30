function ss_lib:_load
function ss_statuses:_load
function ss_traits:_load
function ss_armory:_load

function of_characters:_load
function of_items:_load
function of_statuses:_load
schedule function oakfall:in_sanctuary_absorption 3s

scoreboard objectives add of_update dummy

# team
team add HideNames
team modify HideNames nametagVisibility never
team add VisibleNames
team modify VisibleNames nametagVisibility always

# eligibilities
scoreboard objectives add of_overworld_eligible dummy
scoreboard objectives add of_fear_eligible dummy

scoreboard objectives remove of_recipes
scoreboard objectives add of_recipes dummy

# biome, used for ambient effects that'll only show one biome at once
scoreboard objectives add of_biome dummy

# campfires
scoreboard objectives add of_placed_campfire minecraft.used:minecraft.campfire
scoreboard objectives add of_placed_soul_campfire minecraft.used:minecraft.soul_campfire
scoreboard objectives add of_campfire_embers dummy

scoreboard objectives add of_campfire_display_range dummy

scoreboard objectives add of_campfire_spawn dummy
scoreboard objectives add of_campfire_spawn_x dummy
scoreboard objectives add of_campfire_spawn_y dummy
scoreboard objectives add of_campfire_spawn_z dummy

scoreboard objectives add of_cindered dummy

# fear
scoreboard objectives add of_fear dummy
scoreboard objectives add of_fear_threshold_1 dummy
scoreboard objectives add of_fear_threshold_2 dummy
scoreboard objectives add of_fear_threshold_3 dummy
scoreboard objectives add of_fear_threshold_4 dummy
scoreboard objectives add of_fear_threshold_5 dummy
scoreboard objectives add of_fear_min dummy
scoreboard objectives add of_bravery dummy
scoreboard objectives add of_bravery_max dummy

scoreboard objectives add of_mob_multiply_limit dummy

scoreboard objectives add of_fogtouched_attack_cooldown dummy

# bossbar add fear {"text":"Fear","color":"#ae4bb1"}
# bossbar set minecraft:fear style notched_10
# bossbar set minecraft:fear color purple
# bossbar set minecraft:fear max 100000

# encumbrance
scoreboard objectives add of_encumbrance dummy
scoreboard objectives add of_encumbrance_armor dummy
scoreboard objectives add of_encumbrance_items dummy

# temperature
scoreboard objectives add of_display_temp dummy

scoreboard objectives add of_temp dummy
scoreboard objectives add of_temp_default dummy
scoreboard objectives add of_temp_modifier dummy
scoreboard objectives add of_ambient_temp dummy

scoreboard objectives add of_cold_resistance dummy
scoreboard objectives add of_heat_resistance dummy

scoreboard objectives add of_temp_difference dummy
    # scoreboard objectives remove of_body_temp
    # scoreboard objectives remove of_body_temp_modifier

scoreboard objectives add of_drink_water minecraft.used:minecraft.potion

# portals
scoreboard objectives add of_rift_lifetime dummy
scoreboard objectives add of_rift_cooldown dummy

# sleeping
scoreboard objectives add of_sleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add of_sleep_timer dummy
gamerule playersSleepingPercentage 0

# lanterns
scoreboard objectives add of_lantern_cooldown dummy