execute on origin if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"minecraft:multishot":1}}}}}] run tag @e[type=#minecraft:arrows,distance=0] add Multishot
# execute on origin run clear @s gunpowder 1
execute on origin run tag @s add ExplosiveArrowFired
tag @s add species004-02