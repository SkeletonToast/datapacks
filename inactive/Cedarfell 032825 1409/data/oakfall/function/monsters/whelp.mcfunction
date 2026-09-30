tag @s add VariantMonster

# multiplication
execute at @s as @e[type=#ss_lib:hostile,distance=..30,limit=3] run function oakfall:monsters/mob_multiply

data merge entity @s {IsBaby:false}

# attributes
attribute @s scale base set 0.8
attribute @s max_health modifier add whelp_max_health -0.5 add_multiplied_base
attribute @s movement_speed modifier add whelp_movement_speed 0.2 add_multiplied_base
attribute @s attack_damage modifier add whelp_attack_damage -0.5 add_multiplied_base