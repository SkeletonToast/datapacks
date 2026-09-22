scoreboard players set @s generic_b 2
$scoreboard players set @s generic_e $(id)
$scoreboard players set @s ss_lib.bitpack.verify $(id)
function math:power/score {base_score:generic_b,exponent_score:generic_e}

# error catch
execute unless score @s ss_lib.bitpack.verify matches 0..31 run tellraw @s "[Silver Star Library] An error has occurred while running the function ss_lib:bitpack/unassign. The $(id) score must be between 0 and 30, inclusive."
execute unless score @s ss_lib.bitpack.verify matches 0..31 run return fail

$execute if score @s ss_lib.bitpack.verify matches 31 if score @s $(score) matches ..-1 run scoreboard players operation @s $(score) *= @s -1
$execute if score @s ss_lib.bitpack.verify matches 31 if score @s $(score) matches ..-1 run return fail

$function ss_lib:bitpack/dissect {score:$(score),namespace_1:"ss_lib:bitpack/verify {value:",namespace_2:"}"}

$execute if score @s ss_lib.bitpack.verify matches -1 run scoreboard players operation @s $(score) -= @s generic_b