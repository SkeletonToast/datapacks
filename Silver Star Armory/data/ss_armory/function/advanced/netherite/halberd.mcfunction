item modify entity @s weapon.mainhand {"type":"minecraft:set_attributes","modifiers":[ \
    {"id":"mainhand_attack_damage","attribute":"minecraft:attack_damage","amount":8,"operation":"add_value","slot":"mainhand"}, \
    {"id":"mainhand_attack_speed","attribute":"minecraft:attack_speed","amount":-3.1,"operation":"add_value","slot":"mainhand"}],"replace":true}
function ss_armory:advanced/halberd
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" 9 Attack Damage","italic":false,"color":"dark_green"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" 0.9 Attack Speed","italic":false,"color":"dark_green"}],"mode":"append"}

item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:item_name":"Purgatite Halberd"}}