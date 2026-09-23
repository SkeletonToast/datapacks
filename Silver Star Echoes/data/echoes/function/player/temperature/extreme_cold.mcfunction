scoreboard players operation @s temp_dangerous += @s cold_resistance
scoreboard players set @s[scores={temp_dangerous=1..}] temp_dangerous 0

execute if predicate ss_lib:random_10_percent if predicate ss_lib:random_50_percent run damage @s[scores={temp_dangerous=..-20}] 1 freeze
execute if predicate ss_lib:random_10_percent run damage @s[scores={temp_dangerous=..-30}] 2 freeze
execute as @s[scores={temp_dangerous=..-20}] run function ss_lib:actionbar {"title":"{\"text\":\"[❄] You are freezing to death.\",\"color\":\"#82c7ff\"}","duration":20}

# scoreboard players set @s[scores={temp_dangerous=..-1}] hesitant_active 1
scoreboard players operation @s[scores={temp_dangerous=..-1}] encumbrance_hard -= @s temp_dangerous
# scoreboard players operation @s[scores={temp_dangerous=..-1}] hesitant_amount -= @s temp_dangerous
# scoreboard players operation @s[scores={temp_dangerous=..-1}] hesitant_amount -= @s temp_dangerous
function run:recur {f:"scoreboard players operation @s[scores={temp_dangerous=..-1}] Dexterity += @s temp_dangerous",r:3}

# scoreboard players operation @s fear += @s temp_dangerous

execute as @s[scores={temp_dangerous=..-10}] run effect clear @s speed
execute as @s[scores={temp_dangerous=..-10}] run effect clear @s jump_boost
execute as @s[scores={temp_dangerous=..-10}] run effect clear @s regeneration

scoreboard players set @s[scores={temp_dangerous=..-20}] aegis_amplifier_max -1

execute if predicate ss_lib:random_10_percent at @s[scores={temp_dangerous=..-10}] anchored eyes run particle firework ^ ^ ^1 20 20 20 0 50 normal @s
execute as @s[scores={temp_dangerous=..-15}] if predicate ss_lib:random_10_percent run function echoes:particles/concussion
execute as @s[scores={temp_dangerous=..-20}] if predicate ss_lib:random_10_percent run function echoes:particles/concussion
execute if predicate ss_lib:random_10_percent at @s[scores={temp_dangerous=..-20}] anchored eyes run particle snowflake ^ ^-0.3 ^0.5 0 0 0 0 1 normal @s
execute if predicate ss_lib:random_10_percent at @s[scores={temp_dangerous=..-20}] anchored eyes run particle firework ^ ^ ^1 10 10 10 0 100 normal @s
execute if predicate ss_lib:random_1_percent run effect give @s[scores={temp_dangerous=..-20}] nausea 4 0 true
effect give @s[scores={temp_dangerous=..-25}] darkness 3 0 true
execute at @s[scores={temp_dangerous=..-40}] anchored eyes run particle firework ^ ^ ^1 4 4 4 0 1 normal @s