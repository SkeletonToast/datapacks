scoreboard players set @a encumbrance 0
scoreboard players set @a encumbrance_hard 0
scoreboard players set @a encumbrance_reduction 0
scoreboard players set @a encumbrance_armor 0
scoreboard players set @a encumbrance_items 0

# temperature
scoreboard players set @a temp_default 65
execute as @a run scoreboard players operation @s heat_resistance = @s Vitality
    execute as @a run scoreboard players operation @s heat_resistance /= @s 2
execute as @a run scoreboard players operation @s cold_resistance = @s Vitality
    execute as @a run scoreboard players operation @s cold_resistance /= @s 3

# aegis timer
scoreboard players set @a aegis_timer_max 100
    
tag @a add TemperatureEligible
tag @a[scores={EchoDifficulty=..2}] remove TemperatureEligible
tag @a[scores={Dimension=5}] remove TemperatureEligible

# execute as @a run attribute @s armor modifier add echoes.armor_reduction -0.5 add_multiplied_total
    # ArmorType doesn't actually take your armor points value into account so this is fine to keep w/out further modification to like encumbrance

scoreboard players set @a[scores={OnGround=1}] boost_visual_effects 0
execute as @a run attribute @s minecraft:gravity modifier remove mind.elytra_gravity
execute as @a run attribute @s minecraft:movement_speed modifier remove elytra_visual_speed

execute as @a unless entity @s[scores={EchoDifficulty=0..}] run scoreboard players set @s EchoDifficulty 3

function echoes:player/combat/_main