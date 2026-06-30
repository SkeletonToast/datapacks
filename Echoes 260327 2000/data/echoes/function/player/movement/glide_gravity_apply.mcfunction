execute at @s run particle minecraft:small_gust ~ ~ ~ 0.2 0.1 0.2 0 2 normal @a

$attribute @s minecraft:gravity modifier add echoes:glide.gravity $(value) add_multiplied_total
$attribute @s minecraft:fall_damage_multiplier modifier add echoes:glide.fall_damage_multiplier $(value) add_multiplied_total