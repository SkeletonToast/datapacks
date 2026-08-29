attribute @s submerged_mining_speed modifier remove tact.submerged_mining_speed
$attribute @s submerged_mining_speed modifier add tact.submerged_mining_speed $(value) add_value

scoreboard players operation @s tact_submerged_mining_speed = @s generic_attribute