function ss_abilities:_abilities

scoreboard players set @a[scores={ability009-01=1..}] ability009-01 0
scoreboard players set @a[scores={ability009-02=1..}] ability009-02 0
scoreboard players set @a[scores={ability009-03=1..}] ability009-03 0
scoreboard players set @a[scores={ability009-04=1..}] ability009-04 0
scoreboard players set @a[scores={ability009-05=1..}] ability009-05 0
scoreboard players set @a[scores={ability009-06=1..}] ability009-06 0
scoreboard players set @a[scores={ability009-07=1..}] ability009-07 0
scoreboard players set @a[scores={ability009-08=1..}] ability009-08 0
scoreboard players set @a[scores={ability009-09=1..}] ability009-09 0
scoreboard players set @a[scores={ability009-10=1..}] ability009-10 0

scoreboard players set @a[scores={ability010-01=1..}] ability010-01 0
scoreboard players set @a[scores={ability010-02=1..}] ability010-02 0
scoreboard players set @a[scores={ability010-03=1..}] ability010-03 0
scoreboard players set @a[scores={ability010-04=1..}] ability010-04 0
scoreboard players set @a[scores={ability010-05=1..}] ability010-05 0
scoreboard players set @a[scores={ability010-06=1..}] ability010-06 0
scoreboard players set @a[scores={ability010-07=1..}] ability010-07 0
scoreboard players set @a[scores={ability010-08=1..}] ability010-08 0
scoreboard players set @a[scores={ability010-09=1..}] ability010-09 0
scoreboard players set @a[scores={ability010-10=1..}] ability010-10 0

scoreboard players set @a[scores={ability011-01=1..}] ability011-01 0
scoreboard players set @a[scores={ability011-02=1..}] ability011-02 0
scoreboard players set @a[scores={ability011-03=1..}] ability011-03 0
scoreboard players set @a[scores={ability011-04=1..}] ability011-04 0
scoreboard players set @a[scores={ability011-05=1..}] ability011-05 0
scoreboard players set @a[scores={ability011-06=1..}] ability011-06 0

execute as @a[scores={ability001=0}] run attribute @s minecraft:generic.safe_fall_distance modifier remove ability001_safe_fall_distance

execute as @a[scores={ability002=0}] run attribute @s minecraft:generic.jump_strength modifier remove ability002_sprint_jump
execute as @a[scores={ability002=0}] run attribute @s minecraft:generic.jump_strength modifier remove ability002_sneak_jump

execute as @a[scores={ability004=0}] run attribute @s minecraft:generic.step_height modifier remove ability004_step_height

execute as @a[scores={ability005=0}] run attribute @s minecraft:generic.water_movement_efficiency modifier remove ability005_water_movement_efficiency
execute as @a[scores={ability005=0}] run attribute @s minecraft:player.submerged_mining_speed modifier remove ability005_submerged_mining_speed

execute as @a[scores={ability014=0}] run attribute @s minecraft:generic.attack_damage modifier remove ability014_riding_damage

execute as @a[scores={ability015=0}] run attribute @s minecraft:generic.movement_efficiency modifier remove ability015_movement_efficiency

execute as @a[scores={ability026=0}] run attribute @s minecraft:generic.attack_damage modifier remove c198780b-1303-4fe0-bbb1-b2548a5056d1

# execute as @a[scores={ability028=1..},nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["ability028"]}}}]}] at @s anchored eyes unless block ^ ^ ^ cobweb unless block ^ ^ ^1 cobweb unless block ^ ^ ^2 cobweb unless block ^ ^ ^3 cobweb unless block ^ ^ ^4 cobweb unless block ^ ^ ^5 cobweb run clear @s iron_sword[custom_data={Tags:["ability028"]}]
# clear @a[scores={ability028=1..},predicate=ss_library:is_sneaking,nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["ability028"]}}}]}] iron_sword[custom_data={Tags:["ability028"]}]
# clear @a[scores={ability028=0},nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["ability028"]}}}]}] iron_sword[custom_data={Tags:["ability028"]}]

clear @a[scores={ability028=0}] iron_sword[custom_data={Tags:["ability028"]}]
execute as @a[scores={ability028=0}] run attribute @s minecraft:player.block_break_speed modifier remove ability028_block_break_speed

# effect give @a[scores={ability029-01=1..}] slowness 1 1 true
# effect give @a[scores={ability029-01=1..}] mining_fatigue 1 0 true
# execute at @a[scores={ability029-01=1..}] run particle campfire_cosy_smoke ~ ~ ~

execute as @a[scores={ability030=0}] run attribute @s minecraft:player.sneaking_speed modifier remove ability030_sneaking_speed