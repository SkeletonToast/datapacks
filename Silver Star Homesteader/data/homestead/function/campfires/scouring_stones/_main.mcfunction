scoreboard players set @s generic_a 0
execute store result score @s generic_a run data get entity @s SelectedItem.components.minecraft:repair_cost
execute unless score @s generic_a matches 1.. run tellraw @s [{"text":"This item has no repair cost, and Scouring Stones have no effect on it."}]
execute unless score @s generic_a matches 1.. run return fail

execute if score @s generic_a matches 1 run item modify entity @s weapon.mainhand {"components":{"!minecraft:repair_cost":{}},"type":"minecraft:set_components"}
execute if score @s generic_a matches 1 run return fail

scoreboard players remove @s generic_a 1
function parse:simple {function:"homestead:campfires/scouring_stones/modify_weapon",score:generic_a}