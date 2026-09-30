# has fog resistance, recovers more quickly at campfires

scoreboard players add @s trait001 1
scoreboard players add @s Spirit 3
execute at @s[scores={of_fear=10..},tag=NearCampfire] run scoreboard players remove @s of_fear 10

scoreboard players operation @s of_heat_resistance *= @s 2
scoreboard players operation @s of_cold_resistance *= @s 2

# regenerating absorption hearts
execute as @s[tag=InSanctuaryAbsorption,scores={Food=20}] if score @s Health >= @s BaseMaxHealth run function oakfall:in_sanctuary_absorption_apply
execute on attacker run return fail
    # this will ensure that they don't regenerate hearts if they're in combat
execute as @s[tag=InSanctuaryAbsorption,scores={Absorption=..11}] run function oakfall:in_sanctuary_absorption_apply

# remember, nomads also have in-village effects