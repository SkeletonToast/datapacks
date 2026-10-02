function ss_armory:pre_modified_weapon
item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_model_data","strings":{"values":['siege'],"mode":"replace_all"}}
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":"Siege Weapon","italic":false,"color":"gray"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"siege":true}}}