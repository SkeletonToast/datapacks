execute as @s[scores={webbed_active=-1}] run function ss_statuses:_display_status {"type":"-","color":"#bce7ff","status":"Webbed","append":""}

function ss_statuses:immobilized

execute at @s[type=player,scores={OnGround=1}] positioned ~ ~0.1 ~ run particle block{block_state:"minecraft:cobweb"} ~ ~ ~ 0.2 0.1 0.2 0 10 normal
execute at @s[type=player,scores={OnGround=1}] positioned ~ ~0.1 ~ run particle snowflake ~ ~ ~ 0.2 0.1 0.2 0 10 normal
execute at @s[type=!player,nbt={OnGround:1b}] positioned ~ ~0.1 ~ run particle block{block_state:"minecraft:cobweb"} ~ ~ ~ 0.2 0.1 0.2 0 10 normal
execute at @s[type=!player,nbt={OnGround:1b}] positioned ~ ~0.1 ~ run particle snowflake ~ ~ ~ 0.2 0.1 0.2 0 10 normal

scoreboard players set @s webbed_active 1