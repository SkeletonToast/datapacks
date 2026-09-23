function ss_enchants:whispering/effect

execute on attacker unless items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:of_whispering","levels":{min:2}}]] run return fail
function ss_enchants:whispering/effect

execute on attacker unless items entity @s weapon.mainhand *[minecraft:enchantments~[{"enchantments":"ss_enchants:of_whispering","levels":{min:3}}]] run return fail
function ss_enchants:whispering/effect