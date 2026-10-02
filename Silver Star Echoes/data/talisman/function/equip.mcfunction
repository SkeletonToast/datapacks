# function talisman:get_id {id:1}
# execute if score @s talisman.active_talismans.1 >= @s talisman.generic.id run function talisman:get_id {id:0}
execute if score @s talisman.active_talismans >= @s talisman.slots run tellraw @s ["Your talisman slots are full. Rest to unequip and modify your talismans."]
execute if score @s talisman.active_talismans >= @s talisman.slots run return fail

function talisman:get_id

execute if score @s talisman.id_verify matches -1 run return fail

scoreboard players add @s talisman.active_talismans 1
execute if items entity @s weapon.mainhand *[custom_data~{talisman:{}}] run item modify entity @s weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}

# play sound
# have particles