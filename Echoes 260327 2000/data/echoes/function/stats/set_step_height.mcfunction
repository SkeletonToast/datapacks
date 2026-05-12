attribute @s step_height modifier remove dexterity.step_height
$attribute @s step_height modifier add dexterity.step_height 0.$(value) add_value

scoreboard players operation @s dex_step_height = @s generic_attribute