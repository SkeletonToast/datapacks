# caravanner
    # group bravery
    execute at @s[scores={of_fear=1000..}] run scoreboard players add @a[distance=..15,scores={of_bravery=..2000}] of_bravery 2
    execute at @s[scores={of_fear=1000..}] as @e[type=#ss_lib:tameable,limit=2,distance=..15] run scoreboard players add @a[scores={of_bravery=..2000}] of_bravery 1

    # structure villaging
    execute at @s[predicate=of_characters:in_explorer_structure] as @a[distance=..15] run function oakfall:in_village

# leader
    # temperature
    execute at @s[scores={of_fear=1000..}] run scoreboard players add @a[distance=..15,scores={Food=19..}] of_cold_resistance 5
    execute at @s[scores={of_fear=1000..}] run scoreboard players add @a[distance=..15,scores={Food=19..}] of_heat_resistance 5

    # food
    execute at @s[scores={of_fear=1000..,Food=16..}] as @a[distance=..15,scores={Food=..15}] if score @s Food < @p[scores={of_origin=2,of_job=1},distance=0] Food run effect give @s saturation 1 0 true

    # agility
    scoreboard players add @s[scores={Food=19..,of_fear=..999}] trait001 1
    execute as @s[scores={Food=19..,of_fear=1000..}] at @s as @a[distance=..15] unless entity @s[scores={trait001=1..}] run scoreboard players add @s trait001 1

    # lodestar
    execute at @s[scores={of_fear=1000..}] as @a[distance=..15] if score @s of_bravery < @n[distance=0] of_bravery run scoreboard players operation @s of_bravery = @n[distance=0] of_bravery

    # anti-mob resistance
    execute at @s as @a[distance=..15,scores={DamageTaken=1..}] at @s on attacker if entity @s[type=#ss_lib:hostile] as @p[distance=0] run \
        effect give @s resistance 3 1 true

    # absorption
    execute as @s[tag=InSanctuaryAbsorption,scores={Food=20}] if score @s Health >= @s BaseMaxHealth run function oakfall:in_sanctuary_absorption_apply
    execute at @s[scores={of_fear=1000..}] as @a[distance=..15,tag=InSanctuaryAbsorption,scores={Absorption=..3}] run function of_characters:explorer/pioneer_absorption