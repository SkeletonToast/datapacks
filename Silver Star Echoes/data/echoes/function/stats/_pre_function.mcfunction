# Initiative - the modifier for enemy in-combat time
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative = @s Tact
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= #const.100 value
    execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= #const.10 value
# execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative += @s DamageDealt

# Unsigning Stats
execute as @a run scoreboard players operation @s Strength = @s BaseStrength
execute as @a run scoreboard players operation @s Dexterity = @s BaseDexterity
execute as @a run scoreboard players operation @s MindSigned = @s BaseMind
execute as @a run scoreboard players operation @s Resolve = @s BaseResolve
execute as @a run scoreboard players operation @s Vitality = @s BaseVitality
execute as @a run scoreboard players operation @s Tact = @s BaseTact
execute as @a run scoreboard players operation @s SoulSigned = @s BaseSoul

execute as @a run scoreboard players operation @s Mind = @s MindSigned
execute as @a[scores={Mind=..-1}] run scoreboard players operation @s Mind *= #const.-1 value
execute as @a run scoreboard players operation @s Soul = @s SoulSigned
execute as @a[scores={Soul=..-1}] run scoreboard players operation @s Soul *= #const.-1 value

    # here if attribute limits actually directly change stats after all
    execute as @a[scores={sse.difficulty.attribute_limit=0..}] if score @s Strength > @s sse.difficulty.attribute_limit run scoreboard players operation @s Strength = @s sse.difficulty.attribute_limit
    execute as @a[scores={sse.difficulty.attribute_limit=0..}] if score @s Dexterity > @s sse.difficulty.attribute_limit run scoreboard players operation @s Dexterity = @s sse.difficulty.attribute_limit
    execute as @a[scores={sse.difficulty.attribute_limit=0..}] if score @s MindSigned > @s sse.difficulty.attribute_limit run scoreboard players operation @s MindSigned = @s sse.difficulty.attribute_limit
    execute as @a[scores={sse.difficulty.attribute_limit=0..}] if score @s Vitality > @s sse.difficulty.attribute_limit run scoreboard players operation @s Vitality = @s sse.difficulty.attribute_limit
    execute as @a[scores={sse.difficulty.attribute_limit=0..}] if score @s Tact > @s sse.difficulty.attribute_limit run scoreboard players operation @s Tact = @s sse.difficulty.attribute_limit
    execute as @a[scores={sse.difficulty.attribute_limit=0..}] if score @s SoulSigned > @s sse.difficulty.attribute_limit run scoreboard players operation @s SoulSigned = @s sse.difficulty.attribute_limit

# Charm - modifier for persuasion (only used in rp probably)
execute as @a run scoreboard players operation @s Charm = @s Soul
execute as @a run scoreboard players operation @s Charm += @s Tact
execute as @a run scoreboard players operation @s Charm /= #const.2 value

# setting stats for the first time
scoreboard players set @a[scores={Age=1}] BaseStrength 7
scoreboard players set @a[scores={Age=1}] BaseDexterity 7
scoreboard players set @a[scores={Age=1}] BaseMind 7
scoreboard players set @a[scores={Age=1}] BaseResolve 7
scoreboard players set @a[scores={Age=1}] BaseVitality 7
scoreboard players set @a[scores={Age=1}] BaseTact 7
scoreboard players set @a[scores={Age=1}] BaseSoul 7

# averaged stats
execute as @a run function echoes:stats/combination_stat {stat1:Strength,stat2:Dexterity,result:sse.Physique}
execute as @a run function echoes:stats/combination_stat {stat1:Vitality,stat2:Soul,result:sse.Passion}
execute as @a run function echoes:stats/combination_stat {stat1:Mind,stat2:Tact,result:sse.Knowledge}

# Tenacity & Fortitude
execute as @a run scoreboard players operation @s Tenacity = @s Vitality
    execute as @a run scoreboard players remove @s Tenacity 10
        execute as @a run scoreboard players operation @s Tenacity /= #const.8 value
            execute as @a run scoreboard players set @s[scores={Tenacity=..-1}] Tenacity 0
        scoreboard players add @a Tenacity 12
            execute as @a run scoreboard players operation @s[tag=Vitality_feat_3] Tenacity *= #const.3 value
            execute as @a[tag=Vitality_feat_3] run function math:round {score:Tenacity,round:2,reduce:true}

execute as @a[tag=Vitality_feat_1] run scoreboard players operation @s Fortitude = @s Tenacity
    execute as @a run scoreboard players operation @s Fortitude /= #const.2 value
    scoreboard players remove @a Fortitude 2
    
# scoreboard players set @a[tag=!Vitality_feat_1] Tenacity 0
scoreboard players set @a[tag=!Vitality_feat_1] Fortitude 0

# scoreboard players set @a Potential 300
# scoreboard players set @a Prowess 40
execute as @a run function echoes:stats/attribute_set

# attribute default / attribute set
execute as @a[scores={SoftRestOrRespawn=0}] run function echoes:stats/attribute_default

# attribute stats
execute as @a run scoreboard players operation @s str_attributes = @s Strength
execute as @a run scoreboard players operation @s dex_attributes = @s Dexterity
execute as @a run scoreboard players operation @s mind_attributes = @s Mind
execute as @a run scoreboard players operation @s vit_attributes = @s Vitality
execute as @a run scoreboard players operation @s tact_attributes = @s Tact
execute as @a run scoreboard players operation @s soul_attributes = @s Soul

# scale changes
execute as @a run attribute @s max_health modifier remove scale.max_health
execute as @a run attribute @s step_height modifier remove scale.step_height
execute as @a run attribute @s entity_interaction_range modifier remove scale.entity_interaction_range
execute as @a run attribute @s block_interaction_range modifier remove scale.block_interaction_range
execute as @a run attribute @s gravity modifier remove scale.gravity
execute as @a run attribute @s fall_damage_multiplier modifier remove scale.fall_damage_multiplier
execute as @a run attribute @s jump_strength modifier remove scale.jump_strength
execute as @a run attribute @s movement_speed modifier remove scale.movement_speed
# execute as @a run attribute @s air_drag_modifier modifier remove scale.air_drag_modifier

execute as @a store result score @s generic_h run attribute @s scale get 1000
execute as @a run scoreboard players remove @s generic_h 1000
execute if score $sse.gamerule.scale_attributes true matches 1 as @a unless score @s generic_h matches -150..150 run function echoes:stats/scale_attribute/_main {score:generic_h}

execute as @a run scoreboard players operation @s generic_h /= #const.5 value
execute as @a run function math:round {score:generic_h,round:10,reduce:true}
execute as @a run scoreboard players operation @s Strength += @s generic_h
execute as @a run scoreboard players operation @s Dexterity += @s generic_h

# movement stats
# scoreboard players set @a SurgeSprintThreshold 115
# execute as @a run scoreboard players operation @s generic_a = @s Dexterity
# execute as @a run scoreboard players operation @s generic_a /= #const.2 value
# execute as @a run scoreboard players operation @s SurgeSprintThreshold -= @s Dexterity

scoreboard players set @a SurgeSprintThreshold 200
execute as @a run scoreboard players operation @s SurgeSprintThreshold -= @s Dexterity
scoreboard players set @a[scores={SurgeSprintThreshold=..59}] SurgeSprintThreshold 60