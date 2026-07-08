function ss_armory:advanced/_advanced_generic
item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":"+0.3 Attack Range","italic":false,"color":"blue"}],"mode":"append"}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_attributes","modifiers":[{"id":"mainhand_entity_interaction_range", \
    "attribute":"minecraft:entity_interaction_range","amount":0.3,"operation":"add_value","slot":"mainhand"}],"replace":false}]

# properties tooltip
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_properties
item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":"+Two-Handed","italic":false,"color":"blue"}],"mode":"append"}]
# item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":"+Studded Grip","italic":false,"color":"blue"}],"mode":"append"}]

# custom data
execute unless items entity @s weapon.mainhand netherite_sword run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"weight":3}}}]
execute if items entity @s weapon.mainhand netherite_sword run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"weight":4}}}]
# item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"properties":{"properties":["studded_grip"],"active":["mainhand"]}}}}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"properties":{"properties":["two_handed"],"active":["mainhand"]}}}}]

# new line
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_main_hand