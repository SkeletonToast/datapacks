# function talisman:get_id {id:1}
# execute if score @s talisman.active_talismans.1 >= @s talisman.generic.id run function talisman:get_id {id:0}
function talisman:get_id

execute if score @s talisman.id_verify matches -1 run return fail

scoreboard players add @s talisman.active_talismans 1
item modify entity @s weapon.mainhand [{"function":"minecraft:set_count","count":-1,"add":true}]

# play sound
# have particles