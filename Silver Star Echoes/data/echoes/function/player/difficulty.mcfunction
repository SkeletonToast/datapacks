execute unless score @s sse.difficulty matches 0.. run scoreboard players set @s sse.difficulty 4

# 1: Homesteader
scoreboard players set @s[scores={sse.difficulty=1}] sse.difficulty.attribute_limit 20
scoreboard players set @s[scores={sse.difficulty=1}] sse.difficulty.health_limit 12
scoreboard players set @s[scores={sse.difficulty=1}] sse.difficulty.health_regeneration_limit 100
scoreboard players set @s[scores={sse.difficulty=1}] sse.difficulty.proficiency_limit 0
scoreboard players set @s[scores={sse.difficulty=1}] sse.difficulty.default_aegis_amplifier -1
scoreboard players set @s[scores={sse.difficulty=1}] sse.difficulty.encumbrance_multiplier 0
scoreboard players set @s[scores={sse.difficulty=1}] sse.difficulty.exhaustion_multiplier 0
scoreboard players set @s[scores={sse.difficulty=1}] sse.difficulty.radiation_multiplier 200
scoreboard players set @s[scores={sse.difficulty=1}] sse.difficulty.leveling_multiplier 33

function ss_lib:fetch/health {s:"@s[scores={sse.difficulty=1}]",bypass_check:false}
execute if score @s[scores={sse.difficulty=1}] Health >= @s BaseMaxHealth run effect give @s saturation 1 0 true

# 2: Pilgrim
scoreboard players set @s[scores={sse.difficulty=2}] sse.difficulty.attribute_limit 30
scoreboard players set @s[scores={sse.difficulty=2}] sse.difficulty.health_limit 20
scoreboard players set @s[scores={sse.difficulty=2}] sse.difficulty.health_regeneration_limit 100
scoreboard players set @s[scores={sse.difficulty=2}] sse.difficulty.proficiency_limit 5000
scoreboard players set @s[scores={sse.difficulty=2}] sse.difficulty.default_aegis_amplifier 1
scoreboard players set @s[scores={sse.difficulty=2}] sse.difficulty.encumbrance_multiplier 50
scoreboard players set @s[scores={sse.difficulty=2}] sse.difficulty.exhaustion_multiplier 50
scoreboard players set @s[scores={sse.difficulty=2}] sse.difficulty.radiation_multiplier 150
scoreboard players set @s[scores={sse.difficulty=2}] sse.difficulty.leveling_multiplier 67

# 3: Retainer
scoreboard players set @s[scores={sse.difficulty=3}] sse.difficulty.attribute_limit 49
scoreboard players set @s[scores={sse.difficulty=3}] sse.difficulty.health_limit 40
scoreboard players set @s[scores={sse.difficulty=3}] sse.difficulty.health_regeneration_limit 80
scoreboard players set @s[scores={sse.difficulty=3}] sse.difficulty.proficiency_limit 10000
scoreboard players set @s[scores={sse.difficulty=3}] sse.difficulty.default_aegis_amplifier 2
scoreboard players set @s[scores={sse.difficulty=3}] sse.difficulty.encumbrance_multiplier 75
scoreboard players set @s[scores={sse.difficulty=3}] sse.difficulty.exhaustion_multiplier 75
scoreboard players set @s[scores={sse.difficulty=3}] sse.difficulty.radiation_multiplier 100
scoreboard players set @s[scores={sse.difficulty=3}] sse.difficulty.leveling_multiplier 90

# 4: Vestige
scoreboard players set @s[scores={sse.difficulty=4}] sse.difficulty.attribute_limit 70
scoreboard players set @s[scores={sse.difficulty=4}] sse.difficulty.health_limit 40
scoreboard players set @s[scores={sse.difficulty=4}] sse.difficulty.health_regeneration_limit 60
scoreboard players set @s[scores={sse.difficulty=4}] sse.difficulty.proficiency_limit -1
scoreboard players set @s[scores={sse.difficulty=4}] sse.difficulty.default_aegis_amplifier 3
scoreboard players set @s[scores={sse.difficulty=4}] sse.difficulty.encumbrance_multiplier 100
scoreboard players set @s[scores={sse.difficulty=4}] sse.difficulty.exhaustion_multiplier 100
scoreboard players set @s[scores={sse.difficulty=4}] sse.difficulty.radiation_multiplier 100
scoreboard players set @s[scores={sse.difficulty=4}] sse.difficulty.leveling_multiplier 100


# 5: Aspirant
scoreboard players set @s[scores={sse.difficulty=5}] sse.difficulty.attribute_limit -1
scoreboard players set @s[scores={sse.difficulty=5}] sse.difficulty.health_limit 60
scoreboard players set @s[scores={sse.difficulty=5}] sse.difficulty.health_regeneration_limit 40
scoreboard players set @s[scores={sse.difficulty=5}] sse.difficulty.proficiency_limit -1
scoreboard players set @s[scores={sse.difficulty=5}] sse.difficulty.default_aegis_amplifier 4
scoreboard players set @s[scores={sse.difficulty=5}] sse.difficulty.encumbrance_multiplier 100
scoreboard players set @s[scores={sse.difficulty=5}] sse.difficulty.exhaustion_multiplier 125
scoreboard players set @s[scores={sse.difficulty=5}] sse.difficulty.radiation_multiplier 75
scoreboard players set @s[scores={sse.difficulty=5}] sse.difficulty.leveling_multiplier 110

# caps - Lord and Monarch are unavailable until certain level thresholds have been reached
    # scoreboard players set @s[scores={sse.difficulty=6,EchoLevel=..170}] sse.difficulty 5
    # scoreboard players set @s[scores={sse.difficulty=7,EchoLevel=..250}] sse.difficulty 5

# 6: Lord
scoreboard players set @s[scores={sse.difficulty=6}] sse.difficulty.attribute_limit -1
scoreboard players set @s[scores={sse.difficulty=6}] sse.difficulty.health_limit 60
scoreboard players set @s[scores={sse.difficulty=6}] sse.difficulty.health_regeneration_limit 25
scoreboard players set @s[scores={sse.difficulty=6}] sse.difficulty.proficiency_limit -1
scoreboard players set @s[scores={sse.difficulty=6}] sse.difficulty.default_aegis_amplifier 6
scoreboard players set @s[scores={sse.difficulty=6}] sse.difficulty.encumbrance_multiplier 100
scoreboard players set @s[scores={sse.difficulty=6}] sse.difficulty.exhaustion_multiplier 125
scoreboard players set @s[scores={sse.difficulty=6}] sse.difficulty.radiation_multiplier 50
scoreboard players set @s[scores={sse.difficulty=6}] sse.difficulty.leveling_multiplier 125

# 7: Monarch
scoreboard players set @s[scores={sse.difficulty=7}] sse.difficulty.attribute_limit -1
scoreboard players set @s[scores={sse.difficulty=7}] sse.difficulty.health_limit 60
scoreboard players set @s[scores={sse.difficulty=7}] sse.difficulty.health_regeneration_limit 0
scoreboard players set @s[scores={sse.difficulty=7}] sse.difficulty.proficiency_limit -1
scoreboard players set @s[scores={sse.difficulty=7}] sse.difficulty.default_aegis_amplifier 7
scoreboard players set @s[scores={sse.difficulty=7}] sse.difficulty.encumbrance_multiplier 100
scoreboard players set @s[scores={sse.difficulty=7}] sse.difficulty.exhaustion_multiplier 140
scoreboard players set @s[scores={sse.difficulty=7}] sse.difficulty.radiation_multiplier 25
scoreboard players set @s[scores={sse.difficulty=7}] sse.difficulty.leveling_multiplier 150