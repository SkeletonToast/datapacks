attribute @s fall_damage_multiplier modifier remove dexterity_tact.fall_damage_multiplier
$attribute @s fall_damage_multiplier modifier add dexterity_tact.fall_damage_multiplier $(value) add_value

scoreboard players operation @s dex_tact_fall_damage_multiplier = @s generic_attribute