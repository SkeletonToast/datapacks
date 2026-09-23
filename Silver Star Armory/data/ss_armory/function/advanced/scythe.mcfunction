function ss_armory:advanced/_advanced_generic

# next line
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_main_hand

# custom data
execute unless items entity @s weapon.mainhand netherite_hoe run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"weight":2}}}]
execute if items entity @s weapon.mainhand netherite_hoe run item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"weight":3}}}]