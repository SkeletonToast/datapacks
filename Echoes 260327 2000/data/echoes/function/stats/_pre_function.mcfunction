# Initiative - the modifier for enemy in-combat time
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative = @s Tact
execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= @s 10
    execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= @s 10
        execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative *= @s 10
# execute as @a[scores={DamageDealt=1..}] run scoreboard players operation @s Initiative += @s DamageDealt

# Unsigning Stats
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