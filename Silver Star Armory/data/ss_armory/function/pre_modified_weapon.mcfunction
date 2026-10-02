# lore reset
item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"!minecraft:lore":{}}}

# weapon tooltip
item modify entity @s weapon.mainhand ss_armory:text_new_line

item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"special":true}}}
# item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:tool":{"rules":[],"default_mining_speed":1,"damage_per_block":1}}}

# smithing cost
# item modify entity @s[gamemode=!creative] weapon.offhand {"type":"minecraft:set_count","count":-1,"add":true}
item modify entity @s weapon.mainhand {"type":"minecraft:set_damage","damage":0.5,"add":true}

# attribute hiding
item modify entity @s weapon.mainhand ss_armory:hide_attribute_tooltips

tag @s add WeaponModified

# cinderforged chance
    # execute if predicate ss_lib:random_10_percent run item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:enchantments":{"levels":{"ss_enchants:cinderforged":1}}}}