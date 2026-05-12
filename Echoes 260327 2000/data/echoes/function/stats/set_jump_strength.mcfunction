attribute @s jump_strength modifier remove dexterity.jump_strength
$attribute @s jump_strength modifier add dexterity.jump_strength $(value) add_value

scoreboard players operation @s dex_jump_strength = @s generic_attribute