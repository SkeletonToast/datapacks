scoreboard players add @s tormented_random 1
execute as @s[scores={terrified_active=1}] run function ss_lib:status/immobilized

effect give @s blindness 2 0 true
effect give @s nausea 5 0 true
function ss_lib:status/disoriented

execute at @s run particle explosion_emitter ~12 ~1 ~ 2 2 2 0.1 10 force @s
execute at @s run particle explosion_emitter ~-12 ~1 ~ 2 2 2 0.1 10 force @s
execute at @s run particle explosion_emitter ~ ~1 ~12 2 2 2 0.1 10 force @s
execute at @s run particle explosion_emitter ~ ~1 ~-12 2 2 2 0.1 10 force @s
execute at @s run particle explosion_emitter ~ ~12 ~ 2 2 2 0.1 10 force @s

execute unless entity @s[predicate=ss_lib:is/moving_on_ground] if predicate ss_lib:status/random_005 anchored eyes at @s run playsound minecraft:block.stone.step player @s ^ ^ ^-5 1 1
execute at @s[predicate=ss_lib:is/moving_on_ground] if predicate ss_lib:status/random_01 anchored eyes at @s run playsound minecraft:block.stone.step player @s ^ ^ ^-3 1 1
execute if predicate ss_lib:status/random_005 if predicate ss_lib:status/random_05 if predicate ss_lib:status/random_05 at @s run function ss_lib:status/tormented_attack
execute as @s[scores={tormented_random=1..}] as @s[scores={tormented_random=..2}] if predicate ss_lib:status/random_01 if predicate ss_lib:status/random_01 at @s run function ss_lib:status/tormented_explosion {"pos":"~10 ~ ~"}

execute if predicate ss_lib:status/random_015 anchored eyes at @s run function ss_lib:status/tormented_noise
execute if predicate ss_lib:status/random_005 if predicate ss_lib:status/random_005 if predicate ss_lib:status/random_01 at @s run function ss_lib:status/tormented_noise_rare

execute as @s[scores={DamageTaken=1..}] unless entity @s[scores={enshrouded_timer=..40}] run scoreboard players add @s enshrouded_timer 10

scoreboard players set @s[scores={tormented_random=6..}] tormented_random 0

scoreboard players set @s tormented_active 1