execute as @s[tag=InSanctuary] run return fail
tag @s add InSanctuary

scoreboard players operation @s of_heat_resistance *= @s 2
scoreboard players operation @s of_cold_resistance *= @s 2

scoreboard players add @s of_bravery 100
# scoreboard players set @s[scores={of_fear=..1000}] of_fear 0
scoreboard players remove @s[scores={of_fear=1000..}] of_fear 9
scoreboard players remove @s[scores={of_fear=10000..}] of_fear 80

execute at @s as @e[distance=..10,type=#ss_lib:hostile,scores={Age=20..}] run effect give @s weakness 1 0 true
effect give @s resistance 1 0 true
effect give @s strength 1 0 true
effect give @s[scores={Food=..6}] saturation 1 0 true

execute as @s[tag=InSanctuaryAbsorption] run function oakfall:in_sanctuary_absorption_apply

execute at @s run tag @e[tag=!InSanctuary,type=minecraft:interaction,tag=Campfire,distance=..30] add InSanctuary

# nomads
effect give @s[scores={of_origin=1,of_job=1,Food=..19}] saturation 1 0 true
effect give @s[scores={of_origin=1,of_job=1}] resistance 1 1 true
effect give @s[scores={of_origin=1,of_job=1}] haste 1 1 true

# inquisitor
execute at @s[scores={of_origin=3,of_job=1}] as @a[tag=!InSanctuary,distance=..50] run function oakfall:in_sanctuary