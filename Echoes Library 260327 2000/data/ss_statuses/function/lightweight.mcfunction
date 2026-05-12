$attribute @s minecraft:gravity modifier add lightweight_gravity -$(multiplier) add_multiplied_total
$attribute @s minecraft:fall_damage_multiplier modifier add lightweight_fall_damage_multiplier -$(multiplier) add_multiplied_total
$attribute @s minecraft:safe_fall_distance modifier add lightweight_safe_fall_distance_1 $(multiplier) add_multiplied_total
$attribute @s minecraft:safe_fall_distance modifier add lightweight_safe_fall_distance_2 $(multiplier) add_multiplied_total
$attribute @s minecraft:attack_knockback modifier add lightweight_attack_knockback -$(multiplier) add_multiplied_total

scoreboard players set @s lightweight_active 1