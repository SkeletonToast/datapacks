execute as @s[tag=InVillage] run return fail
tag @s add InVillage

scoreboard players add @s of_heat_resistance 10
scoreboard players add @s of_cold_resistance 10

scoreboard players add @s of_bravery 1
scoreboard players set @s[scores={of_fear=..1000}] of_fear 0
scoreboard players remove @s[scores={of_fear=1000..}] of_fear 1
scoreboard players remove @s[scores={of_fear=10000..}] of_fear 10

execute at @s run tag @e[tag=!InVillage,type=minecraft:interaction,tag=Campfire,distance=..30] add InVillage

# nomads
effect give @s[scores={of_origin=1,of_job=1,Food=..17}] saturation 1 0 true
effect give @s[scores={of_origin=1,of_job=1}] resistance 1 0 true
effect give @s[scores={of_origin=1,of_job=1}] haste 1 0 true

# inquisitor
execute at @s[scores={of_origin=3,of_job=1}] as @a[tag=!InVillage,distance=..50] run function oakfall:in_village