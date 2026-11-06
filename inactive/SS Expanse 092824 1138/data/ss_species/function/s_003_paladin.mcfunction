# maybe add something so that Paladins only gain increased looting in their particular dimensions, or if they start the Raid they're fighting in.

# /give @p minecraft:player_head{SkullOwner:{Id:[I;-1889899166,1589330091,-1510589714,993597436],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTcyMzJiMmQyZTYxODA3NmNkNjIwZTM1MjQ0NWQ0YTE2MzgyZmRiMjRiY2ZhZmJhN2FjY2VlYzBjMTQ2ZDJmNiJ9fX0="}]}}} 1
# /give @p minecraft:player_head{SkullOwner:{Id:[I;403566573,-1851964924,-1858692483,511899189],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjNkYjM1M2QzYzAyODg3MWMwZmFlMGNkMGU3NmE2NWIzOTU3OTU5YmNhMThkMDY1YjY3ZjkxMTdiYWQxOWQ4NCJ9fX0="}]}}} 1
# 01 = zombie
# 02 = skeleton
# 03 = creeper
# 04 = drowned
# 05 = wither skel
# 06 = pillager
# 07 = vindicator
# 08 = evoker
# 09 = ravager
# 11 = zombie pigman
# 12 = piglin
# 13 = enderman
# 14 = shulker
# 15 = dragon
# 16 = wither
# 20 = eaten flesh

execute as @e[type=iron_golem] at @s if entity @a[scores={species=003},distance=..100] store result score @s xcoord run data get entity @s Pos[0]
execute as @e[type=iron_golem] at @s if entity @a[scores={species=003},distance=..100] store result score @s ycoord run data get entity @s Pos[1]
execute as @e[type=iron_golem] at @s if entity @a[scores={species=003},distance=..100] store result score @s zcoord run data get entity @s Pos[2]

scoreboard players set @a[scores={species=003}] ability006 1
scoreboard players set @a[scores={species=003}] ability014 1
tag @a[scores={species=003}] add UnlockedParrying
execute as @a[scores={species=003}] if score @s ParryCharges < @s ParryChargeMax run scoreboard players add @s ParryCharges 2

tag @a remove PaladinHarnessMainhand
tag @a remove PaladinHarnessOffhand
tag @a remove PaladinHarness
tag @a[scores={species=003},tag=!PaladinHarnessMainhand,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["species003"]}}}}] add PaladinHarnessMainhand
tag @a[scores={species=003},tag=!PaladinHarnessOffhand,nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{Tags:["species003"]}}}]}] add PaladinHarnessOffhand
tag @a[tag=PaladinHarnessMainhand] add PaladinHarness
tag @a[tag=PaladinHarnessOffhand] add PaladinHarness

effect clear @a[scores={species=003},nbt={Inventory:[{Slot:103b,id:"minecraft:wither_skeleton_skull"}]}] wither

# mob weakening
execute at @a[scores={species=003}] as @e[distance=..10,type=#ss_library:hostile] at @s on target if entity @s[scores={species=003}] as @n[type=#ss_library:hostile,distance=0] run function ss_statuses:hesitant {"multiplier":"0.3"}
execute at @a[scores={species=003}] as @e[distance=..10,type=#ss_library:hostile] at @s on target if entity @s[scores={species=003}] as @n[type=#ss_library:hostile,distance=0] run scoreboard players add @s encumbered_amount 20
execute at @a[scores={species=003}] at @n[type=minecraft:iron_golem,distance=..30] as @e[distance=..10,type=#ss_library:hostile] at @s on target if entity @s[scores={species=003}] as @n[type=#ss_library:hostile,distance=0] run function ss_statuses:hesitant {"multiplier":"0.3"}
execute at @a[scores={species=003}] at @n[type=minecraft:iron_golem,distance=..30] as @e[distance=..10,type=#ss_library:hostile] at @s on target if entity @s[scores={species=003}] as @n[type=#ss_library:hostile,distance=0] run scoreboard players add @s encumbered_amount 20

# golem link calculation
execute as @a[scores={species=003}] at @s if entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players add @s species003-21 1
execute as @a[scores={species=003}] at @s unless entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players remove @s species003-21 1
execute as @a[scores={species=003,species003-21=..-1}] at @s if entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players set @s species003-21 0
execute as @a[scores={species=003,species003-21=1..}] at @s unless entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players set @s species003-21 0
execute as @e[type=iron_golem] at @s if entity @a[scores={species=003},distance=..30] run scoreboard players set @s species003-21 1
execute as @e[type=iron_golem] at @s unless entity @a[scores={species=003},distance=..30] run scoreboard players set @s species003-21 -1

execute at @a[scores={species=003,DamageDealt=1..},tag=PaladinHarnessMainhand] as @e[distance=..5,type=iron_golem] at @s on attacker if entity @s[scores={species=003,DamageDealt=1..},tag=PaladinHarnessMainhand] run function ss_species:s_003f_prepare_golem_for_egg

# golem link (w/crouching)
    # execute as @a[scores={species=003}] unless entity @s[predicate=ss_library:is_sneaking] at @s if entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players add @s species003-21 1
    # execute as @a[scores={species=003},predicate=ss_library:is_sneaking,tag=PaladinHarness] at @s if entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players add @s species003-21 1
    # execute as @a[scores={species=003}] at @s unless entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players remove @s species003-21 1
    # execute as @a[scores={species=003,species003-21=..-1}] unless entity @s[predicate=ss_library:is_sneaking] at @s if entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players set @s species003-21 0
    # execute as @a[scores={species=003,species003-21=..-1},predicate=ss_library:is_sneaking,tag=PaladinHarness] at @s if entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players set @s species003-21 0
    # execute as @a[scores={species=003,species003-21=1..}] at @s unless entity @e[distance=..30,type=minecraft:iron_golem] run scoreboard players set @s species003-21 0
    # scoreboard players set @a[scores={species=003,species003-21=1..},predicate=ss_library:is_sneaking,tag=!PaladinHarness] species003-21 0
    # scoreboard players remove @a[scores={species=003},predicate=ss_library:is_sneaking,tag=!PaladinHarness] species003-21 1
    # execute as @e[type=iron_golem] at @s if entity @a[scores={species=003},distance=..30] run scoreboard players set @s species003-21 1
    # execute as @e[type=iron_golem] at @s unless entity @a[scores={species=003},distance=..30] run scoreboard players set @s species003-21 -1

# golem link display
title @a[scores={species003-21=1}] actionbar [{"text":"Golem Link activated.","color":"gold"}]
execute as @a[scores={species003-21=1}] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-1 ~ run function ss_particles:paladin {"count":"30","visibility":"@p"}
execute as @a[scores={species003-21=1}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1
title @a[scores={species003-21=-1}] actionbar [{"text":"Golem Link deactivated.","color":"#ff6600"}]
execute as @a[scores={species003-21=-1}] at @s anchored eyes positioned ^ ^ ^ run function ss_particles:paladin_link_deactivate {"count":"60","visibility":"@p"}
execute as @a[scores={species003-21=-1}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.1 0.7

# golem link effects
execute as @a[scores={species003-21=1..}] run function ss_statuses:aggressive {"multiplier":"0.1"}
execute as @a[scores={species003-21=1..}] run function ss_statuses:fortified {"multiplier":"0.1"}
execute as @a[scores={species003-21=1..}] run function ss_statuses:satiated
    # team join Golems @e[type=minecraft:iron_golem]
execute as @a[scores={species=003}] at @s as @n[type=minecraft:iron_golem,distance=..30] run function ss_statuses:invigorated {"duration":"1","amplifier":"0"}
execute as @a[scores={species=003}] at @s as @n[type=minecraft:iron_golem,distance=..30] run function ss_statuses:fortified {"multiplier":"1"}

execute as @a[scores={species=003}] unless entity @s[predicate=ss_library:is_hiding] at @s at @n[type=minecraft:iron_golem,distance=..30] run function ss_particles:paladin {"count":"2","visibility":"@a"}
execute as @a[scores={species=003}] unless entity @s[predicate=ss_library:is_hiding] at @s if entity @n[type=minecraft:iron_golem,distance=..30] run function ss_particles:paladin {"count":"1","visibility":"@a[distance=1..]"}
execute as @a[scores={species=003},predicate=ss_library:is_hiding,tag=PaladinHarness] at @s at @n[type=minecraft:iron_golem,distance=..30] run function ss_particles:paladin {"count":"2","visibility":"@a"}
execute as @a[scores={species=003},predicate=ss_library:is_hiding,tag=PaladinHarness] at @s if entity @n[type=minecraft:iron_golem,distance=..30] run function ss_particles:paladin {"count":"1","visibility":"@a[distance=1..]"}

# golem teleportation
execute as @a[scores={species=003},tag=PaladinHarness] at @s unless entity @e[type=iron_golem,distance=..100] run title @s actionbar {"text":"No golem is within 100 meters.","color":"#ff6600"}
execute as @a[scores={species=003},tag=PaladinHarness] at @s if entity @e[type=iron_golem,distance=..100] unless entity @e[type=iron_golem,distance=..50] run title @s actionbar [{"text":"No golem is within 50 meters. The nearest golem within 100 meters is at ","color":"#ff6600"},{"score":{"name":"@n[type=iron_golem]","objective":"xcoord"},"color":"gold"},{"text":", ","color":"#ff6600"},{"score":{"name":"@n[type=iron_golem]","objective":"ycoord"},"color":"green"},{"text":", ","color":"#ff6600"},{"score":{"name":"@n[type=iron_golem]","objective":"zcoord"},"color":"blue"}]

execute as @a[scores={species=003,SingleSneakTime=..40},tag=PaladinHarnessOffhand] unless entity @s[predicate=ss_library:is_sneaking] at @s if entity @e[type=iron_golem,distance=..50] run title @s actionbar [{"text":"Golem detected within 50 meters. Crouch to summon the nearest golem ","color":"gold"},{"text":"to you","color":"yellow"},{"text":".","color":"gold"}]
execute as @a[scores={species=003,SingleSneakTime=..40},tag=PaladinHarnessOffhand,predicate=ss_library:is_sneaking] at @s if entity @e[type=iron_golem,distance=..50] run title @s actionbar [{"text":"Summoning golem...","bold":true,"color":"gold"}]
execute as @a[scores={species=003,SingleSneakTime=40},tag=PaladinHarnessOffhand] at @s if entity @e[type=iron_golem,distance=..50] if block ~ ~2 ~ #ss_library:nonsolidblocks run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1
execute as @a[scores={species=003,SingleSneakTime=40},tag=PaladinHarnessOffhand] at @s if entity @e[type=iron_golem,distance=..50] if block ~ ~2 ~ #ss_library:nonsolidblocks run tp @n[type=iron_golem] @s
execute as @a[scores={species=003,SingleSneakTime=40},tag=PaladinHarnessOffhand] at @s if entity @e[type=iron_golem,distance=..50] unless block ~ ~2 ~ #ss_library:nonsolidblocks run title @s actionbar [{"text":"Summon failed. Not enough open space.","color":"#ff6600"}]
execute as @a[scores={species=003,SingleSneakTime=40},tag=PaladinHarnessOffhand] at @s if entity @e[type=iron_golem,distance=..50] unless block ~ ~2 ~ #ss_library:nonsolidblocks run playsound entity.enderman.teleport master @s ~ ~ ~ 1 0.5

execute as @a[scores={species=003},tag=PaladinHarnessMainhand] unless entity @s[predicate=ss_library:is_sneaking] at @s if entity @e[type=iron_golem,distance=..50] run title @s actionbar [{"text":"Golem detected within 50 meters. Crouch to ","color":"gold"},{"text":"teleport to","color":"yellow"},{"text":" the nearest golem.","color":"gold"}]
execute as @a[scores={species=003},tag=PaladinHarnessMainhand,predicate=ss_library:is_sneaking] at @s if entity @e[type=iron_golem,distance=..50] run title @s actionbar [{"text":"Teleporting to golem...","bold":true,"color":"gold"}]
execute as @a[scores={species=003,SingleSneakTime=40},tag=PaladinHarnessMainhand] at @s if entity @e[type=iron_golem,distance=..50] run tp @s @n[type=iron_golem]
execute as @a[scores={species=003,SingleSneakTime=40},tag=PaladinHarnessMainhand] at @s if entity @e[type=iron_golem,distance=..50] run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1

execute at @a[scores={species=003,SingleSneakTime=1},tag=PaladinHarness] if entity @e[type=iron_golem,distance=..50] run function ss_particles:paladin_link
execute at @a[scores={species=003,SingleSneakTime=1},tag=PaladinHarness] if entity @e[type=iron_golem,distance=..50] run playsound block.beacon.deactivate player @s ~ ~ ~ 0.7 0.7
execute at @a[scores={species=003,SingleSneakTime=1},tag=PaladinHarness] if entity @e[type=iron_golem,distance=..50] as @n[type=iron_golem] at @s run function ss_particles:paladin_link

execute as @a[scores={species=003,SingleSneakTime=1..40},tag=PaladinHarness] at @s if entity @e[type=iron_golem,distance=..50] run function ss_statuses:immobilized

# golem pacification
execute as @a[scores={species=003}] at @s if entity @e[type=minecraft:iron_golem,distance=..10] run function ss_species:s_003f_golem_pacification with entity @s

# mob killing effects
give @a[scores={species=003,species003-01=1..}] minecraft:rotten_flesh 4
give @a[scores={species=003,species003-01=1..}] minecraft:iron_ingot 1
give @a[scores={species=003,species003-02=1..}] minecraft:bone 2
give @a[scores={species=003,species003-03=1..}] minecraft:gunpowder 4
give @a[scores={species=003,species003-04=20..}] minecraft:trident[damage=249] 1
give @a[scores={species=003,species003-05=1..}] minecraft:wither_skeleton_skull
effect clear @a[scores={species=003,species003-05=1..}] minecraft:wither
give @a[scores={species=003,species003-06=1..}] minecraft:emerald 4
give @a[scores={species=003,species003-07=1..}] minecraft:emerald 16
give @a[scores={species=003,species003-08=1..}] minecraft:totem_of_undying
effect give @a[scores={species003-09=1}] minecraft:absorption 300 4
# execute as @a[scores={species003-10=1..}] at @s as @p[scores={species=003},distance=..100] run function ss_species:s_003f_givegolemegg {"CustomName":"Paladin Golem","health":"150","itemname":"Paladin Golem Egg","tag":"paladin_golem"}
give @a[scores={species=003,species003-11=1..}] minecraft:gold_ingot
give @a[scores={species=003,species003-12=1..}] minecraft:gold_ingot
give @a[scores={species=003,species003-13=1..}] minecraft:ender_pearl
give @a[scores={species=003,species003-14=1..}] minecraft:shulker_shell

# rotten flesh effects
tellraw @a[scores={species003-20=1,species003-22=..0}] [{"text":"Fueled by the flesh of your enemy, you are immune to hunger, poison, and slowness for the following minute.","color":"green"}]
scoreboard players set @a[scores={species=003,species003-20=1}] species003-22 1200
effect give @a[scores={species003-22=1199}] minecraft:regeneration 1 3 true
effect clear @a[scores={species003-22=1..}] minecraft:hunger
effect clear @a[scores={species003-22=1..}] minecraft:poison
effect clear @a[scores={species003-22=1..}] minecraft:slowness
scoreboard players remove @a species003-22 1

clear @a[scores={species=003,SoftRestOrRespawn=2}] iron_nugget[custom_data={quick_destroy:true,Tags:["species003"]}]
execute as @a[scores={species=003,SoftRestOrRespawn=2}] run function ss_species:s_003f_givegolemharness