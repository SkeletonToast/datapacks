execute as @s[scores={Food=20}] run fill ~1 ~ ~ ~-1 ~ ~ cobweb replace #ss_library:unimportant
execute as @s[scores={Food=20}] run fill ~ ~1 ~ ~ ~-1 ~ cobweb replace #ss_library:unimportant
execute as @s[scores={Food=20}] run fill ~ ~ ~1 ~ ~ ~-1 cobweb replace #ss_library:unimportant
execute as @s[scores={Food=6..19}] run fill ~ ~ ~ ~ ~ ~ cobweb replace #ss_library:unimportant

effect give @s[scores={Food=20}] hunger 1 33 true

tag @s add HomarachLeftClickRaytrace

scoreboard players set @s raycast_lifetime 60