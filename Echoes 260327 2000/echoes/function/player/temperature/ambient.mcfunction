execute if score @s temp > @s ambient_temp if predicate ss_lib:random_1_percent run scoreboard players remove @s temp 1
execute if score @s temp < @s ambient_temp if predicate ss_lib:random_1_percent run scoreboard players add @s temp 1

scoreboard players remove @s generic_b 5

execute as @s[scores={generic_b=1..}] run function echoes:player/temperature/ambient