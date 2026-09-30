tag @s add VariantMonster

# attributes
attribute @s armor base set 30
attribute @s armor_toughness base set 30
attribute @s step_height base set 1
attribute @s fall_damage_multiplier base set 0
attribute @s scale base set 1.4
attribute @s follow_range base set 50
attribute @s movement_speed modifier add brute_movement_speed -0.1 add_multiplied_base
attribute @s attack_damage modifier add brute_attack_damage 0.5 add_multiplied_base

effect give @s resistance infinite 1 true
effect give @s fire_resistance infinite 0 true

data merge entity @s {IsBaby:false}
data merge entity @s {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}

item replace entity @s armor.head with spawner