function ss_armory:advanced/_advanced_generic
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":"-0.3 Attack Range","italic":false,"color":"red"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_attributes","modifiers":[{"id":"mainhand_entity_interaction_range", \
    "attribute":"minecraft:entity_interaction_range","amount":-0.3,"operation":"add_value","slot":"mainhand"}],"replace":false}

# custom data
execute unless items entity @s weapon.mainhand netherite_axe run item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"weight":2}}}
execute if items entity @s weapon.mainhand netherite_axe run item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"weight":4}}}

# properties tooltip
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_main_hand