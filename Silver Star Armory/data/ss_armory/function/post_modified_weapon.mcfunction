# smithing cost
# item modify entity @s[gamemode=!creative] weapon.offhand [{"function":"minecraft:set_count","count":-1,"add":true}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":0.5,"add":true}]

# attribute hiding
item modify entity @s weapon.mainhand ss_armory:hide_attribute_tooltips

# cinderforged chance
    # execute if predicate ss_lib:random_10_percent run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:enchantments":{"levels":{"ss_enchants:cinderforged":1}}}}]