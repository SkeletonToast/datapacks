execute as @s[scores={disarmed_active=-1}] run function ss_lib:status/_display_status {"type":"-","color":"#a770ff","status":"Disarmed",append:""}

attribute @s minecraft:attack_speed modifier add disarmed_attack_speed -1 add_multiplied_total

scoreboard players set @s disarmed_active 1