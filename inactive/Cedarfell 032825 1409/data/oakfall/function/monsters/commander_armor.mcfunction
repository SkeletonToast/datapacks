item replace entity @s armor.head with leather_helmet[enchantment_glint_override=true]
item replace entity @s armor.chest with leather_chestplate[enchantment_glint_override=true]
item replace entity @s armor.legs with leather_leggings[enchantment_glint_override=true]
item replace entity @s armor.feet with iron_boots[enchantment_glint_override=true]

execute if predicate ss_lib:random_50_percent run item replace entity @s armor.head with iron_helmet[enchantment_glint_override=true]
execute if predicate ss_lib:random_50_percent run item replace entity @s armor.chest with iron_chestplate[enchantment_glint_override=true]
execute if predicate ss_lib:random_50_percent run item replace entity @s armor.legs with iron_leggings[enchantment_glint_override=true]
execute if predicate ss_lib:random_50_percent run item replace entity @s armor.feet with iron_boots[enchantment_glint_override=true]

execute if predicate ss_lib:random_10_percent run item replace entity @s armor.head with diamond_helmet[enchantment_glint_override=true]
execute if predicate ss_lib:random_10_percent run item replace entity @s armor.chest with diamond_chestplate[enchantment_glint_override=true]
execute if predicate ss_lib:random_10_percent run item replace entity @s armor.legs with diamond_leggings[enchantment_glint_override=true]
execute if predicate ss_lib:random_10_percent run item replace entity @s armor.feet with diamond_boots[enchantment_glint_override=true]

data merge entity @s {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}