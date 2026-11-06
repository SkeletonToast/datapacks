function ss_classes:_classes

# execute as @a[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{CustomPotionColor:62207}}]}] unless entity @s[scores={class004=1..}] run give @s arrow
# execute as @a[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{CustomPotionColor:62207}}]}] unless entity @s[scores={class004=1..}] run clear @s tipped_arrow{CustomPotionColor:62207} 1
# kill @e[type=arrow,nbt={Color:62207,inGround:1b}]

execute as @a[scores={class005=0}] run attribute @s minecraft:generic.attack_damage modifier remove class005_grounded_attack_damage
execute as @a[scores={class005=0}] run attribute @s minecraft:generic.attack_speed modifier remove class005_grounded_attack_speed
execute as @a[scores={class005=0}] run attribute @s minecraft:generic.attack_damage modifier remove class005_airborne_attack_damage
execute as @a[scores={class005=0}] run attribute @s minecraft:generic.attack_speed modifier remove class005_airborne_attack_speed