scoreboard players set @s generic_b 2
$scoreboard players set @s generic_e $(id)
$scoreboard players set @s ss_lib.binary.verify $(id)
function math:power/score {base_score:generic_b,exponent_score:generic_e}

# error catch
execute unless score @s ss_lib.binary.verify matches 0..30 run tellraw @s "[Silver Star Library] An error has occurred while running the function ss_lib:binary/toggle. The $(id) score must be between 0 and 30, inclusive."
execute unless score @s ss_lib.binary.verify matches 0..30 run return fail

$function ss_lib:binary/dissect {score:$(score),namespace_1:"ss_lib:binary/verify {value:",namespace_2:"}"}

$execute unless score @s ss_lib.binary.verify matches -1 run scoreboard players operation @s $(score) += @s generic_b
$execute if score @s ss_lib.binary.verify matches -1 run scoreboard players operation @s $(score) -= @s generic_b