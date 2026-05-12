function ss_armory:artisan/_artisan_generic
item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":"-0.2 Attack Range","italic":false,"color":"red"}],"mode":"append"}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_attributes","modifiers":[{"id":"mainhand_entity_interaction_range", \
    "attribute":"minecraft:entity_interaction_range","amount":-0.2,"operation":"add_value","slot":"mainhand"}],"replace":false}]

# properties tooltip
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_properties
item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":"+Dual-Wieldable","italic":false,"color":"blue"}],"mode":"append"}]

# next line
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_main_hand

# custom data
execute unless items entity @s weapon.mainhand netherite_hoe run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"weight":1}}}]
execute if items entity @s weapon.mainhand netherite_hoe run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"weight":2}}}]