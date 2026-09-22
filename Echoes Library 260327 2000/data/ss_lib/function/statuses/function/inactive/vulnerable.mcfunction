$execute as @s[scores={vulnerable_active=-1}] run function ss_lib:status/_display_status {"type":"-","color":"#88374b","status":"Vulnerable",append:" ($(multiplier)x)"}

$attribute @s minecraft:max_health modifier add vulnerable_max_health -$(multiplier) add_multiplied_total

scoreboard players set @s vulnerable_active 1