# unencumbered proficiency
execute as @a[scores={Class=1,encumbrance=..20},tag=InCombat] run scoreboard players operation @s proficiency -= @s encumbrance
execute as @a[scores={Class=1,encumbrance=21..},tag=InCombat] run scoreboard players remove @s proficiency 30

# out of combat evasion calculation
execute as @a[scores={Class=1,in_combat=0}] run scoreboard players operation @s foudroyant_evasion = @s Dexterity
    scoreboard players remove @a[scores={Class=1,in_combat=0}] foudroyant_evasion 20
    scoreboard players set @a[scores={Class=1,foudroyant_evasion=..-1}] foudroyant_evasion 0

# in-combat evasion calculation
scoreboard players add @a[scores={Class=1,DamageDealt=1..}] foudroyant_evasion 2
scoreboard players remove @a[scores={Class=1,DamageTaken=1..}] foudroyant_evasion 3
execute as @a[scores={Class=1,DamageDealt=1..},tag=InCombat] at @s positioned ~ ~0.2 ~ run function ss_lib:particles/electric_spark_ring

# evasion apply
execute as @a[scores={Class=1}] run attribute @s armor modifier remove foudroyant.evasion.armor
execute as @a[scores={Class=1,foudroyant_evasion=1..,Armorless=1},tag=InCombat] run function parse:score_unended \
    {"score":"foudroyant_evasion","function":"echoes:classes/foudroyant/evasion_armor_apply"}

# blitz
execute as @a[scores={Class=1,foudroyant_blitz_cooldown=0,Food=7..,OnGround=1},predicate=ss_lib:input/sprint,tag=InCombat] run scoreboard players set @s foudroyant_blitz_cooldown -5
execute as @a[scores={Class=1,foudroyant_blitz_cooldown=..-1}] run function echoes:classes/foudroyant/blitz
    scoreboard players set @a[scores={Class=1,foudroyant_blitz_cooldown=-1}] generic_c 70
    execute as @a[scores={Class=1,foudroyant_blitz_cooldown=-1}] run scoreboard players operation @s generic_c -= @s Dexterity
    execute as @a[scores={Class=1,foudroyant_blitz_cooldown=-1}] run scoreboard players operation @s foudroyant_blitz_cooldown = @s generic_c
execute as @a[scores={Class=1,foudroyant_blitz_cooldown=0..}] run function echoes:classes/foudroyant/blitz_attribute_remove

scoreboard players add @a[scores={foudroyant_blitz_cooldown=..-1}] foudroyant_blitz_cooldown 1
scoreboard players remove @a[scores={foudroyant_blitz_cooldown=1..}] foudroyant_blitz_cooldown 1
title @a[scores={foudroyant_blitz_cooldown=1}] actionbar {"text":"+ Blitz recharged. +","color":"yellow"}
execute as @a[scores={foudroyant_blitz_cooldown=1}] run function sounds:ability_recharge