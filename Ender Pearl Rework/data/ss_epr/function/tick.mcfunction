execute as @a[scores={ss_epr.used_ender_pearl=1..}] at @s as @e[type=ender_pearl,distance=..10] at @s on origin if entity @s[scores={ss_epr.used_ender_pearl=1..}] as @n[type=ender_pearl] \
    run kill @s[type=ender_pearl]
execute as @a[scores={ss_epr.used_ender_pearl=1..}] at @s anchored eyes positioned ^ ^ ^ run function ss_epr:particle
execute as @a[scores={ss_epr.used_ender_pearl=1..}] run damage @s 4 ender_pearl
execute as @a[scores={ss_epr.used_ender_pearl=1..}] at @s anchored eyes positioned ^ ^ ^0.5 run function ss_epr:raycast

scoreboard players set @a ss_epr.used_ender_pearl 0

execute at @a[scores={ss_epr.teleport_trail_timer=1..}] run particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0 1 normal
scoreboard players remove @a[scores={ss_epr.teleport_trail_timer=1..}] ss_epr.teleport_trail_timer 1
scoreboard players remove @a[scores={ss_epr.gravity_timer=1..}] ss_epr.gravity_timer 1
execute as @a[scores={ss_epr.gravity_timer=1}] run attribute @s minecraft:gravity modifier remove ss_epr.gravity

execute unless score $default ss_epr.teleport_distance matches 0.. run scoreboard players set $default ss_epr.teleport_distance 40
execute as @a run scoreboard players operation @s ss_epr.teleport_distance = $default ss_epr.teleport_distance