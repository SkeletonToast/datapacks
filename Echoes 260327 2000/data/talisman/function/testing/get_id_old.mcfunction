$execute store result score @s generic_t run data get entity @s SelectedItem.components.minecraft:custom_data.talisman.id[$(id)]
scoreboard players operation @s talisman.id_verify = @s generic_t
scoreboard players set @s talisman.generic.id 2
function math:power/score {base_score:talisman.generic.id,exponent_score:generic_t}
$function ss_lib:binary_disambiguation {score:talisman.active_talismans.$(id),namespace_1:"talisman:verify_equipped {value:",namespace_2:"}"}
# $execute unless score @s talisman.active_talismans.$(id) < @s talisman.generic.id run scoreboard players set @s talisman.generic.id -1
# $execute if score @s talisman.active_talismans.$(id) < @s talisman.generic.id run scoreboard players operation @s talisman.active_talismans.$(id) += @s talisman.generic.id
$execute unless score @s talisman.id_verify matches -1 run scoreboard players operation @s talisman.active_talismans.$(id) += @s talisman.generic.id