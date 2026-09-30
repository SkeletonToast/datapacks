execute if score @s of_temp > @s of_ambient_temp if predicate ss_lib:random_1_percent run scoreboard players remove @s of_temp 1
execute if score @s of_temp < @s of_ambient_temp if predicate ss_lib:random_1_percent run scoreboard players add @s of_temp 1

scoreboard players remove @s generic_a 5

execute as @s[scores={generic_a=1..}] run function oakfall:temperature_ambient