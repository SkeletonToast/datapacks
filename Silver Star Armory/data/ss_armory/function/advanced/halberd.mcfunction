function ss_armory:advanced/_advanced_generic
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":"+1.0 Attack Range","italic":false,"color":"blue"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_attributes","modifiers":[{"id":"mainhand_entity_interaction_range", \
    "attribute":"minecraft:entity_interaction_range","amount":1.0,"operation":"add_value","slot":"mainhand"}],"replace":false}

item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:tool":{"rules":[],"default_mining_speed":1,"damage_per_block":1}}}

# custom data
execute unless items entity @s weapon.mainhand netherite_shovel run item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"weight":3}}}
execute if items entity @s weapon.mainhand netherite_shovel run item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"weight":4}}}

# properties tooltip
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_main_hand