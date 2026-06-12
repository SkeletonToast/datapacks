scoreboard players operation @s generic_a += @s cold_resistance
scoreboard players set @s[scores={generic_a=1..}] generic_a 0

execute if predicate ss_lib:random_1_percent run damage @s[scores={generic_a=..-30}] 0.5 freeze
execute if predicate ss_lib:random_1_percent run damage @s[scores={generic_a=..-60}] 1 freeze

scoreboard players set @s[scores={generic_a=..-1}] hesitant_active 1
scoreboard players operation @s[scores={generic_a=..-1}] encumbrance_hard -= @s generic_a
scoreboard players operation @s[scores={generic_a=..-1}] hesitant_amount -= @s generic_a
scoreboard players operation @s[scores={generic_a=..-1}] hesitant_amount -= @s generic_a
# scoreboard players operation @s fear += @s generic_a

execute as @s[scores={generic_a=..-10}] run effect clear @s speed
execute as @s[scores={generic_a=..-10}] run effect clear @s jump_boost
execute as @s[scores={generic_a=..-10}] run effect clear @s regeneration

execute if predicate ss_lib:random_10_percent at @s[scores={generic_a=..-20}] anchored eyes run particle snowflake ^ ^-0.3 ^0.5 0 0 0 0 1 normal @s
execute if predicate ss_lib:random_10_percent at @s[scores={generic_a=..-10}] anchored eyes run particle firework ^ ^ ^1 7 7 7 0 10 normal @s
execute if predicate ss_lib:random_10_percent at @s[scores={generic_a=..-20}] anchored eyes run particle firework ^ ^ ^1 10 10 10 0 20 normal @s
execute at @s[scores={generic_a=..-40}] anchored eyes run particle firework ^ ^ ^1 4 4 4 0 1 normal @s