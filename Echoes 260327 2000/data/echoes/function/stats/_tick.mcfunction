execute as @a run function echoes:stats/echo_level

# ender pearl rework
execute as @a[scores={Mind=..50}] run scoreboard players operation @s ss_epr.teleport_distance = @s Mind
execute as @a[scores={Mind=50..}] run scoreboard players set @s ss_epr.teleport_distance 50