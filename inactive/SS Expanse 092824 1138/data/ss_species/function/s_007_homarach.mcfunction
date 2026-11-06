team join Spiders @e[type=minecraft:spider]
team join Spiders @e[type=minecraft:cave_spider]
execute as @a[scores={species=007}] run attribute @s minecraft:generic.fall_damage_multiplier base set 0.5
execute as @a[scores={species=007},tag=HoldingCobwebMainhand] run attribute @s minecraft:generic.fall_damage_multiplier base set 0.1
scoreboard players set @a[scores={species=007}] ability030 1
scoreboard players set @a[scores={species=007,ItemSelected=0}] ability028 1
scoreboard players set @a[scores={species=007}] webbed_timer 0
effect clear @a[scores={species=007}] minecraft:poison
team join Spiders @a[scores={species=007}]
# execute as @a[scores={species=007}] run attribute @s minecraft:generic.movement_efficiency base set 1
    # doesn't work yet: https://bugs.mojang.com/browse/MC-271440

execute as @a[scores={species=007},predicate=ss_library:is_sneaking] unless entity @s[nbt={Inventory:[{id:"minecraft:cobweb"}]}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:cobweb
    # changed back to crouch at ronin's behest
execute as @a[scores={species=007,ItemSelected=0},predicate=ss_library:is_sneaking,nbt={Inventory:[{Slot:-106b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:cobweb"}]}] run item replace entity @s weapon.mainhand with minecraft:cobweb

tag @a[scores={species=007},tag=HoldingCobweb] remove HoldingCobweb
tag @a[scores={species=007},tag=HoldingCobwebMainhand] remove HoldingCobwebMainhand
tag @a[scores={species=007},tag=!HoldingCobweb,predicate=ss_species:holding_cobweb] add HoldingCobweb
tag @a[scores={species=007},tag=HoldingCobweb,nbt={SelectedItem:{id:"minecraft:cobweb"}}] add HoldingCobwebMainhand

execute as @a[scores={species=007},predicate=ss_species:in_mineshaft] run function ss_statuses:invigorated {"duration":"1","amplifier":"1"}

# cobwebs
execute as @a[scores={species=007}] run attribute @s minecraft:generic.gravity modifier remove species007_in_cobweb_gravity
execute as @a[scores={species=007,OnGround=0},tag=species007-01] run attribute @s minecraft:generic.gravity modifier add species007_in_cobweb_gravity -1 add_multiplied_total
execute as @a[scores={species=007,OnGround=0},tag=species007-01,x_rotation=90,predicate=ss_library:is_sneaking] at @s align y if block ~ ~-1 ~ #ss_library:nonsolidblocks run tp @s ~ ~-1 ~
execute as @a[scores={species=007,OnGround=0},tag=species007-01,x_rotation=270] at @s align y if block ~ ~1 ~ #ss_library:nonsolidblocks run tp @s ~ ~1 ~
    # execute as @a[scores={species=007,OnGround=0},tag=species007-02] unless entity @s[predicate=ss_library:is_sneaking] at @s align y run tp @s ~ ~ ~

effect give @a[scores={species=007},tag=species007-01] minecraft:invisibility 1 0 true
effect give @a[scores={species=007},tag=species007-01] minecraft:resistance 1 0 true
execute as @a[scores={species=007,ItemSelected=0},tag=species007-01] run function ss_statuses:alert
# execute as @a[scores={species=007,ability030-01=2..}] unless entity @s[scores={alert_active=1}] run function ss_statuses:alert

execute as @a[scores={species=007}] run attribute @s minecraft:generic.safe_fall_distance modifier remove species007_swing_safe_fall_distance

# COBWEB RAYCASTING
execute as @a[scores={species=007,OnGround=1,InWater=..1,Food=6..},tag=HoldingCobwebMainhand] at @s anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-0.4 ~ {width:0.59f,height:0.59f,response:1b,Tags:["species007_raycast"]}
execute as @a[scores={species=007,OnGround=0,InWater=..1,Food=6..},tag=HoldingCobwebMainhand] at @s anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-0.5 ~ {width:1f,height:1f,response:1b,Tags:["species007_raycast"]}
execute as @a[scores={species=007,InWater=..1,Food=6..},tag=HoldingCobwebMainhand] at @s unless entity @a[distance=0.1..10] anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-1.5 ~ {width:3f,height:3f,response:1b,Tags:["species007_raycast"]}
execute as @e[type=minecraft:interaction,tag=species007_raycast] if data entity @s interaction on target at @s[scores={species=007},tag=HoldingCobwebMainhand] anchored eyes positioned ^ ^ ^0.5 run function ss_species:s_007f_raycast_right_click
execute as @e[type=minecraft:interaction,tag=species007_raycast] if data entity @s attack on attacker at @s[scores={species=007},tag=HoldingCobwebMainhand] anchored eyes positioned ^ ^ ^1 run function ss_species:s_007f_raycast_left_click
# execute as @e[type=minecraft:interaction,tag=species007_raycast] if data entity @s attack on attacker at @s[scores={species=007,Food=10..},tag=HoldingCobwebMainhand,tag=!HomarachLeftClickRaytrace] anchored eyes positioned ^ ^ ^2 run function ss_library:raycast {"particle":"snowflake","particle_visibility":"@a","increment_distance":"0.5","max_lifetime":"20","run_on_completion":"execute positioned ^ ^ ^-1 run function ss_species:s_007f_left_click_cobweb"}

    # execute as @e[type=minecraft:interaction,tag=species007_raycast] if data entity @s attack on attacker as @s[scores={species=007,ItemSelected=0,OnGround=0},tag=HoldingCobweb] unless entity @s[predicate=ss_library:is_ascending] at @s run function ss_species:s_007f_swing_gravity
kill @e[type=minecraft:interaction,tag=species007_raycast,scores={Age=1..}]

execute as @a[scores={species=007,species007-01=1..}] unless entity @s[predicate=ss_species:is_rapidly_ascending] run attribute @s minecraft:generic.gravity modifier add species007_swing_gravity -10 add_multiplied_total
execute as @a[scores={species=007,species007-01=0}] run attribute @s minecraft:generic.gravity modifier remove species007_swing_gravity
scoreboard players remove @a[scores={species=007,species007-01=0..}] species007-01 1

tag @a remove HomarachRightClickRaytrace
tag @a remove HomarachLeftClickRaytrace

# nearby mining fatigue
execute as @a[scores={species=007}] at @s as @a[distance=..10] at @s unless entity @s[scores={species=007}] if block ~ ~ ~ cobweb run effect give @s mining_fatigue 1 4 true
execute as @a[scores={species=007}] at @s as @a[distance=..10] at @s unless entity @s[scores={species=007}] if block ~ ~1 ~ cobweb run effect give @s mining_fatigue 1 4 true

# poison touch
execute at @a[scores={species=007,DamageDealt=1..}] as @e[distance=..10] at @s on attacker if entity @s[scores={species=007,DamageDealt=1..}] run effect give @e[limit=1,distance=0] poison 5 0