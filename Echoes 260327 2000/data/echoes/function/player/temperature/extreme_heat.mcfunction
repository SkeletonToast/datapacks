scoreboard players operation @s generic_a -= @s heat_resistance
scoreboard players set @s[scores={generic_a=..-1}] generic_a 0

execute if predicate ss_lib:random_1_percent run damage @s[scores={generic_a=20..}] 3 minecraft:on_fire
execute if predicate ss_lib:random_1_percent run damage @s[scores={generic_a=40..}] 6 minecraft:on_fire
# damage @s[scores={generic_a=80..}] 1 minecraft:on_fire

# execute if predicate ss_lib:random_1_percent run effect give @s[scores={generic_a=40..}] darkness 3 0 true
# execute if predicate ss_lib:random_1_percent run effect give @s[scores={generic_a=40..}] blindness 3 0 true

scoreboard players set @s[scores={generic_a=1..}] hesitant_active 1
scoreboard players operation @s[scores={generic_a=1..}] encumbrance_hard += @s generic_a
scoreboard players operation @s[scores={generic_a=1..}] hesitant_amount += @s generic_a
scoreboard players operation @s[scores={generic_a=1..}] hesitant_amount += @s generic_a
# scoreboard players operation @s fear += @s generic_a

execute as @s[scores={generic_a=10..}] run effect clear @s speed
execute as @s[scores={generic_a=10..}] run effect clear @s strength
execute as @s[scores={generic_a=10..}] run effect clear @s resistance

# execute if predicate ss_lib:random_10_percent at @s[scores={generic_a=20..}] anchored eyes run particle small_flame ^ ^ ^1 0.2 0.2 0.2 0 1 normal @s
execute if predicate ss_lib:random_10_percent at @s[scores={generic_a=20..}] anchored eyes run particle small_flame ^ ^ ^1 3 3 3 0 3 normal @s
execute at @s[scores={generic_a=40..}] anchored eyes run particle lava ^ ^ ^1 4 4 4 0 1 normal @s