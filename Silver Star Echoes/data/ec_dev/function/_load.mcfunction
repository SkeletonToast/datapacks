scoreboard objectives add timeDilation trigger
scoreboard objectives add smoothSprinting trigger
scoreboard objectives add variantMonsters trigger
scoreboard objectives add creativeEncumbrance trigger
scoreboard objectives add combatJumpScaling trigger
scoreboard objectives add ambientParticles trigger
scoreboard objectives add incrementalProficiencyScaling trigger
scoreboard objectives add aegisSelfVisibility trigger
scoreboard objectives add aegisVisibility trigger
scoreboard objectives add attackBuffVisibility trigger
scoreboard objectives add hungryDamageReduction trigger
scoreboard objectives add elytraBoosting trigger
scoreboard objectives add tactCameraDistance trigger
    # removes self so that it resets after every session
scoreboard objectives add checkStats trigger

scoreboard objectives add sse.permissions_level dummy

execute unless data storage gamerule_time_dilation toggle run data modify storage gamerule_time_dilation toggle set value 1
execute unless data storage gamerule_smooth_sprinting toggle run data modify storage gamerule_smooth_sprinting toggle set value 1
execute unless data storage gamerule_variant_monsters toggle run data modify storage gamerule_variant_monsters toggle set value 1
execute unless data storage gamerule_creative_encumbrance toggle run data modify storage gamerule_creative_encumbrance toggle set value 0
execute unless data storage gamerule_combat_jump_scaling toggle run data modify storage gamerule_combat_jump_scaling toggle set value 0
execute unless data storage gamerule_ambient_particles toggle run data modify storage gamerule_ambient_particles toggle set value 1
execute unless data storage gamerule_incremental_proficiency_scaling toggle run data modify storage gamerule_incremental_proficiency_scaling toggle set value 0
execute unless data storage gamerule_hungry_damage_reduction toggle run data modify storage gamerule_hungry_damage_reduction toggle set value 1

scoreboard objectives add aegis_display_level dummy