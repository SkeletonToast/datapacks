scoreboard players set @a[scores={species=009}] ability010 1
scoreboard players set @a[scores={species=009}] class007 1

effect give @a[scores={species=009,Food=..19},predicate=ss_species:on_mushroom_island] saturation 1 0 true
execute as @a[scores={species=009},predicate=ss_species:on_mushroom_island] run function ss_statuses:invigorated {"duration":"1","amplifier":"1"}

effect give @a[scores={species=009,Food=..19},predicate=ss_species:in_caves] saturation 1 0 true
execute as @a[scores={species=009},predicate=ss_species:in_caves] run function ss_statuses:invigorated {"duration":"1","amplifier":"0"}

effect clear @a[scores={species=009}] hunger
effect clear @a[scores={species=009}] poison

# mushrooms at feet
scoreboard players add @a species009-04 1
execute as @a[scores={species=009,species009-04=155..200,Food=20..,OnGround=1}] if score @s Health >= @s BaseMaxHealth at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ red_mushroom keep
execute as @a[scores={species=009,species009-04=155..200,Food=20..,OnGround=1}] if score @s Health >= @s BaseMaxHealth at @s if block ~ ~-1 ~ podzol run fill ~ ~ ~ ~ ~ ~ red_mushroom keep
execute as @a[scores={species=009,species009-04=155..200,Food=20..,OnGround=1}] if score @s Health >= @s BaseMaxHealth at @s if block ~ ~-1 ~ mycelium run fill ~ ~ ~ ~ ~ ~ red_mushroom keep
execute as @a[scores={species=009,species009-04=155..200,Food=20..,OnGround=1}] if score @s Health >= @s BaseMaxHealth run scoreboard players set @s species009-04 156

execute as @a[scores={species=009,species009-04=300..400,Food=20..,OnGround=1}] if score @s Health >= @s BaseMaxHealth at @s if block ~ ~-1 ~ grass_block run fill ~ ~ ~ ~ ~ ~ brown_mushroom keep
execute as @a[scores={species=009,species009-04=300..400,Food=20..,OnGround=1}] if score @s Health >= @s BaseMaxHealth at @s if block ~ ~-1 ~ podzol run fill ~ ~ ~ ~ ~ ~ brown_mushroom keep
execute as @a[scores={species=009,species009-04=300..400,Food=20..,OnGround=1}] if score @s Health >= @s BaseMaxHealth at @s if block ~ ~-1 ~ mycelium run fill ~ ~ ~ ~ ~ ~ brown_mushroom keep
execute as @a[scores={species=009,species009-04=300..400,Food=20..,OnGround=1}] if score @s Health >= @s BaseMaxHealth run scoreboard players set @s species009-04 301

scoreboard players set @a[scores={species009-04=401..}] species009-04 0

# myconid healing - needs testing
execute as @a[scores={species=009}] unless entity @s[scores={species009-07=1..}] at @s if block ~ ~-1 ~ mycelium run scoreboard players set @s species009-07 101
execute as @a[scores={species=009}] at @s run scoreboard players add @e[scores={species=009},distance=..30] species009-06 1
execute as @e[type=mooshroom] at @s run scoreboard players add @e[scores={species=009},distance=..10] species009-06 1
execute as @a[scores={species=009,species009-06=5..}] unless entity @s[scores={species009-07=1..}] run scoreboard players set @s species009-07 61
execute as @a[scores={species=009,species009-06=3..}] unless entity @s[scores={species009-07=1..}] run scoreboard players set @s species009-07 81
execute as @a[scores={species=009,species009-06=2..}] unless entity @s[scores={species009-07=1..}] run scoreboard players set @s species009-07 101
scoreboard players remove @a[scores={species009-07=1..}] species009-07 1
effect give @a[scores={species009-07=1}] minecraft:regeneration 1 4 true
scoreboard players set @a[scores={species009-06=1..}] species009-06 0

effect give @a[scores={species009-01=1..}] minecraft:regeneration 1 3 true
effect give @a[scores={species009-01=1..}] saturation 1 3 true

effect give @a[scores={species009-02=1..}] minecraft:regeneration 1 4 true
effect give @a[scores={species009-02=1..}] resistance 30 0 true
effect give @a[scores={species009-02=1..}] haste 60 1 true

# spore cloud
execute as @a[scores={species=009,DamageTaken=1..,species009-08=0}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:"spore_blossom_air"},Radius:2.5f,RadiusPerTick:-0.01f,Duration:100,potion_contents:{custom_color:6503524,custom_effects:[{id:"minecraft:slowness",amplifier:1,duration:100,show_particles:1b},{id:"minecraft:mining_fatigue",amplifier:1,duration:100,show_particles:1b},{id:"minecraft:weakness",amplifier:1,duration:100,show_particles:1b}]}}
execute as @a[scores={species=009,DamageTaken=1..}] unless entity @s[scores={species009-08=1..}] run scoreboard players set @s species009-05 100
execute as @a[scores={species=009,DamageTaken=1..}] unless entity @s[scores={species009-08=1..}] run scoreboard players set @s species009-08 300
scoreboard players remove @a[scores={species009-05=1..}] species009-05 1
execute as @a[scores={species=009,species009-05=1..}] unless entity @s[scores={Staggered=1}] run effect clear @s slowness
execute as @a[scores={species=009,species009-05=1..}] unless entity @s[scores={Staggered=1}] run effect clear @s mining_fatigue

scoreboard players set @a[scores={species009-01=1..}] species009-01 0
scoreboard players set @a[scores={species009-02=1..}] species009-02 0
scoreboard players remove @a[scores={species009-08=1..}] species009-08 1

# myconid nodes
execute as @a[scores={species=009,SoftRestOrRespawn=2}] run function ss_species:s_009f_givenode
execute at @a[scores={species=009,SingleSneakTime=30},nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["species009"]}}}}] as @e[distance=..1,tag=MyconidNode] run function ss_species:s_009f_summonnodeitem
execute at @a[scores={species=009},predicate=ss_library:is_sneaking,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["species009"]}}}}] at @e[distance=..1,tag=MyconidNode] positioned ~ ~-0.6 ~ run function ss_particles:fire_ring