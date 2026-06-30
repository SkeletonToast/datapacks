scoreboard players enable SkeletonToast timeDilation
scoreboard players enable SkeletonToast smoothSprinting
scoreboard players enable SkeletonToast variantMonsters
scoreboard players enable SkeletonToast creativeEncumbrance
scoreboard players enable SkeletonToast combatJumpScaling
scoreboard players enable SkeletonToast ambientParticles
scoreboard players enable SkeletonToast incrementalProficiencyScaling
scoreboard players enable SkeletonToast hungryDamageReduction
scoreboard players enable @a aegisSelfVisibility
scoreboard players enable @a tactCameraDistance

execute as @a[scores={timeDilation=-1..}] run function ec_dev:gamerule/time_dilation
execute as @a[scores={timeDilation=0..}] store result score $timeDilation true run data get storage gamerule_time_dilation toggle
execute as @a[scores={timeDilation=0..}] run data get storage gamerule_time_dilation toggle
scoreboard players set @a timeDilation -2

execute as @a[scores={variantMonsters=-1..}] run function ec_dev:gamerule/variant_monsters
execute as @a[scores={variantMonsters=0..}] store result score $variantMonsters true run data get storage gamerule_variant_monsters toggle
execute as @a[scores={variantMonsters=0..}] run data get storage gamerule_variant_monsters toggle
scoreboard players set @a variantMonsters -2

execute as @a[scores={creativeEncumbrance=-1..}] run function ec_dev:gamerule/creative_encumbrance
execute as @a[scores={creativeEncumbrance=0..}] store result score $creativeEncumbrance true run data get storage gamerule_creative_encumbrance toggle
execute as @a[scores={creativeEncumbrance=0..}] run data get storage gamerule_creative_encumbrance toggle
scoreboard players set @a creativeEncumbrance -2

execute as @a[scores={combatJumpScaling=-1..}] run function ec_dev:gamerule/combat_jump_scaling
execute as @a[scores={combatJumpScaling=0..}] store result score $combatJumpScaling true run data get storage gamerule_combat_jump_scaling toggle
execute as @a[scores={combatJumpScaling=0..}] run data get storage gamerule_combat_jump_scaling toggle
scoreboard players set @a combatJumpScaling -2

execute as @a[scores={ambientParticles=-1..}] run function ec_dev:gamerule/ambient_particles
execute as @a[scores={ambientParticles=0..}] store result score $ambientParticles true run data get storage gamerule_ambient_particles toggle
execute as @a[scores={ambientParticles=0..}] run data get storage gamerule_ambient_particles toggle
scoreboard players set @a ambientParticles -2

execute as @a[scores={incrementalProficiencyScaling=-1..}] run function ec_dev:gamerule/incremental_proficiency_scaling
execute as @a[scores={incrementalProficiencyScaling=0..}] store result score $incrementalProficiencyScaling true run data get storage gamerule_incremental_proficiency_scaling toggle
execute as @a[scores={incrementalProficiencyScaling=0..}] run data get storage gamerule_incremental_proficiency_scaling toggle
scoreboard players set @a incrementalProficiencyScaling -2

execute as @a[scores={hungryDamageReduction=-1..}] run function ec_dev:gamerule/hungry_damage_reduction
execute as @a[scores={hungryDamageReduction=0..}] store result score $hungryDamageReduction true run data get storage gamerule_hungry_damage_reduction toggle
execute as @a[scores={hungryDamageReduction=0..}] run data get storage gamerule_hungry_damage_reduction toggle
scoreboard players set @a hungryDamageReduction -2

execute as @a unless entity @s[scores={aegisSelfVisibility=0..}] run scoreboard players set @s aegisSelfVisibility 1
scoreboard players set @a[scores={aegisSelfVisibility=2..}] aegisSelfVisibility 0
scoreboard players set @a[scores={aegisSelfVisibility=..-1}] aegisSelfVisibility 0

# execute as @a[scores={smoothSprinting=-1..}] run function ec_dev:gamerule/smooth_sprinting
# execute as @a[scores={smoothSprinting=0..}] store result score $smoothSprinting true run data get storage gamerule_smooth_sprinting toggle
# execute as @a[scores={smoothSprinting=0..}] run data get storage gamerule_smooth_sprinting toggle
# scoreboard players set @a smoothSprinting -2
# scoreboard players operation @s smoothSprinting = $smoothSprinting true

execute as @a unless entity @s[scores={smoothSprinting=0..}] run scoreboard players set @s smoothSprinting 1
scoreboard players set @a[scores={smoothSprinting=2..}] smoothSprinting 0
scoreboard players set @a[scores={smoothSprinting=..-1}] smoothSprinting 0


execute as @a unless entity @s[scores={attackBuffVisibility=0..}] run scoreboard players set @s attackBuffVisibility 1
scoreboard players set @a[scores={attackBuffVisibility=2..}] attackBuffVisibility 0
scoreboard players set @a[scores={attackBuffVisibility=..-1}] attackBuffVisibility 0

scoreboard players set @a[scores={tactCameraDistance=2..}] tactCameraDistance 0
scoreboard players set @a[scores={tactCameraDistance=..-1}] tactCameraDistance 0