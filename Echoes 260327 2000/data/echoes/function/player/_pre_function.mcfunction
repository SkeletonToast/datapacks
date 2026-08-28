scoreboard players set @a encumbrance 0
scoreboard players set @a encumbrance_hard 0
scoreboard players set @a encumbrance_reduction 0
scoreboard players set @a encumbrance_armor 0
scoreboard players set @a encumbrance_items 0

# proficiency
scoreboard players set @s proficiency_str 0
scoreboard players set @s proficiency_dex 0
scoreboard players set @s proficiency_tact 0
scoreboard players set @s proficiency_soul 0
scoreboard players set @s proficiency_mind 0

# aegis timer
# scoreboard players set @a aegis_timer_max 100

# temperature
scoreboard players set @a temp_default 65
execute as @a run scoreboard players operation @s heat_resistance = @s Vitality
    execute as @a run scoreboard players operation @s heat_resistance /= @s 2
execute as @a run scoreboard players operation @s cold_resistance = @s Vitality
    execute as @a run scoreboard players operation @s cold_resistance /= @s 3
    
tag @a add TemperatureEligible
tag @a[scores={EchoDifficulty=..2}] remove TemperatureEligible
tag @a[scores={Dimension=5}] remove TemperatureEligible
tag @a[gamemode=!survival,gamemode=!adventure] remove TemperatureEligible

scoreboard players set @a[scores={OnGround=1}] boost_visual_effects 0
execute as @a run attribute @s minecraft:gravity modifier remove mind.elytra_gravity
execute as @a run attribute @s minecraft:movement_speed modifier remove elytra_visual_speed

execute as @a unless entity @s[scores={EchoDifficulty=0..}] run scoreboard players set @s EchoDifficulty 3

tag @a[scores={EchoDifficulty=1}] remove InCombat
function echoes:player/combat/_main
tag @a[scores={EchoDifficulty=1}] remove InCombat
scoreboard players set @a[scores={EchoDifficulty=1}] in_combat 0

# these are here so that combat tags can be effectively removed before the titles show up
execute at @a[scores={in_combat=1..},tag=!InCombat] run scoreboard players add @a[distance=..5,scores={in_combat=0}] in_combat 10000
execute as @a[scores={in_combat=1..},tag=!InCombat] run function echoes:player/combat/enter_message
tag @a[scores={in_combat=1..}] add InCombat
tag @a[scores={in_combat=-1}] add InCombat
execute as @a[scores={in_combat=0},tag=InCombat] run function echoes:player/combat/exit_message
execute as @a[scores={in_combat=0},tag=InCombat] run function echoes:player/combat/techniques/disable
tag @a[scores={in_combat=0}] remove InCombat

# scoreboard players set $strength player_motion.api.launch 10000