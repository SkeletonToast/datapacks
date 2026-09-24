function ss_armory:advanced/_advanced_generic

# advanced weapon tooltip
item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"special":true}}}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:tool":{"rules":[],"default_mining_speed":1,"damage_per_block":1}}}]

# properties tooltip
item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"weight":3}}}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"gun":{"type":"bolt_action"},"properties":{"active":["mainhand","offhand"]}}}}]

# enchantment
# item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:enchantments":{"levels":{"minecraft:quick_charge":3}}}}]
# enchant @s quick_charge 3

# next line
item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:item_name":"Bolt-Action Powdersling"}}]

tellraw @s {"text":"+Powderslings require Powder Pellets to function, and they consume one Pellet from the inventory whenever they fire. 8 Powder Pellets can be crafted from one Gunpowder.","color":"gray"}
recipe give @s ss_armory:materials/powder_pellet