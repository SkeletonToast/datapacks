attribute @s movement_efficiency modifier remove tact.movement_efficiency
$attribute @s movement_efficiency modifier add tact.movement_efficiency $(value) add_value

scoreboard players operation @s tact_movement_efficiency = @s generic_attribute