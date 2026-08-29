$function ss_lib:bitpack/dissect {score:talisman.active_talismans.$(value),namespace_1:"talisman:verify_equipped {value:",namespace_2:"}"}

execute if score @s talisman.id_verify matches -1 run return fail

$scoreboard players operation @s talisman.active_talismans.$(value) += @s talisman.generic.id