tag @a[scores={species=026}] add Staggerable
execute as @a[scores={species=026}] run attribute @s minecraft:generic.attack_knockback base set 1
execute as @a[scores={species=026,Staggered=0,Food=..19}] if score @s Health >= @s BaseMaxHealth run effect give @s saturation 1 0 true

# give haligblade
clear @a[scores={species=026,SoftRestOrRespawn=2}] golden_sword[custom_data={quick_destroy:true,Tags:["species026"]}]
execute as @a[scores={species=026,SoftRestOrRespawn=2}] run function ss_species:s_026f_givehaligblade
    # this will have to be changed when/if veteran haligblades are added, so that you don't get given a regular haligblade when you already have a veteran haligblade

# sanctity calculation
scoreboard players set @a[scores={species=026}] species026-01 0
scoreboard players add @a[scores={species=026},predicate=ss_species:holding_golden_weapon] species026-01 1
scoreboard players add @a[scores={species=026},level=20..] species026-01 1
execute as @a[scores={species=026}] if score @s Health >= @s BaseMaxHealth run scoreboard players add @s species026-01 1

scoreboard players set @a[scores={species=026,Dimension=1,species026-01=2..}] ability015 1

# sturdy stagger, parrying, combat experience, armor bonus
scoreboard players set @a[scores={species=026,species026-01=2..}] ability017 1
tag @a[scores={species=026,species026-01=1..}] add UnlockedParrying
scoreboard players operation @a[scores={species=026,species026-01=1..}] ParryWindowMax += @s species026-01
scoreboard players remove @a[scores={species=026,species026-01=3..}] ParryMultiplier 1
scoreboard players set @a[scores={species=026},predicate=ss_species:holding_golden_weapon] trait003 1
scoreboard players operation @a[scores={species=026,DamageDealt=1..},level=..19,predicate=ss_species:holding_golden_weapon] trait003-01 += @s DamageDealt
# execute as @a[scores={species=026,species026-01=3..}] run attribute @s minecraft:generic.armor modifier add species026_armor_bonus 4 add_value
# execute as @a[scores={species=026,species026-01=2..}] run attribute @s minecraft:generic.armor modifier add species026_armor_bonus 2 add_value
execute as @a[scores={species=026,species026-01=3..}] run attribute @s minecraft:generic.armor modifier add species026_armor_bonus -2 add_value
execute as @a[scores={species=026}] unless entity @s[predicate=ss_species:holding_golden_weapon] run attribute @s minecraft:generic.armor modifier remove species026_armor_bonus
execute as @a[scores={species=026,species026-01=3..}] run attribute @s minecraft:player.sweeping_damage_ratio modifier add species026_sweeping_damage 1 add_value
execute as @a[scores={species=026}] unless entity @s[predicate=ss_species:holding_golden_weapon] run attribute @s minecraft:player.sweeping_damage_ratio modifier remove species026_sweeping_damage

# DamageDealt/Taken multiplier
scoreboard players operation @a[scores={species=026,DamageDealt=1..}] DamageDealt *= @s species026-01
scoreboard players operation @a[scores={species=026,DamageTaken=1..}] DamageTaken *= @s species026-01

# reach attribute
execute as @a[scores={species=026},predicate=ss_species:holding_golden_weapon] run attribute @s minecraft:player.entity_interaction_range modifier add species026_golden_weapon_reach 0.5 add_value
execute as @a[scores={species=026}] unless entity @s[predicate=ss_species:holding_golden_weapon] run attribute @s minecraft:player.entity_interaction_range modifier remove species026_golden_weapon_reach

# 026-02 reset
execute as @a unless entity @s[scores={species026-02=0..}] run scoreboard players add @s species026-02 0
execute at @a[scores={species=026}] as @e[type=!#ss_library:not_alive,distance=..5] unless entity @s[scores={species026-02=0..}] run scoreboard players add @s species026-02 0

# healing field
execute at @a[scores={species=026}] as @e[type=!#ss_library:not_alive,distance=..5] run scoreboard players set @s species026-03 0
scoreboard players set @a[scores={species=026},predicate=ss_species:holding_golden_weapon_offhand,predicate=ss_library:is_sneaking,level=1..] species026-03 1
execute as @a[scores={species=026,species026-03=1}] at @s if entity @e[type=!#ss_library:not_alive,distance=..4,scores={species026-03=0,species026-02=0}] run function ss_species:s_026f_healingfield
execute at @a[scores={species=026,species026-03=1}] run particle minecraft:wax_off ~ ~ ~ 2 0.5 2 0.1 1 normal @s

# healing diseligibility
execute as @a[scores={species=026,DamageTaken=1..}] on attacker if entity @s[scores={DamageDealt=1..},type=player] run scoreboard players set @s species026-02 200

# unholy mob/soulless player/ghost monarch extra damage
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @e[type=#ss_species:unholy_hostile,distance=..6] at @s on attacker if entity @s[scores={species=026}] run effect give @e[type=#ss_species:unholy_hostile,distance=..3] wither 10 1 true
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @e[type=#ss_species:unholy_hostile,distance=..6] at @s on attacker if entity @s[scores={species=026}] run effect give @e[type=#ss_species:unholy_hostile,distance=..3] slowness 10 2 true
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @e[type=#ss_species:unholy_hostile,distance=..6] at @s on attacker if entity @s[scores={species=026}] run effect give @e[type=#ss_species:unholy_hostile,distance=..3] weakness 10 0 true
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @e[type=#ss_species:unholy_hostile,distance=..6] at @s on attacker if entity @s[scores={species=026}] run function ss_particles:unholy_injury
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @e[type=#ss_species:unholy_hostile,distance=..6] at @s on attacker if entity @s[scores={species=026}] if score @s recover_timer < @s DamageDealt run scoreboard players operation @s recover_timer = @s DamageDealt
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @a[tag=Soulless,scores={species026-02=1..},distance=..6] at @s on attacker if entity @s[scores={species=026}] run effect give @p[distance=0] wither 10 0 true

execute as @a[scores={species=026,DamageDealt=1..}] at @s as @a[tag=GhostMonarch,scores={species026-02=1..},distance=..6] at @s on attacker if entity @s[scores={species=026}] run effect give @p[distance=0] wither 10 2 true

# enemy self-healing (only works on players who have healing diseligibility)
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @a[scores={DamageTaken=1..,species026-02=1..},distance=..6] at @s on attacker if entity @s[scores={species=026}] run effect give @p[distance=0] weakness 5 1 true
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @a[scores={DamageTaken=1..,species026-02=1..},distance=..6] at @s on attacker if entity @s[scores={species=026}] run effect give @p[distance=0] slowness 5 1 true
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @a[scores={DamageTaken=1..,species026-02=1..},distance=..6] at @s on attacker if entity @s[scores={species=026}] run scoreboard players operation @s recover_timer += @s DamageDealt
execute as @a[scores={species=026,DamageDealt=1..}] at @s as @a[scores={DamageTaken=1..,species026-02=1..},distance=..6] at @s on attacker if entity @s[scores={species=026}] run function ss_particles:healing_burst

# ally attack healing
execute as @a[scores={species=026,DamageDealt=1..},predicate=ss_species:holding_golden_weapon] at @s as @a[scores={DamageTaken=1..,species026-02=0},distance=..6] at @s on attacker if entity @s[scores={species=026}] run effect give @p[distance=0] resistance 3 3 true
execute as @a[scores={species=026,DamageDealt=1..},predicate=ss_species:holding_golden_weapon] at @s as @a[scores={DamageTaken=1..,species026-02=0},distance=..6] at @s on attacker if entity @s[scores={species=026}] run scoreboard players operation @p[distance=0] recover_timer += @s DamageDealt
execute as @a[scores={species=026,DamageDealt=1..},predicate=ss_species:holding_golden_weapon] at @s as @a[scores={DamageTaken=1..,species026-02=0},distance=..6] at @s on attacker if entity @s[scores={species=026}] run function ss_particles:healing_burst

scoreboard players remove @a[scores={species026-02=1..}] species026-02 1