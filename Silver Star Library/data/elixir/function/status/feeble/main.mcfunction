scoreboard players operation @s elixir.generic.amplifier *= #const.5 value
scoreboard players set @s[scores={elixir.generic.amplifier=76..}] elixir.generic.amplifier 75

function ss_lib:fetch/gear/weapon_weight

# armor
execute as @s[scores={Armor=20..}] run function parse:score_with_macros {score:elixir.generic.amplifier,function:"elixir:status/feeble/movement_speed",append:".",append_position:2,macros:"type:armor",prepend:"",prepend_position:0}
execute as @s[scores={Armor=16..19}] if score @s Armor > @s Food run function parse:score_with_macros {score:elixir.generic.amplifier,function:"elixir:status/feeble/movement_speed",append:".",append_position:2,macros:"type:armor",prepend:"",prepend_position:0}
execute as @s[scores={Armor=..19}] if score @s Armor <= @s Food run attribute @s minecraft:movement_speed modifier remove elixir.feeble.movement_speed.armor

# weapon
execute as @s[scores={WeaponWeight=3..}] run function parse:score_with_macros {score:elixir.generic.amplifier,function:"elixir:status/feeble/movement_speed",append:".",append_position:2,macros:"type:weapon",prepend:"",prepend_position:0}
attribute @s[scores={WeaponWeight=..2}] minecraft:movement_speed modifier remove elixir.feeble.movement_speed.weapon

# shield
execute as @s[scores={UsingShield=1..}] run function parse:score_with_macros {score:elixir.generic.amplifier,function:"elixir:status/feeble/movement_speed",append:".",append_position:2,macros:"type:shield",prepend:"",prepend_position:0}
attribute @s[scores={UsingShield=0}] minecraft:movement_speed modifier remove elixir.feeble.movement_speed.shield

# jump strength
execute as @s[scores={UsingShield=1..}] run function parse:score_append {score:elixir.generic.amplifier,function:"elixir:status/feeble/jump_strength",append:".",append_position:2}
execute as @s[scores={WeaponWeight=3..}] run function parse:score_append {score:elixir.generic.amplifier,function:"elixir:status/feeble/jump_strength",append:".",append_position:2}
execute as @s[scores={Armor=20..}] run function parse:score_append {score:elixir.generic.amplifier,function:"elixir:status/feeble/jump_strength",append:".",append_position:2}
execute as @s[scores={Armor=16..19}] if score @s Armor > @s Food run function parse:score_append {score:elixir.generic.amplifier,function:"elixir:status/feeble/jump_strength",append:".",append_position:2}

execute if score @s[scores={WeaponWeight=..2,UsingShield=0}] Armor <= @s Food run attribute @s minecraft:jump_strength modifier remove elixir.feeble.jump_strength