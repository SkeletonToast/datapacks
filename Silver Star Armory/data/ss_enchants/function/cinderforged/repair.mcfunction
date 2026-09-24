execute as @s[predicate=ss_lib:is/sneaking] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":0.01,"add":true}]
$execute as @s[predicate=ss_lib:is/sneaking] run xp add @s -$(cost) points
execute as @s[predicate=ss_lib:is/sneaking] unless items entity @s weapon.mainhand *[minecraft:damage~{damage:{min:1}}] at @s run playsound block.anvil.use block @a ~ ~ ~ 0.5 1

$execute as @s[level=1..] if predicate ss_lib:is/sneaking if items entity @s weapon.mainhand *[minecraft:damage~{damage:{min:1}}] run function ss_enchants:cinderforged/repair {"cost":"$(cost)"}

# have chance per recursion to give Cinder item, maybe it'll be used for Warcinders?