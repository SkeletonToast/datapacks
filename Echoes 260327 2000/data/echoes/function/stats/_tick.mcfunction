execute as @a run function echoes:stats/echo_level

# ender pearl rework
execute as @a[scores={Mind=..50}] run scoreboard players operation @s ss_epr.teleport_distance = @s Mind
execute as @a[scores={Mind=50..}] run scoreboard players set @s ss_epr.teleport_distance 50

scoreboard players remove @a[scores={tact_camera_lock_timer=1..}] tact_camera_lock_timer 1
scoreboard players add @a[scores={tact_camera_lock_timer=..-1}] tact_camera_lock_timer 1
scoreboard players add @a tact_camera_lock_timer 0

scoreboard players set @a[scores={tact_camera_lock_timer=0},predicate=ss_lib:input/sneak] tact_camera_lock_timer 10
execute as @a[scores={tact_camera_lock_timer=1..},predicate=!ss_lib:input/sneak] run scoreboard players operation @s tact_camera_lock_timer *= @s -1
tag @a[scores={tact_camera_lock_timer=..-1},predicate=ss_lib:input/sneak] add tact_camera_locked
tag @a[scores={tact_camera_lock_timer=1..}] remove tact_camera_locked