execute on origin if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:multishot":1}}}}}] run tag @e[type=#minecraft:arrows,distance=0] add Multishot
execute unless entity @s[tag=Multishot] on origin run xp add @s -3 points
execute if entity @s[tag=Multishot] on origin run xp add @s -1 points
tag @s add class004-01