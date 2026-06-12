attribute @s entity_interaction_range modifier remove tact.entity_interaction_range
attribute @s block_interaction_range modifier remove tact.block_interaction_range
$attribute @s entity_interaction_range modifier add tact.entity_interaction_range $(value) add_multiplied_total
$attribute @s block_interaction_range modifier add tact.block_interaction_range $(value) add_multiplied_total

scoreboard players operation @s tact_interaction_range = @s generic_attribute