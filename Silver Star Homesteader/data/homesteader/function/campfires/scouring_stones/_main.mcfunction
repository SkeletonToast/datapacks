scoreboard players set @s generic_a 0
execute store result score @s generic_a run data get entity @s SelectedItem.components.minecraft:repair_cost
execute unless score @s generic_a matches 1.. run tellraw @s [{"text":"This item has no repair cost, and Scouring Stones have no effect on it."}]
execute unless score @s generic_a matches 1.. run return fail

scoreboard players remove @s generic_a 1
function parse:score_unended {function:"homesteader:campfires/scouring_stones/modify_weapon",score:generic_a}