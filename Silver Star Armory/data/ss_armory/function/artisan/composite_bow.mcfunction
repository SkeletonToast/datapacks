function ss_armory:artisan/_artisan_generic

# artisan weapon tooltip
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" Quickly click and release your","italic":false,"color":"gray"}],"mode":"append"}
item modify entity @s weapon.mainhand {"type":"minecraft:set_lore","lore":[{"text":" Use key to fire a Quickshot.","italic":false,"color":"gray"}],"mode":"append"}

item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"special":true}}}
item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:tool":{"rules":[],"default_mining_speed":1,"damage_per_block":1}}}

# properties tooltip
item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"weight":1}}}
item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"properties":{"properties":["composite_bow"],"active":["mainhand","offhand"]}}}}

# next line
item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:item_name":"Composite Bow"}}