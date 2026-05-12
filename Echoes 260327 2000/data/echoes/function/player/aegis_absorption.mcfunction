$effect give @s absorption 60 $(value) true

# effect give @s[scores={Absorption=36..39,aegis_amplifier_max=40..}] absorption infinite 9 true
# effect give @s[scores={Absorption=32..35,aegis_amplifier_max=36..}] absorption infinite 8 true
# effect give @s[scores={Absorption=28..31,aegis_amplifier_max=32..}] absorption infinite 7 true
# effect give @s[scores={Absorption=24..27,aegis_amplifier_max=28..}] absorption infinite 6 true
# effect give @s[scores={Absorption=20..23,aegis_amplifier_max=24..}] absorption infinite 5 true
# effect give @s[scores={Absorption=16..19,aegis_amplifier_max=20..}] absorption infinite 4 true
# effect give @s[scores={Absorption=12..15,aegis_amplifier_max=16..}] absorption infinite 3 true
# effect give @s[scores={Absorption= 8..11,aegis_amplifier_max=12..}] absorption infinite 2 true
# effect give @s[scores={Absorption= 4..7 ,aegis_amplifier_max= 8..}] absorption infinite 1 true
# effect give @s[scores={Absorption=  ..3 ,aegis_amplifier_max= 4..}] absorption infinite 0 true

# execute if score @s aegis_amplifier < @s aegis_amplifier_max at @s anchored eyes positioned ^ ^ ^ run particle trial_spawner_detection ~ ~-0.5 ~ 0.2 0.2 0.2 0 10
    # disabled for now
