scoreboard players operation @s generic_a -= @s of_heat_resistance

execute if predicate ss_lib:random_1_percent run damage @s[scores={generic_a=20..}] 0.5 in_fire
execute if predicate ss_lib:random_1_percent run damage @s[scores={generic_a=40..}] 1 in_fire

scoreboard players set @s[scores={generic_a=1..}] hesitant_active 1
scoreboard players operation @s[scores={generic_a=1..}] encumbered_amount += @s generic_a
scoreboard players operation @s[scores={generic_a=1..}] hesitant_amount += @s generic_a
scoreboard players operation @s[scores={generic_a=1..}] hesitant_amount += @s generic_a
# scoreboard players operation @s of_fear += @s generic_a

execute as @s[scores={generic_a=10..}] run effect clear @s speed
execute as @s[scores={generic_a=10..}] run effect clear @s strength
execute as @s[scores={generic_a=10..}] run effect clear @s resistance

execute if predicate ss_lib:random_10_percent at @s[scores={generic_a=20..}] anchored eyes run particle small_flame ^ ^ ^1 0.2 0.2 0.2 0 1 normal @s
execute at @s[scores={generic_a=40..}] anchored eyes run particle lava ^ ^ ^1 4 4 4 0 1 normal @s
