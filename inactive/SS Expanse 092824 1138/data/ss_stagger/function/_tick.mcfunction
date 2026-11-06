execute as @a[tag=!Staggerable] run attribute @s minecraft:generic.max_health modifier remove stagger_eligible_max_health
execute as @a[tag=!Staggerable] run attribute @s minecraft:generic.jump_strength modifier remove staggered_jump_strength
execute as @a[tag=!Staggerable] run attribute @s minecraft:generic.armor modifier remove staggered_armor
execute as @a[tag=!Staggerable] run scoreboard players set @s StaggerEligible 0
scoreboard players add @a Staggered 0

scoreboard players set @a[scores={TimeSinceDeath=0}] Staggered 0
scoreboard players set @a[scores={TimeSinceDeath=0}] StaggerEligible 1

execute as @r[tag=Staggerable] run function ss_stagger:stagger