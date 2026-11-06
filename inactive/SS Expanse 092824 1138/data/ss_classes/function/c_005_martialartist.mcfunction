# damage increases based on what armor you're wearing
# it'll cap out at 10/20 damage for light/heavy (ground/airborne) attack
# different combat arts can be executed with different combinations, that have to be executed in maybeeeee 3/4 of a second
    # two crouch and then crouch hold - seismic slam
    # two crouch and then jump - big jump or something idk

# shadowbringers and arcane soldiers cannot have this class

scoreboard players set @a[scores={species=004}] class005 0
scoreboard players set @a[scores={species=018}] class005 0

scoreboard players set @a[scores={class005=1..,ItemSelected=0}] WeaponWeight 3

tag @a[scores={class005=1..,OnGround=1,ItemSelected=0},tag=!GroundedAttack] add GroundedAttack
tag @a[scores={class005=1..,OnGround=0,ItemSelected=0},tag=!AirborneAttack] add AirborneAttack
tag @a[scores={class005=1..}] remove GroundedAttackAssigned
tag @a[scores={class005=1..}] remove AirborneAttackAssigned

execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..,Armor=20..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_grounded_attack_damage 9 add_value
execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..,Armor=20..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_grounded_attack_speed -2 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..,Armor=20..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_airborne_attack_damage 17 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..,Armor=20..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_airborne_attack_speed -3 add_value

execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..,Armor=17..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_grounded_attack_damage 7 add_value
execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..,Armor=17..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_grounded_attack_speed -2 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..,Armor=17..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_airborne_attack_damage 13 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..,Armor=17..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_airborne_attack_speed -3 add_value

execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..,Armor=14..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_grounded_attack_damage 7 add_value
execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..,Armor=14..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_grounded_attack_speed -2.1 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..,Armor=14..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_airborne_attack_damage 12 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..,Armor=14..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_airborne_attack_speed -3.1 add_value

execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..,Armor=11..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_grounded_attack_damage 5 add_value
execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..,Armor=11..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_grounded_attack_speed -2.2 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..,Armor=11..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_airborne_attack_damage 7 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..,Armor=11..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_airborne_attack_speed -3.2 add_value

execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_grounded_attack_damage 4 add_value
execute as @a[tag=!GroundedAttackAssigned,scores={class005=1..},tag=GroundedAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_grounded_attack_speed -2.2 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_damage modifier add class005_airborne_attack_damage 6 add_value
execute as @a[tag=!AirborneAttackAssigned,scores={class005=1..},tag=AirborneAttack] run attribute @s minecraft:generic.attack_speed modifier add class005_airborne_attack_speed -3.2 add_value

execute as @a[tag=!GroundedAttack] run attribute @s minecraft:generic.attack_damage modifier remove class005_grounded_attack_damage
execute as @a[tag=!GroundedAttack] run attribute @s minecraft:generic.attack_speed modifier remove class005_grounded_attack_speed
execute as @a[tag=!AirborneAttack] run attribute @s minecraft:generic.attack_damage modifier remove class005_airborne_attack_damage
execute as @a[tag=!AirborneAttack] run attribute @s minecraft:generic.attack_speed modifier remove class005_airborne_attack_speed

tag @a[scores={ItemSelected=1}] remove GroundedAttack
tag @a[scores={ItemSelected=1}] remove AirborneAttack
tag @a[scores={OnGround=0}] remove GroundedAttack
tag @a[scores={OnGround=1}] remove AirborneAttack

# execute at @a[scores={OnGround=1}] anchored eyes run summon creeper ^ ^ ^-1 {ExplosionRadius:-1,Fuse:0,ignited:1b,Silent:1b,Invisible:1b}