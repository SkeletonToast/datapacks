execute align y if block ~ ~1 ~ #ss_library:nonsolidblocks if block ~ ~ ~ #ss_library:nonsolidblocks run tp @s ~ ~ ~
execute align y unless block ~ ~1 ~ #ss_library:nonsolidblocks if block ~ ~ ~ #ss_library:nonsolidblocks if block ~ ~-1 ~ #ss_library:nonsolidblocks run tp @s ~ ~-1 ~
execute at @s align y if block ~ ~-1 ~ #ss_library:nonsolidblocks run function ss_species:s_007f_swing_gravity
    # execute unless entity @s[predicate=ss_library:is_sneaking] run function ss_species:s_007f_swing_gravity

effect give @s[scores={Food=20}] hunger 1 99 true
effect give @s hunger 1 49 true
    # effect give @s[scores={Food=19..}] hunger 1 99 true
    # execute as @s[scores={Food=10..}] if entity @s[scores={Food=..18}] run effect give @s hunger 1 66 true
    # execute as @s[scores={Food=2..}] if entity @s[scores={Food=..9}] run effect give @s hunger 1 33 true

scoreboard players add @s fragile_timer 40
scoreboard players operation @s fragile_timer -= @s Food

scoreboard players add @s hesitant_timer 40
scoreboard players operation @s hesitant_timer -= @s Food

tag @s add HomarachRightClickRaytrace

attribute @s minecraft:generic.safe_fall_distance modifier add species007_swing_safe_fall_distance 1000 add_multiplied_total

scoreboard players set @s raycast_lifetime 60