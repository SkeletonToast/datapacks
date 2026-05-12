function ss_statuses:immobilized

execute as @s[scores={rooted_active=-1}] run function ss_statuses:_display_status {"type":"-","color":"#7e481b","status":"Rooted","append":""}

execute at @s[type=player,scores={OnGround=1}] positioned ~ ~0.1 ~ run particle block{block_state:"minecraft:dark_oak_log"} ~ ~ ~ 0.2 0.1 0.2 0 10 normal
execute at @s[type=!player,nbt={OnGround:1b}] positioned ~ ~0.1 ~ run particle block{block_state:"minecraft:dark_oak_log"} ~ ~ ~ 0.2 0.1 0.2 0 10 normal

scoreboard players set @s rooted_active 1