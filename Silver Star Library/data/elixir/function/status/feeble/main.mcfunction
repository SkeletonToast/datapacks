execute unless entity @s[type=player] run return fail

scoreboard players operation @s elixir.generic.amplifier *= #const.5 value
scoreboard players set @s[scores={elixir.generic.amplifier=76..}] elixir.generic.amplifier 75

function ss_lib:fetch/gear/weapon_weight

# armor
execute as @s[scores={Armor=20..}] run function parse:macros/decimal {score:elixir.generic.amplifier,function:"elixir:status/feeble/movement_speed",scale:0.01,macros:"type:armor"}
    # 0.01
execute as @s[scores={Armor=16..19}] if score @s Armor > @s Food run function parse:macros/decimal {score:elixir.generic.amplifier,function:"elixir:status/feeble/movement_speed",scale:0.01,macros:"type:armor"}
    # 0.01
execute as @s[scores={Armor=..19}] if score @s Armor <= @s Food run attribute @s minecraft:movement_speed modifier remove elixir.feeble.movement_speed.armor

# weapon
execute as @s[scores={WeaponWeight=3..}] run function parse:macros/decimal {score:elixir.generic.amplifier,function:"elixir:status/feeble/movement_speed",scale:0.01,macros:"type:weapon"}
    # 0.01
attribute @s[scores={WeaponWeight=..2}] minecraft:movement_speed modifier remove elixir.feeble.movement_speed.weapon

# shield
execute as @s[scores={UsingShield=1..}] run function parse:macros/decimal {score:elixir.generic.amplifier,function:"elixir:status/feeble/movement_speed",scale:0.01,macros:"type:shield"}
    # 0.01
attribute @s[scores={UsingShield=0}] minecraft:movement_speed modifier remove elixir.feeble.movement_speed.shield

# jump strength
execute as @s[scores={UsingShield=1..}] run function parse:decimal {score:elixir.generic.amplifier,function:"elixir:status/feeble/jump_strength",scale:0.01}
execute as @s[scores={WeaponWeight=3..}] run function parse:decimal {score:elixir.generic.amplifier,function:"elixir:status/feeble/jump_strength",scale:0.01}
execute as @s[scores={Armor=20..}] run function parse:decimal {score:elixir.generic.amplifier,function:"elixir:status/feeble/jump_strength",scale:0.01}
execute as @s[scores={Armor=16..19}] if score @s Armor > @s Food run function parse:decimal {score:elixir.generic.amplifier,function:"elixir:status/feeble/jump_strength",scale:0.01}

execute if score @s[scores={WeaponWeight=..2,UsingShield=0}] Armor <= @s Food run attribute @s minecraft:jump_strength modifier remove elixir.feeble.jump_strength