function ss_lib:fetch/fire {s:"@s"}

execute at @s[predicate=ss_lib:is/on_fire] positioned ~ ~1 ~ run function ss_lib:particles/function/big_fire
execute at @s[predicate=ss_lib:is/on_fire,predicate=ss_lib:is/sprinting] run particle lava ~ ~ ~ 0.03 0 0.03 0 1 normal
execute at @s run particle smoke ~ ~1 ~ 0.3 0.3 0.3 0.02 1

execute at @s[predicate=ss_lib:is/on_fire] as @e[distance=..1] unless entity @s[scores={incendiary_timer=1..}] run damage @s 1 on_fire
execute at @s[predicate=ss_lib:is/on_fire] as @e[type=!player,distance=..1] unless entity @s[predicate=ss_lib:is/on_fire] run data merge entity @s {Fire:20s}

attribute @s minecraft:burning_time modifier add incendiary_burning_time 1 add_multiplied_total

execute at @s[predicate=ss_lib:status/incendiary_fire_spread] run fill ~ ~ ~ ~ ~ ~ fire keep

    # scoreboard players set @s incendiary_active 1

scoreboard players set @s HasStatus 1