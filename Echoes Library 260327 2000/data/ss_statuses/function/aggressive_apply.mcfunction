$attribute @s minecraft:attack_damage modifier add aggressive_attack_damage $(value) add_multiplied_total
$attribute @s minecraft:attack_speed modifier add aggressive_attack_speed $(value) add_multiplied_total

scoreboard players set @s aggressive_active 1