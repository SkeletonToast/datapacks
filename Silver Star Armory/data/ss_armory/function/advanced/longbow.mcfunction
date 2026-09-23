function ss_armory:advanced/_advanced_generic

# advanced weapon tooltip
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":"Advanced Weapon","italic":false,"color":"gray"}],"mode":"append"}]

# properties tooltip
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_properties
item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":"+Two-Handed","italic":false,"color":"blue"}],"mode":"append"}]

item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"special":true}}}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:tool":{"rules":[],"default_mining_speed":1,"damage_per_block":1}}}]

# properties tooltip
item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"weight":3}}}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"properties":{"properties":["longbow"],"active":["mainhand"]}}}}]

# next line
item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:item_name":"Longbow"}}]