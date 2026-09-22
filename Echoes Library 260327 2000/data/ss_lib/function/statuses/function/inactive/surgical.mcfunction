$attribute @s minecraft:entity_interaction_range modifier add surgical_entity_interaction_range_1 $(multiplier) add_value
$attribute @s minecraft:entity_interaction_range modifier add surgical_entity_interaction_range_2 $(multiplier) add_value

execute as @s[scores={DamageDealt=40..}] if score @s surgical_hit_timer < @s DamageDealt run scoreboard players operation @s surgical_hit_timer = @s DamageDealt
$execute unless entity @s[scores={surgical_hit_timer=1..}] run attribute @s minecraft:attack_damage modifier add surgical_attack_damage -$(multiplier) add_value
$execute unless entity @s[scores={surgical_hit_timer=1..}] run attribute @s minecraft:attack_speed modifier add surgical_attack_speed -$(multiplier) add_multiplied_total

scoreboard players set @s surgical_active 1