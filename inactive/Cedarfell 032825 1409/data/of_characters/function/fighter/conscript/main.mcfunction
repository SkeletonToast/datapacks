# weapon_proficiency: swords, spears, (super)heavy
scoreboard players add @s[scores={WeaponType=1}] weapon_proficiency 4
scoreboard players add @s[scores={WeaponType=3}] weapon_proficiency 5
scoreboard players add @s[scores={WeaponWeight=3..4}] weapon_proficiency 3

scoreboard players add @s WeaponDexterity 6
scoreboard players add @s WeaponStrength 14

# armor_proficiency: heavyish armor
scoreboard players add @s[scores={ArmorType=8..}] armor_proficiency 20

# juggernaut
scoreboard players remove @s[scores={armor_proficiency=1}] of_encumbrance_armor 20
attribute @s knockback_resistance modifier add conscript_knockback_resistance 1000 add_multiplied_total
scoreboard players add @s[scores={ArmorType=10..}] weapon_proficiency 5

# camaraderie
execute at @s[scores={DamageDealt=1..}] as @a[scores={of_origin=2,of_job=2},distance=..10] run scoreboard players add @p[scores={of_origin=2,of_job=2},distance=0] conscript_count 1
# execute at @s[scores={DamageTaken=1..,DamageDealt=0}] as @a[scores={of_origin=2,of_job=2},distance=..10] run scoreboard players add @p[scores={of_origin=2,of_job=2},distance=0] conscript_count 1

attribute @s[scores={conscript_count=1..}] attack_damage modifier remove conscript_camaraderie_attack_damage
attribute @s[scores={conscript_count=1..}] armor modifier remove conscript_camaraderie_armor

# proficiency
scoreboard players operation @s[scores={conscript_count=3..}] generic_a = @s conscript_count
scoreboard players operation @s[scores={conscript_count=3..}] generic_a *= @s 3
scoreboard players operation @s[scores={conscript_count=3..}] weapon_proficiency += @s generic_a
scoreboard players operation @s[scores={conscript_count=3..}] armor_proficiency += @s generic_a
    scoreboard players operation @s[scores={conscript_count=3..}] armor_proficiency += @s generic_a

attribute @s[scores={conscript_count=3}] armor modifier add conscript_camaraderie_armor 1 add_value
attribute @s[scores={conscript_count=4}] armor modifier add conscript_camaraderie_armor 2 add_value
attribute @s[scores={conscript_count=5}] armor modifier add conscript_camaraderie_armor 3 add_value
attribute @s[scores={conscript_count=6}] armor modifier add conscript_camaraderie_armor 4 add_value
attribute @s[scores={conscript_count=7}] armor modifier add conscript_camaraderie_armor 5 add_value
attribute @s[scores={conscript_count=8}] armor modifier add conscript_camaraderie_armor 6 add_value

scoreboard players set @s[scores={conscript_count=1..}] conscript_count 0

# champion
    # execute at @s[scores={UsingShield=1}] anchored feet rotated ~90 0 positioned ^3 ^ ^ positioned ~ ~1 ~ run effect give @e[type=#ss_lib:hostile,distance=..3] slowness 1 9 true
    # execute at @s[scores={UsingShield=1}] anchored feet rotated ~90 0 positioned ^3 ^ ^ positioned ~ ~1 ~ run effect give @e[type=#ss_lib:hostile,distance=..3] slowness 5 2 true
    # execute at @s[scores={UsingShield=1}] anchored feet rotated ~90 0 positioned ^3 ^ ^ positioned ~ ~1 ~ as @e[type=#ss_lib:hostile,distance=..3] at @s anchored eyes run particle ominous_spawning ^ ^ ^ 0 0 0 1 20 normal
    # execute at @s[scores={UsingShield=1}] anchored feet rotated ~90 0 positioned ^3 ^ ^ run particle ominous_spawning ~ ~1 ~ 1 1 1 0 100 normal
    # execute at @s[scores={UsingShield=1}] anchored feet rotated ~90 0 positioned ^3 ^ ^ positioned ~ ~1 ~ if entity @e[type=#ss_lib:hostile,distance=..3] run playsound entity.allay.ambient_without_item player @s ^ ^ ^ 1 1.5
    # execute at @s[scores={UsingShield=1}] anchored feet rotated ~90 0 positioned ^3 ^ ^ positioned ~ ~1 ~ if entity @e[type=#ss_lib:hostile,distance=..3] run playsound block.bell.resonate player @s ^ ^ ^ 1 1.5
execute at @s anchored feet rotated ~90 0 positioned ^3 ^ ^ positioned ~ ~1 ~ run effect give @e[type=#ss_lib:hostile,distance=..3] slowness 1 3 true
execute at @s run effect give @e[type=#ss_lib:passive,distance=..10] resistance 1 3 true
execute as @s[scores={UsingShield=100..}] if predicate ss_lib:random_1_percent run function of_characters:fighter/conscript/shield_heal
execute as @s[scores={UsingShield=200..}] if predicate ss_lib:random_1_percent run function of_characters:fighter/conscript/shield_heal

# phalanx
execute as @s[scores={UsingShield=7..13,SneakTime=0}] run attribute @s movement_speed modifier add conscript_shielding_movement_speed 0.5 add_multiplied_total
execute as @s[scores={UsingShield=14,SneakTime=0}] run attribute @s movement_speed modifier remove conscript_shielding_movement_speed
execute as @s[scores={UsingShield=14..20,SneakTime=0}] run attribute @s movement_speed modifier add conscript_shielding_movement_speed 1.0 add_multiplied_total
execute as @s[scores={UsingShield=21,SneakTime=0}] run attribute @s movement_speed modifier remove conscript_shielding_movement_speed
execute as @s[scores={UsingShield=21..,SneakTime=0}] run attribute @s movement_speed modifier add conscript_shielding_movement_speed 2.0 add_multiplied_total
execute as @s[scores={UsingShield=1..,SneakTime=1..}] run scoreboard players add @s encumbered_amount 50
execute as @s[scores={UsingShield=1..,SneakTime=1..}] run function ss_statuses:fortified {"multiplier":"1.0"}

execute at @s run scoreboard players set @e[type=!#ss_lib:not_alive,type=!#ss_lib:hostile,distance=..10] conscript_phalanx 0
scoreboard players add @s conscript_phalanx 1
execute at @s[scores={UsingShield=1..60,SneakTime=0}] anchored feet rotated ~90 0 positioned ^-4 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/conscript/phalanx {"distance":"3","score":"1","delta":"1"}
execute at @s[scores={UsingShield=1..60,SneakTime=0}] anchored feet positioned ^4 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/conscript/phalanx {"distance":"3","score":"1","delta":"1"}
execute at @s[scores={UsingShield=1..60,SneakTime=0}] anchored feet positioned ^-4 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/conscript/phalanx {"distance":"3","score":"1","delta":"1"}
execute at @s[scores={UsingShield=1..,SneakTime=1..}] anchored feet rotated ~90 0 positioned ^-5 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/conscript/phalanx {"distance":"4","score":"2","delta":"1.5"}
execute at @s[scores={UsingShield=1..,SneakTime=1..}] anchored feet positioned ^5 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/conscript/phalanx {"distance":"4","score":"2","delta":"1.5"}
execute at @s[scores={UsingShield=1..,SneakTime=1..}] anchored feet positioned ^-5 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/conscript/phalanx {"distance":"4","score":"2","delta":"1.5"}
execute at @s[scores={UsingShield=61..,SneakTime=0}] anchored feet rotated ~90 0 positioned ^-5 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/conscript/phalanx {"distance":"4","score":"2","delta":"1.5"}
execute at @s[scores={UsingShield=61..,SneakTime=0}] anchored feet positioned ^5 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/conscript/phalanx {"distance":"4","score":"2","delta":"1.5"}
execute at @s[scores={UsingShield=61..,SneakTime=0}] anchored feet positioned ^-5 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/conscript/phalanx {"distance":"4","score":"2","delta":"1.5"}

scoreboard players add @a[scores={conscript_phalanx=1..,UsingShield=1..}] conscript_phalanx 1

execute at @s run effect give @e[type=!#ss_lib:not_alive,type=!#ss_lib:hostile,distance=..10,scores={conscript_phalanx=2}] resistance 1 0 true
execute at @s run effect give @e[type=!#ss_lib:not_alive,type=!#ss_lib:hostile,distance=..10,scores={conscript_phalanx=4}] resistance 1 1 true
execute at @s run effect give @e[type=!#ss_lib:not_alive,type=!#ss_lib:hostile,distance=..10,scores={conscript_phalanx=6}] resistance 1 2 true
execute at @s run effect give @e[type=!#ss_lib:not_alive,type=!#ss_lib:hostile,distance=..10,scores={conscript_phalanx=8..}] resistance 1 3 true

execute at @s as @e[type=!#ss_lib:not_alive,type=!#ss_lib:hostile,distance=..10,scores={conscript_phalanx=2..3}] if predicate ss_lib:random_50_percent at @s anchored eyes run particle minecraft:small_gust ^ ^ ^ 0.3 0.3 0.3 0 1 normal @a
execute at @s as @e[type=!#ss_lib:not_alive,type=!#ss_lib:hostile,distance=..10,scores={conscript_phalanx=3..4}] if predicate ss_lib:random_50_percent at @s anchored eyes run particle minecraft:end_rod ^ ^ ^ 0.3 0.3 0.3 0 1 normal @a[distance=0.1..]
execute at @s as @e[type=!#ss_lib:not_alive,type=!#ss_lib:hostile,distance=..10,scores={conscript_phalanx=4..5}] at @s anchored eyes run particle minecraft:small_gust ^ ^ ^ 0.3 0.3 0.3 0 1 normal @a
execute at @s as @e[type=!#ss_lib:not_alive,type=!#ss_lib:hostile,distance=..10,scores={conscript_phalanx=5..6}] at @s anchored eyes run particle minecraft:end_rod ^ ^ ^ 0.3 0.3 0.3 0 1 normal @a[distance=0.1..]

execute at @s[scores={UsingShield=1..,SneakTime=1..,conscript_phalanx_damage=1..}] run effect give @e[distance=..10] weakness 1 0 true
scoreboard players set @a conscript_phalanx_damage 0