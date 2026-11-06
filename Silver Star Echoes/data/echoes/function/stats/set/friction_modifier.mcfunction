attribute @s friction_modifier modifier remove dexterity.friction_modifier
$execute if score @s SuperSprintTime > @s SurgeSprintThreshold run attribute @s friction_modifier modifier add dexterity.friction_modifier $(value) add_multiplied_total

scoreboard players operation @s dex_friction_modifier = @s generic_attribute

# $say set movement speed $(value)