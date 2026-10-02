item replace entity @s weapon.mainhand with iron_sword
item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:repairable":{"items":"minecraft:leather"}}}
item modify entity @s weapon.mainhand {"type":"minecraft:set_attributes","modifiers":[ \
{"id":"mainhand_attack_damage","attribute":"minecraft:attack_damage","amount":-0.7,"operation":"add_multiplied_total","slot":"mainhand"}, \
{"id":"mainhand_attack_speed","attribute":"minecraft:attack_speed","amount":-2.4,"operation":"add_value","slot":"mainhand"}, \
{"id":"mainhand_entity_interaction_range","attribute":"minecraft:entity_interaction_range","amount":1.0,"operation":"add_value","slot":"mainhand"}],"replace":true}
function ss_armory:artisan/_artisan_generic
item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_model_data","strings":{"values":['whip'],"mode":"replace_all"}}
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":"+1.0 Attack Range","italic":false,"color":"blue"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":"-70% Attack Damage","italic":false,"color":"red"}],"mode":"append"}

# properties tooltip
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_properties
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":"+Visceral","italic":false,"color":"blue"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"weight":2}}}
item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"properties":{"visceral":true,"active":["mainhand"]}}}}

# next line
item modify entity @s weapon.mainhand ss_armory:text_new_line
item modify entity @s weapon.mainhand ss_armory:text_main_hand
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" 1 Attack Damage","italic":false,"color":"dark_green"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" 1.6 Attack Damage","italic":false,"color":"dark_green"}],"mode":"append"}

item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:item_name":"Whip"}}