# Initiative - the modifier for enemy in-combat time
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative = @s Tact
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= @s 10
    execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= @s 10
        execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= @s 10
# execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative += @s DamageDealt

# Unsigning Stats
execute as @a run scoreboard players operation @s Strength = @s BaseStrength
execute as @a run scoreboard players operation @s Dexterity = @s BaseDexterity
execute as @a run scoreboard players operation @s Mind = @s BaseMind
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
scoreboard players set @a[scores={Age=1}] Strength 7
scoreboard players set @a[scores={Age=1}] Dexterity 7
scoreboard players set @a[scores={Age=1}] MindSigned 7
scoreboard players set @a[scores={Age=1}] Resolve 7
scoreboard players set @a[scores={Age=1}] Vitality 7
scoreboard players set @a[scores={Age=1}] Tact 7
scoreboard players set @a[scores={Age=1}] SoulSigned 7

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

# modifiers
    # execute as @a run scoreboard players operation @s Strength -= @s StrengthModifier
    # execute as @a run scoreboard players operation @s Dexterity -= @s DexterityModifier
    # execute as @a run scoreboard players operation @s Mind -= @s MindModifier
    # execute as @a run scoreboard players operation @s Tact -= @s TactModifier
    # execute as @a run scoreboard players operation @s Resolve -= @s ResolveModifier
    # execute as @a run scoreboard players operation @s Soul -= @s SoulModifier

    # scoreboard players set @a StrengthModifier 0
    # scoreboard players set @a DexterityModifier 0
    # scoreboard players set @a MindModifier 0
    # scoreboard players set @a TactModifier 0
    # scoreboard players set @a ResolveModifier 0
    # scoreboard players set @a SoulModifier 0