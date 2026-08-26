# catcher glass trinket

attribute @s attack_damage modifier remove talisman.1.10.attack_damage

# execute as @s if predicate talisman:light_level_1 run tag @s add talisman.1.10.applied.1
# tag @s[tag=talisman.1.10.applied.1] add talisman.1.10.applied
# execute as @s[tag=!talisman.1.10.applied] if predicate talisman:light_level_2 run tag @s add talisman.1.10.applied.2
# tag @s[tag=talisman.1.10.applied.2] add talisman.1.10.applied
# execute as @s[tag=!talisman.1.10.applied] if predicate talisman:light_level_3 run tag @s add talisman.1.10.applied.3
# tag @s[tag=talisman.1.10.applied.3] add talisman.1.10.applied
# execute as @s[tag=!talisman.1.10.applied] if predicate talisman:light_level_4 run tag @s add talisman.1.10.applied.4
# tag @s[tag=talisman.1.10.applied.4] add talisman.1.10.applied
# execute as @s[tag=!talisman.1.10.applied] if predicate talisman:light_level_5 run tag @s add talisman.1.10.applied.5
# tag @s[tag=talisman.1.10.applied.5] add talisman.1.10.applied
execute as @s[tag=!talisman.1.10.applied] if predicate talisman:light_level_11 run tag @s add talisman.1.10.applied.11
tag @s[tag=talisman.1.10.applied.11] add talisman.1.10.applied
execute as @s[tag=!talisman.1.10.applied] if predicate talisman:light_level_12 run tag @s add talisman.1.10.applied.12
tag @s[tag=talisman.1.10.applied.12] add talisman.1.10.applied
execute as @s[tag=!talisman.1.10.applied] if predicate talisman:light_level_13 run tag @s add talisman.1.10.applied.13
tag @s[tag=talisman.1.10.applied.13] add talisman.1.10.applied
execute as @s[tag=!talisman.1.10.applied] if predicate talisman:light_level_14 run tag @s add talisman.1.10.applied.14
tag @s[tag=talisman.1.10.applied.14] add talisman.1.10.applied
execute as @s[tag=!talisman.1.10.applied] if predicate talisman:light_level_15 run tag @s add talisman.1.10.applied.15

# execute as @s[tag=talisman.1.10.applied.1] run attribute @s attack_damage modifier add talisman.1.10.attack_damage -0.05 add_multiplied_total
# execute as @s[tag=talisman.1.10.applied.2] run attribute @s attack_damage modifier add talisman.1.10.attack_damage -0.10 add_multiplied_total
# execute as @s[tag=talisman.1.10.applied.3] run attribute @s attack_damage modifier add talisman.1.10.attack_damage -0.15 add_multiplied_total
# execute as @s[tag=talisman.1.10.applied.4] run attribute @s attack_damage modifier add talisman.1.10.attack_damage -0.20 add_multiplied_total
# execute as @s[tag=talisman.1.10.applied.5] run attribute @s attack_damage modifier add talisman.1.10.attack_damage -0.25 add_multiplied_total
execute as @s[tag=talisman.1.10.applied.11] run attribute @s attack_damage modifier add talisman.1.10.attack_damage 0.02 add_multiplied_total
execute as @s[tag=talisman.1.10.applied.12] run attribute @s attack_damage modifier add talisman.1.10.attack_damage 0.04 add_multiplied_total
execute as @s[tag=talisman.1.10.applied.13] run attribute @s attack_damage modifier add talisman.1.10.attack_damage 0.06 add_multiplied_total
execute as @s[tag=talisman.1.10.applied.14] run attribute @s attack_damage modifier add talisman.1.10.attack_damage 0.09 add_multiplied_total
execute as @s[tag=talisman.1.10.applied.15] run attribute @s attack_damage modifier add talisman.1.10.attack_damage 0.12 add_multiplied_total

tag @s remove talisman.1.10.applied