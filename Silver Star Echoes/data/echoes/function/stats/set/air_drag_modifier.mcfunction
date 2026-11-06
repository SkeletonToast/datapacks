execute if score @s OnGround matches 1 run attribute @s air_drag_modifier modifier remove dexterity.air_drag_modifier
$execute if score @s SuperSprintTime > @s SurgeSprintThreshold run attribute @s air_drag_modifier modifier add dexterity.air_drag_modifier $(value) add_multiplied_total

scoreboard players operation @s dex_air_drag_modifier = @s generic_attribute

# $say set movement speed $(value)