scoreboard players set @a[scores={species=004}] ability014 1
scoreboard players set @a[scores={species=004}] ability015 1
scoreboard players set @a[scores={species=004}] ability016 1
scoreboard players set @a[scores={species=004}] ability020 1
tag @a[scores={species=004}] add UnlockedParrying
scoreboard players set @a[scores={species=004}] ParryChargeMax 350
scoreboard players add @a species004-05 0

execute as @a[scores={species=004}] run attribute @s minecraft:generic.max_health modifier add species004_max_health -4 add_value
execute as @a[scores={species=004}] run attribute @s minecraft:generic.attack_damage modifier add species004_attack_damage 2 add_value
execute as @a[scores={species=004}] run attribute @s minecraft:generic.movement_speed modifier add species004_movement_speed 0.01 add_value
execute as @a[scores={species=004}] run attribute @s minecraft:generic.scale base set 1.3

effect clear @a[scores={species=004}] wither
execute at @a[scores={species=004,species004-05=0,DamageDealt=80..}] anchored eyes run summon interaction ^ ^-0.3 ^2 {width:0.7f,height:0.7f,response:1b,Tags:["species004-01"]}
execute at @a[scores={species=004,species004-05=0,species004-02=1..}] anchored eyes run summon interaction ^ ^0 ^2 {width:0.7f,height:0.7f,response:1b,Tags:["species004-01"]}
scoreboard players set @a[scores={species=004,PlayerKilled=1..}] species004-05 0
execute at @a[scores={species=004,species004-05=0,PlayerKilled=1..}] anchored eyes run summon interaction ^ ^-0.3 ^2 {width:0.7f,height:0.7f,response:1b,Tags:["species004-01","species004-02"]}
scoreboard players set @e[type=minecraft:interaction,tag=species004-01,scores={Age=1..}] Age -200

execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s attack run kill @e[type=minecraft:interaction,tag=species004-01,distance=..3]
execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run effect give @s minecraft:speed 2 4 true
execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run effect give @s minecraft:absorption 10 0 true
execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run effect give @s minecraft:invisibility 2 0 true
execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run effect give @s minecraft:strength 2 1 true
execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] at @s run function ss_particles:arcane_fire_ring
execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run scoreboard players add @s species004-01 1
execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run scoreboard players set @s species004-05 100
execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run give @s gunpowder

execute as @e[type=minecraft:interaction,tag=species004-02] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run effect give @s minecraft:strength 10 0 true
execute as @e[type=minecraft:interaction,tag=species004-02] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run effect give @s minecraft:resistance 30 1 true
execute as @e[type=minecraft:interaction,tag=species004-02] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run effect give @s minecraft:absorption 10 2 true
execute as @e[type=minecraft:interaction,tag=species004-02] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run effect give @s minecraft:absorption 30 0 true
execute as @e[type=minecraft:interaction,tag=species004-02] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run scoreboard players set @s species004-05 -100

execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] run scoreboard players set @s[scores={ability016-03=1..}] ability016-03 1
execute as @e[type=minecraft:interaction,tag=species004-01] at @s if data entity @s interaction on target if entity @s[scores={species=004}] as @e[type=minecraft:interaction,distance=0] run kill @s
execute at @e[type=minecraft:interaction,tag=species004-01] run particle sculk_soul ~ ~ ~
execute at @e[type=minecraft:interaction,tag=species004-02] run particle soul_fire_flame ~ ~ ~

scoreboard players remove @a[scores={species004-05=1..}] species004-05 1
scoreboard players add @a[scores={species004-05=..-1}] species004-05 1
scoreboard players set @a[scores={species004-05=..-1,ability016-03=1..}] ability016-03 1

scoreboard players set @a[scores={species=004},predicate=ss_library:holding_sword] ability016-00 1
execute as @a[scores={species=004,DamageDealt=1..},predicate=ss_library:holding_axe] at @s as @e[distance=..3,scores={DamageTaken=1..}] run effect give @s minecraft:wither 3 0
execute as @a[scores={species=004,DamageDealt=1..},predicate=ss_library:holding_axe] at @s as @e[distance=..3,scores={DamageTaken=1..}] run effect give @s minecraft:wither 3 0

#arrow particles
execute as @e[type=#minecraft:arrows,scores={Age=..100}] at @s on origin if entity @s[scores={species=004}] run particle smoke ~ ~ ~

#sizzle arrows
execute as @e[type=#minecraft:arrows,tag=!ShadowbringerArrowInGround,tag=!species004-02] at @s on origin if entity @s[scores={species=004}] as @e[type=#minecraft:arrows,distance=0,nbt={inGround:1b}] as @e[distance=..2] run damage @s 2 arrow
execute as @e[type=#minecraft:arrows,tag=!ShadowbringerArrowInGround,tag=!species004-02] at @s on origin if entity @s[scores={species=004}] as @e[type=#minecraft:arrows,distance=0,nbt={inGround:1b}] run particle lava
execute as @e[type=#minecraft:arrows,tag=!ShadowbringerArrowInGround,tag=!species004-02] at @s on origin if entity @s[scores={species=004}] as @e[type=#minecraft:arrows,distance=0,nbt={inGround:1b}] run particle lava
execute as @e[type=#minecraft:arrows,tag=!ShadowbringerArrowInGround,tag=!species004-02] at @s on origin if entity @s[scores={species=004}] as @e[type=#minecraft:arrows,distance=0,nbt={inGround:1b}] run particle lava
execute as @e[type=#minecraft:arrows,tag=!ShadowbringerArrowInGround,tag=!species004-02] at @s on origin if entity @s[scores={species=004}] as @e[type=#minecraft:arrows,distance=0,nbt={inGround:1b}] run particle lava
execute as @e[type=#minecraft:arrows,tag=!ShadowbringerArrowInGround,tag=!species004-02] at @s on origin if entity @s[scores={species=004}] as @e[type=#minecraft:arrows,distance=0,nbt={inGround:1b}] run particle explosion
execute as @e[type=#minecraft:arrows,tag=!ShadowbringerArrowInGround,tag=!species004-02] at @s on origin if entity @s[scores={species=004}] as @e[type=#minecraft:arrows,distance=0,nbt={inGround:1b}] run playsound minecraft:entity.generic.burn player @a
execute as @e[type=#minecraft:arrows,tag=!species004-02] at @s on origin if entity @s[scores={species=004}] as @e[type=#minecraft:arrows,distance=0,nbt={inGround:1b}] run tag @s add ShadowbringerArrowInGround

# explosive arrows
execute as @e[type=#minecraft:arrows,scores={Age=1}] at @s on origin if entity @s[scores={species=004},predicate=ss_library:holding_crossbow,nbt={Inventory:[{id:"minecraft:gunpowder"}]}] as @e[type=#minecraft:arrows,distance=0] run function ss_species:s_004f_croucharrowassignment
clear @a[scores={species=004},tag=ExplosiveArrowFired] gunpowder 1
tag @a[scores={species=004},tag=ExplosiveArrowFired] remove ExplosiveArrowFired
execute as @e[type=#minecraft:arrows,tag=species004-02] run function ss_species:s_004f_croucharrow

# execute as @a[scores={species=004,DamageDealt=1..},predicate=ss_species:holding_wooden_weapon] at @s anchored eyes if block ^ ^ ^7 #ss_library:nonsolidblocks run tp @s ^ ^ ^7 ~180 ~
# scoreboard players set @a[scores={species=004},predicate=ss_species:holding_stone_weapon] ability016-00 1
# execute as @a[scores={species=004,DamageDealt=1..},predicate=ss_species:holding_iron_weapon] at @s run effect give @a[distance=..20,predicate=ss_species:wearing_diamond_or_netherite_armor] weakness 1 0 true
# scoreboard players set @a[scores={species=004},predicate=ss_species:holding_golden_weapon] ability020-00 1
# scoreboard players set @a[scores={species=004,Health=..2},predicate=ss_species:holding_diamond_weapon] recover_timer 1
# effect give @a[scores={species=004,Health=..2},predicate=ss_species:holding_diamond_weapon] slowness 1 2 true
# effect give @a[scores={species=004,Health=..2},predicate=ss_species:holding_diamond_weapon] mining_fatigue 1 2 true
# execute as @a[scores={species=004,DamageDealt=1..},predicate=ss_species:holding_netherite_weapon] at @s as @e[distance=..5,scores={DamageTaken=1..}] run effect give @s minecraft:wither 3 0

# wither rose
execute as @a[scores={species=004}] at @s if block ~ ~ ~ wither_rose run scoreboard players add @s species004-04 1
effect give @a[scores={species=004,species004-04=100..}] instant_health 1 0 true
scoreboard players set @a[scores={species=004,species004-04=100..}] species004-04 0

# hurt sound
execute at @a[scores={species=005,DamageTaken=100..}] run playsound minecraft:entity.warden.hurt neutral @a ~ ~ ~

# team
team join Shadowbringers @a[scores={species=004}]
team join Shadowbringers @e[type=wither_skeleton]

# shadowbringer sword give
# execute as @a[tag=!chr_Orion,scores={species=004,SoftTimeSinceDeath=2}] run function ss_species:s_004f_givesoldiersword

scoreboard players set @a[scores={species004-02=1..}] species004-02 0