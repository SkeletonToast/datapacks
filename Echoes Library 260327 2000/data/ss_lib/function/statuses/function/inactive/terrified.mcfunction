$execute as @s[scores={terrified_active=-1}] run function ss_lib:status/_display_status {"type":"-","color":"#ae4bb1","status":"Terrified",append:" ($(multiplier)x)"}

scoreboard players set @s frightened_active 1
scoreboard players set @s unnerved_active 1
scoreboard players set @s hobbled_active 1

$function ss_lib:status/frightened {"multiplier":"$(multiplier)"}
function ss_lib:status/hobbled
$function ss_lib:status/feeble {"multiplier":"$(multiplier)"}

$attribute @s minecraft:entity_interaction_range modifier add terrified_entity_interaction_range -$(multiplier) add_multiplied_total
$attribute @s minecraft:block_interaction_range modifier add terrified_block_interaction_range -$(multiplier) add_multiplied_total
# execute if predicate ss_lib:status/random_01 if predicate ss_lib:status/random_01 run function ss_lib:status/disoriented
execute at @s anchored eyes if predicate ss_lib:status/random_01 run playsound particle.soul_escape hostile @s ^ ^ ^3 2 0.5
execute at @s anchored eyes if predicate ss_lib:status/random_01 run playsound particle.soul_escape hostile @s ^ ^ ^-3 2 0.5

scoreboard players set @s terrified_active 1