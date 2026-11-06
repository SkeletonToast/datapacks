# "SEASKIN"
scoreboard players add @a ability005-06 0

execute as @a[scores={ability005=1..}] run attribute @s minecraft:generic.water_movement_efficiency modifier add ability005_water_movement_efficiency 1 add_value
execute as @a[scores={ability005=1..}] run attribute @s minecraft:player.submerged_mining_speed modifier add ability005_submerged_mining_speed 1 add_value
effect give @a[scores={ability005=1..,InWater=1..}] minecraft:conduit_power 1 0 true

execute as @a[scores={ability005=1..,InWater=1..},predicate=ss_library:is_swimming] run attribute @s minecraft:generic.water_movement_efficiency modifier remove ability005_water_movement_efficiency
execute as @a[scores={species=011},predicate=ss_library:holding_trident] run attribute @s minecraft:generic.water_movement_efficiency modifier add ability005_water_movement_efficiency 1 add_value
effect give @a[scores={ability005=1..,InWater=1..},predicate=ss_library:is_swimming] minecraft:dolphins_grace 1 4 true
execute as @a[scores={ability005=1..,InWater=1..}] unless entity @s[predicate=ss_library:is_swimming] run effect clear @s minecraft:dolphins_grace
effect give @a[scores={ability005=1..,InWater=2,Armorless=1}] minecraft:resistance 1 1 true
effect give @a[scores={ability005=1..,ability005-06=1..,InWater=2}] minecraft:haste 1 1 true

scoreboard players add @a[scores={ability005=1..,InWater=2}] ability005-01 1
scoreboard players set @a[scores={ability005=1..,InWater=..1}] ability005-01 0
effect give @a[scores={ability005-01=200}] minecraft:absorption 11 0 true
scoreboard players set @a[scores={ability005-01=201..}] ability005-01 0

# underwater haste calculation (DISCARDED IN EXCHANGE FOR SUBMERGED_MINING_SPEED ATTRIBUTE)
    # execute as @a[scores={ability005=1..,ability005-06=0,OnGround=0,InWater=2}] run attribute @s minecraft:player.block_break_speed modifier add ability005_water_mining_speed_3 3 add_multiplied_base
    # scoreboard players set @a[scores={ability005=1..,DamageDealt=1..}] ability005-06 100
    # scoreboard players set @a[scores={ability005=1..,DamageTaken=1..}] ability005-06 100
    # execute as @a[scores={ability005=1..,DamageDealt=1..,InWater=2}] run attribute @s minecraft:player.block_break_speed modifier remove ability005_water_mining_speed_3
    # scoreboard players remove @a[scores={ability005-06=1..}] ability005-06 1

    # scoreboard players add @a[scores={ability005=1..,OnGround=1,InWater=2}] ability005-03 1
    # scoreboard players set @a[scores={ability005=1..,OnGround=0,InWater=2}] ability005-03 0
    # execute as @a[scores={ability005=1..,ability005-03=1,InWater=2}] run attribute @s minecraft:player.block_break_speed modifier remove ability005_water_mining_speed_3

    # execute as @a[scores={ability005=1..,InWater=..1}] run attribute @s minecraft:player.block_break_speed modifier remove ability005_water_mining_speed_3

    # execute as @a[scores={ability005=1..,ability005-06=0,OnGround=1,InWater=2}] run attribute @s minecraft:player.block_break_speed modifier add ability005_water_mining_speed_4 4 add_multiplied_base
    # execute as @a[scores={ability005=1..,DamageDealt=1..,InWater=2}] run attribute @s minecraft:player.block_break_speed modifier remove ability005_water_mining_speed_4
    # execute as @a[scores={ability005=1..,ability005-03=1,InWater=2}] run attribute @s minecraft:player.block_break_speed modifier remove ability005_water_mining_speed_4
    # execute as @a[scores={ability005=1..,InWater=..1}] run attribute @s minecraft:player.block_break_speed modifier remove ability005_water_mining_speed_4