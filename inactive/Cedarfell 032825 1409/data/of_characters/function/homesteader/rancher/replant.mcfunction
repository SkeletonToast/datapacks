execute if items entity @s weapon.offhand wheat_seeds run setblock ~ ~ ~ carrots
execute if items entity @s weapon.offhand beetroot_seeds run setblock ~ ~ ~ carrots
execute if items entity @s weapon.offhand potato run setblock ~ ~ ~ carrots
execute if items entity @s weapon.offhand carrot run setblock ~ ~ ~ carrots
item modify entity @s weapon.offhand [{"function":"minecraft:set_count","count":-1,"add":true}]