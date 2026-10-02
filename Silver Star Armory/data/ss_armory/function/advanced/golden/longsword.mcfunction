item modify entity @s weapon.mainhand {"type":"minecraft:set_attributes","modifiers":[ \
    {"id":"mainhand_attack_damage","attribute":"minecraft:attack_damage","amount":4,"operation":"add_value","slot":"mainhand"}, \
    {"id":"mainhand_attack_speed","attribute":"minecraft:attack_speed","amount":-2.7,"operation":"add_value","slot":"mainhand"}],"replace":true}
function ss_armory:advanced/longsword
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" 5 Attack Damage","italic":false,"color":"dark_green"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" 1.4 Attack Speed","italic":false,"color":"dark_green"}],"mode":"append"}

item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:item_name":"Golden Longsword"}}