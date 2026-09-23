attribute @s max_health modifier remove resolve_armor.health
$attribute @s max_health modifier add resolve_armor.health $(value) add_value

scoreboard players operation @s res_armor = @s generic_attribute