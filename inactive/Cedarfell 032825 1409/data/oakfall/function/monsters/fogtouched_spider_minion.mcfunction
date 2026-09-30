scoreboard players set @s Age -100
data merge entity @s {Silent:1b}
attribute @s scale base set 0.5
attribute @s movement_speed modifier add fogtouched_movement_speed 1 add_multiplied_base
attribute @s attack_damage modifier add fogtouched_attack_damage -0.5 add_multiplied_base