scoreboard players operation @s temp_dangerous -= @s heat_resistance
scoreboard players set @s[scores={temp_dangerous=..-1}] temp_dangerous 0

execute if predicate ss_lib:random_10_percent if predicate ss_lib:random_50_percent run damage @s[scores={temp_dangerous=20..}] 3 minecraft:on_fire
execute if predicate ss_lib:random_1_percent run damage @s[scores={temp_dangerous=40..}] 6 minecraft:on_fire
execute as @s[scores={temp_dangerous=20..}] run function ss_lib:actionbar {"title":"{\"text\":\"[△] You are dying from heat.\",\"color\":\"#ff7b00\"}","duration":20}
# damage @s[scores={temp_dangerous=80..}] 1 minecraft:on_fire

# execute if predicate ss_lib:random_1_percent run effect give @s[scores={temp_dangerous=40..}] darkness 3 0 true
# execute if predicate ss_lib:random_1_percent run effect give @s[scores={temp_dangerous=40..}] blindness 3 0 true

# scoreboard players set @s[scores={temp_dangerous=1..}] hesitant_active 1
scoreboard players operation @s[scores={temp_dangerous=1..}] encumbrance_hard += @s temp_dangerous
# scoreboard players operation @s[scores={temp_dangerous=1..}] hesitant_amount += @s temp_dangerous
# scoreboard players operation @s[scores={temp_dangerous=1..}] hesitant_amount += @s temp_dangerous
function run:recur {f:"scoreboard players operation @s[scores={temp_dangerous=1..10}] Strength -= @s temp_dangerous",r:3}
# scoreboard players operation @s fear += @s temp_dangerous

execute as @s[scores={temp_dangerous=10..}] run effect clear @s speed
execute as @s[scores={temp_dangerous=10..}] run effect clear @s strength
execute as @s[scores={temp_dangerous=10..}] run effect clear @s resistance

scoreboard players set @s[scores={temp_dangerous=20..}] aegis_amplifier_max -1

# execute if predicate ss_lib:random_10_percent at @s[scores={temp_dangerous=20..}] anchored eyes run particle small_flame ^ ^ ^1 0.2 0.2 0.2 0 1 normal @s
execute if predicate ss_lib:random_1_percent run effect give @s[scores={temp_dangerous=15..}] blindness 1 0 true
effect give @s[scores={temp_dangerous=20..}] nausea 3 0 true
execute if predicate ss_lib:random_10_percent at @s[scores={temp_dangerous=20..}] anchored eyes run particle small_flame ^ ^ ^1 3 3 3 0 3 normal @s
execute at @s[scores={temp_dangerous=40..}] anchored eyes run particle lava ^ ^ ^1 4 4 4 0 1 normal @s