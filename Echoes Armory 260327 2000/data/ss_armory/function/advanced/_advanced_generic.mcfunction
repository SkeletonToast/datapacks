function ss_armory:pre_modified_weapon
item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_model_data","strings":{"values":['advanced'],"mode":"replace_all"}}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":"Advanced Weapon","italic":false,"color":"gray"}],"mode":"append"}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_custom_data","tag":{"weapon":{"advanced":true}}}]