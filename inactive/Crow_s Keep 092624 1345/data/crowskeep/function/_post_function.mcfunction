scoreboard players remove @a[scores={Chamber_Cooldown=1..}] Chamber_Cooldown 1
scoreboard players set @a[scores={TimeSinceDeath=0}] ChrResetTimer 0
scoreboard players add @a[scores={TimeSinceDeath=1..}] ChrResetTimer 1

execute as @a[tag=!chr_Elise] run attribute @s minecraft:player.block_interaction_range modifier remove chr_elise_block_reach

# # parryless distant counter
# execute as @a[scores={species=019,species019-03=..-1,DamageTaken=1..}] at @s on attacker if entity @s[type=player,scores={OnGround=1}] as @p[distance=0] run function urid:fetch
# execute as @a[scores={species=019,species019-03=..-1,DamageTaken=1..}] at @s on attacker if entity @s[type=player,scores={OnGround=1}] run scoreboard players operation @s urid = @p[distance=0] urid
# execute as @a[scores={species=019,species019-03=..-1,DamageTaken=1..}] at @s on attacker if entity @s[type=player,scores={OnGround=1}] as @p[distance=0] run function ss_species:s_019f_dcplayer with entity @s

# execute as @a[scores={species=019,species019-03=..-1,DamageTaken=1..}] on attacker if entity @s[type=!player,nbt={OnGround:1b}] at @s anchored eyes positioned ^ ^ ^-2 positioned ~ ~-1 ~ on target if block ~ ~ ~ #ss_library:nonsolidblocks run function ss_species:s_019f_distantcounter