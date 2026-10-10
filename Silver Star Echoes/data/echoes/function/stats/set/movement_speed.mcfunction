attribute @s movement_speed modifier remove dexterity.movement_speed
$attribute @s movement_speed modifier add dexterity.movement_speed $(value) add_value

scoreboard players operation @s dex_movement_speed = @s generic_attribute

# $say set movement speed $(value)