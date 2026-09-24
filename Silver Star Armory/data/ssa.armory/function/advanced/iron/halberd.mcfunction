item modify entity @s weapon.mainhand [{"function":"minecraft:set_attributes","modifiers":[ \
    {"id":"mainhand_attack_damage","attribute":"minecraft:attack_damage","amount":7,"operation":"add_value","slot":"mainhand"}, \
    {"id":"mainhand_attack_speed","attribute":"minecraft:attack_speed","amount":-3.2,"operation":"add_value","slot":"mainhand"}],"replace":true}]
function ss_armory:advanced/halberd
item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":" 8 Attack Damage","italic":false,"color":"dark_green"}],"mode":"append"}]
item modify entity @s weapon.mainhand [{"function":"minecraft:set_lore","lore":[{"text":" 0.8 Attack Speed","italic":false,"color":"dark_green"}],"mode":"append"}]

item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:item_name":"Iron Halberd"}}]