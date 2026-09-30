tag @s add VariantMonster

# attributes
attribute @s armor base set 10
attribute @s step_height base set 1
attribute @s fall_damage_multiplier base set 0
attribute @s scale base set 1.1
attribute @s follow_range base set 50
attribute @s movement_speed modifier add commander_movement_speed 0.1 add_multiplied_base
attribute @s attack_damage modifier add commander_attack_damage 0.3 add_multiplied_base

data merge entity @s {CanPickUpLoot:false}
data merge entity @s {IsBaby:false}

execute as @s[type=#oakfall:commander_equippable_melee] unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with stone_sword
execute as @s[type=#oakfall:commander_equippable_melee] if predicate ss_lib:random_10_percent run item replace entity @s weapon.mainhand with iron_axe
execute as @s unless items entity @s armor.* * run function oakfall:monsters/commander_armor
# execute as @s[type=#oakfall:brute_equippable_melee] run item replace entity @s weapon.offhand with shield
# execute as @s[type=#oakfall:brute_equippable_ranged] run item replace entity @s weapon.mainhand with crossbow