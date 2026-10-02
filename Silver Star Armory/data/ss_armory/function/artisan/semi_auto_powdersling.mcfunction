function ss_armory:artisan/_artisan_generic

# properties tooltip
item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"weight":2}}}
item modify entity @s weapon.mainhand {"type":"minecraft:set_custom_data","tag":{"weapon":{"gun":{"type":"semi_auto"},"properties":{"active":["mainhand","offhand"]}}}}

# next line
item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:item_name":"Semi-Automatic Powdersling"}}

tellraw @s {"text":"+Powderslings require Powder Pellets to function, and they consume one Pellet from the inventory whenever they fire. 8 Powder Pellets can be crafted from one Gunpowder.","color":"gray"}
recipe give @s ss_armory:materials/powder_pellet