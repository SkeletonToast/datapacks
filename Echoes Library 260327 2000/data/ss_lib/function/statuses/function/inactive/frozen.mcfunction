# execute as @s[scores={frozen_active=-1}] run function ss_lib:status/_display_status {"type":"-","color":"#bce7ff","status":"Frozen",append:""}

function ss_lib:status/immobilized

execute at @s[type=player,scores={OnGround=1}] positioned ~ ~0.1 ~ run particle block{block_state:"minecraft:blue_ice"} ~ ~ ~ 0.2 0.1 0.2 0 10 normal
execute at @s[type=!player,nbt={OnGround:1b}] positioned ~ ~0.1 ~ run particle block{block_state:"minecraft:blue_ice"} ~ ~ ~ 0.2 0.1 0.2 0 10 normal

execute as @s[type=#ss_lib:hostile] run function ss_lib:pacify
execute at @s[type=player] anchored eyes run particle white_smoke ^ ^ ^0.1 0.2 0.2 0.2 0 10 normal @s
# execute at @s[type=player] anchored eyes run particle white_smoke ^ ^ ^0.2 0.3 0.3 0.3 0 30 normal @s
# execute at @s[type=player] anchored eyes run particle white_smoke ^ ^ ^0.3 0.4 0.4 0.4 0 40 normal @s

scoreboard players set @s frozen_active 1