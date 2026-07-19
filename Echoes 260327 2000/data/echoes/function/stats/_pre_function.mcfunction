# Initiative - the modifier for enemy in-combat time
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative = @s Tact
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= @s 10
    execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= @s 10
        execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= @s 10
# execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative += @s DamageDealt

# Unsigning Stats
execute as @a run scoreboard players operation @s Strength = @s BaseStrength
execute as @a run scoreboard players operation @s Dexterity = @s BaseDexterity
execute as @a run scoreboard players operation @s MindSigned = @s BaseMind
execute as @a run scoreboard players operation @s Resolve = @s BaseResolve
execute as @a run scoreboard players operation @s Vitality = @s BaseVitality
execute as @a run scoreboard players operation @s Tact = @s BaseTact
execute as @a run scoreboard players operation @s SoulSigned = @s BaseSoul

execute as @a run scoreboard players operation @s Soul = @s SoulSigned
execute as @a[scores={Soul=..-1}] run scoreboard players operation @s Soul *= @s -1
execute as @a run scoreboard players operation @s Mind = @s MindSigned
execute as @a[scores={Mind=..-1}] run scoreboard players operation @s Mind *= @s -1

# Charm - modifier for persuasion (only used in rp probably)
execute as @a run scoreboard players operation @s Charm = @s Soul
execute as @a run scoreboard players operation @s Charm += @s Tact
execute as @a run scoreboard players operation @s Charm /= @s 2

# setting stats for the first time
scoreboard players set @a[scores={Age=1}] BaseStrength 7
scoreboard players set @a[scores={Age=1}] BaseDexterity 7
scoreboard players set @a[scores={Age=1}] BaseMind 7
scoreboard players set @a[scores={Age=1}] BaseResolve 7
scoreboard players set @a[scores={Age=1}] BaseVitality 7
scoreboard players set @a[scores={Age=1}] BaseTact 7
scoreboard players set @a[scores={Age=1}] BaseSoul 7

# averaged stats
execute as @a run scoreboard players operation @s sse.Physique = @s Strength
execute as @a run scoreboard players operation @s sse.Physique += @s Dexterity
# execute as @a run scoreboard players operation @s sse.Physique += @s Resolve
execute as @a run scoreboard players operation @s sse.Physique *= @s 3
execute as @a run scoreboard players operation @s sse.Physique /= @s 5
execute as @a if score @s Strength >= @s Dexterity if score @s sse.Physique > @s Strength run scoreboard players operation @s sse.Physique = @s Strength
execute as @a if score @s Dexterity >= @s Strength if score @s sse.Physique > @s Dexterity run scoreboard players operation @s sse.Physique = @s Dexterity

execute as @a run scoreboard players operation @s sse.Passion = @s Vitality
execute as @a run scoreboard players operation @s sse.Passion += @s Soul
execute as @a run scoreboard players operation @s sse.Passion *= @s 2
execute as @a run scoreboard players operation @s sse.Passion /= @s 3
execute as @a if score @s Vitality >= @s Soul if score @s sse.Passion > @s Vitality run scoreboard players operation @s sse.Passion = @s Vitality
execute as @a if score @s Soul >= @s Vitality if score @s sse.Passion > @s Soul run scoreboard players operation @s sse.Passion = @s Soul

execute as @a run scoreboard players operation @s sse.Knowledge = @s Mind
execute as @a run scoreboard players operation @s sse.Knowledge += @s Tact
execute as @a run scoreboard players operation @s sse.Knowledge *= @s 2
execute as @a run scoreboard players operation @s sse.Knowledge /= @s 3
execute as @a if score @s Mind >= @s Mind if score @s sse.Knowledge > @s Mind run scoreboard players operation @s sse.Knowledge = @s Mind
execute as @a if score @s Mind >= @s Mind if score @s sse.Knowledge > @s Tact run scoreboard players operation @s sse.Knowledge = @s Tact

# Tenacity & Fortitude
execute as @a[tag=Vitality_feat_1] run scoreboard players operation @s Tenacity = @s Vitality
    execute as @a run scoreboard players remove @s Tenacity 10
        execute as @a run scoreboard players operation @s Tenacity /= @s 2
        execute as @a run scoreboard players operation @s Tenacity /= @s 2
        execute as @a run scoreboard players operation @s Tenacity /= @s 2
            scoreboard players set @a[scores={Tenacity=..-1}] Tenacity 0
        scoreboard players add @a Tenacity 12
            scoreboard players operation @a[tag=Vitality_feat_3] Tenacity *= @s 3
            scoreboard players operation @a[tag=Vitality_feat_3] Tenacity /= @s 2

execute as @a[tag=Vitality_feat_1] run scoreboard players operation @s Fortitude = @s Tenacity
    execute as @a run scoreboard players operation @s Fortitude /= @s 2
    scoreboard players remove @a Fortitude 2
    
scoreboard players set @a[tag=!Vitality_feat_1] Tenacity 0
scoreboard players set @a[tag=!Vitality_feat_1] Fortitude 0

scoreboard players set @a Potential 300
scoreboard players set @a Prowess 40
execute as @a run function echoes:stats/attribute_set

# attribute default / attribute set
# execute as @a[scores={SoftRestOrRespawn=0}] run function echoes:stats/attribute_default

# scale changes
execute as @a run attribute @s max_health modifier remove scale.max_health
execute as @a run attribute @s step_height modifier remove scale.step_height
execute as @a run attribute @s entity_interaction_range modifier remove scale.entity_interaction_range
execute as @a run attribute @s block_interaction_range modifier remove scale.block_interaction_range
execute as @a run attribute @s gravity modifier remove scale.gravity
execute as @a run attribute @s fall_damage_multiplier modifier remove scale.fall_damage_multiplier
execute as @a run attribute @s jump_strength modifier remove scale.jump_strength
execute as @a run attribute @s movement_speed modifier remove scale.movement_speed

execute as @a store result score @s generic_h run attribute @s scale get 1000
execute as @a run scoreboard players remove @s generic_h 1000
execute as @a unless score @s generic_h matches -150..150 run function echoes:stats/scale_attribute/_main {"score":"generic_h"}

execute as @a run scoreboard players operation @s generic_h /= @s 5
execute as @a run function math:round/10_reduce {"score":"generic_h"}
execute as @a run scoreboard players operation @s Strength += @s generic_h

# movement stats
scoreboard players set @a SuperSprintThreshold 115
execute as @a run scoreboard players operation @s generic_a = @s Dexterity
execute as @a run scoreboard players operation @s generic_a /= @s 2
execute as @a run scoreboard players operation @s SuperSprintThreshold -= @s Dexterity