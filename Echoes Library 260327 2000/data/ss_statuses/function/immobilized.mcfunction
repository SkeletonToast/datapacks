function ss_statuses:immobilized_jump
attribute @s minecraft:movement_speed modifier add immobilized_movement_speed -1 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add immobilized_knockback_resistance 1000 add_value

scoreboard players set @s immobilized_active 1