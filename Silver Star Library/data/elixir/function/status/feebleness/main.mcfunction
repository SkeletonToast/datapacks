scoreboard players operation @s generic_f = @s elixir.feebleness.amplifier
    # this is not a good practice. generally try not to set generic scores and reuse them after running other functions that use generic scores. i am only doing this because i know generic_f is not used at all in any of the parse functions.
scoreboard players operation @s generic_f *= #const.5 value
scoreboard players set @s[scores={generic_f=76..}] generic_f 75

function ss_lib:fetch/gear/weapon_weight

# armor
execute as @s[scores={Armor=20..}] run function parse:score_with_macros {score:generic_f,function:"elixir:status/feebleness/movement_speed",append:".",append_position:2,macros:"type:armor",prepend:"",prepend_position:0}
execute as @s[scores={Armor=16..19}] if score @s Armor > @s Food run function parse:score_with_macros {score:generic_f,function:"elixir:status/feebleness/movement_speed",append:".",append_position:2,macros:"type:armor",prepend:"",prepend_position:0}
execute as @s[scores={Armor=..19}] if score @s Armor <= @s Food run attribute @s minecraft:movement_speed modifier remove elixir.feebleness.movement_speed.armor

# weapon
execute as @s[scores={WeaponWeight=3..}] run function parse:score_with_macros {score:generic_f,function:"elixir:status/feebleness/movement_speed",append:".",append_position:2,macros:"type:weapon",prepend:"",prepend_position:0}
attribute @s[scores={WeaponWeight=..2}] minecraft:movement_speed modifier remove elixir.feebleness.movement_speed.weapon

# shield
execute as @s[scores={UsingShield=1..}] run function parse:score_with_macros {score:generic_f,function:"elixir:status/feebleness/movement_speed",append:".",append_position:2,macros:"type:shield",prepend:"",prepend_position:0}
attribute @s[scores={UsingShield=0}] minecraft:movement_speed modifier remove elixir.feebleness.movement_speed.shield

# jump strength
execute as @s[scores={UsingShield=1..}] run function parse:score_append {score:generic_f,function:"elixir:status/feebleness/jump_strength",append:".",append_position:2}
execute as @s[scores={WeaponWeight=3..}] run function parse:score_append {score:generic_f,function:"elixir:status/feebleness/jump_strength",append:".",append_position:2}
execute as @s[scores={Armor=20..}] run function parse:score_append {score:generic_f,function:"elixir:status/feebleness/jump_strength",append:".",append_position:2}
execute as @s[scores={Armor=16..19}] if score @s Armor > @s Food run function parse:score_append {score:generic_f,function:"elixir:status/feebleness/jump_strength",append:".",append_position:2}

execute if score @s[scores={WeaponWeight=..2,UsingShield=0}] Armor <= @s Food run attribute @s minecraft:jump_strength modifier remove elixir.feebleness.jump_strength