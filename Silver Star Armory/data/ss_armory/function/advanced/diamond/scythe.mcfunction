item modify entity @s weapon.mainhand {"type":"minecraft:set_attributes","modifiers":[ \
{"id":"mainhand_attack_damage","attribute":"minecraft:attack_damage","amount":5,"operation":"add_value","slot":"mainhand"}, \
{"id":"mainhand_attack_speed","attribute":"minecraft:attack_speed","amount":-2.2,"operation":"add_value","slot":"mainhand"}],"replace":true}
function ss_armory:advanced/scythe
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" 6 Attack Damage","italic":false,"color":"dark_green"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" 1.8 Attack Speed","italic":false,"color":"dark_green"}],"mode":"append"}

item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:item_name":"Diamond Scythe"}}