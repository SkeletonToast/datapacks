# weapon_proficiency: axes, whips, ranged, light
scoreboard players add @s[scores={WeaponType=2}] weapon_proficiency 4
scoreboard players add @s[scores={WeaponType=6}] weapon_proficiency 5
scoreboard players add @s[scores={WeaponType=7..9}] weapon_proficiency 8
scoreboard players add @s[scores={WeaponWeight=1..2}] weapon_proficiency 4

scoreboard players add @s WeaponDexterity 14
scoreboard players add @s WeaponStrength 6

# armor_proficiency: light or no armor
scoreboard players add @s[scores={ArmorType=0..7}] armor_proficiency 40

# "adaptive fighter"
scoreboard players add @s[scores={armor_proficiency=10..,WeaponType=1..}] weapon_proficiency 5
scoreboard players add @s[scores={weapon_proficiency=10..,Armor=2..}] armor_proficiency 30

# agility
scoreboard players add @s trait001 1

# the hunt
scoreboard players set @s[scores={hunted_timer=1..}] hunted_timer 0
execute as @s[scores={DamageDealt=10..}] as @e[type=!#ss_lib:not_alive,distance=..5] at @s on attacker if entity @s[scores={of_origin=1,of_job=2,DamageDealt=10..}] run scoreboard players operation @n[type=!#ss_lib:not_alive,distance=0] hunted_timer += @s DamageDealt
scoreboard players operation @s[scores={DamageDealt=10..}] hunting_timer += @s DamageDealt
execute at @s[scores={DamageDealt=10..}] as @e[type=!#ss_lib:not_alive,type=!player,distance=..10] at @s on attacker if entity @s[scores={of_origin=1,of_job=2,DamageDealt=10..}] run damage @n[type=!#ss_lib:not_alive,type=!player,distance=0] 6 player_attack by @s from @s
# execute at @s unless entity @e[scores={hunted_timer=1..},distance=10..30] run attribute @s step_height modifier remove hunter_predator_step_height

# predator
scoreboard players set @s[scores={ItemSelected=0}] trait004 1
execute as @s[scores={WeaponType=1..,SneakTime=20..}] unless entity @s[predicate=ss_lib:is_moving] run function ss_statuses:alert

# precise strikes
execute as @s[scores={DamageDealt=10..}] as @e[type=!#ss_lib:not_alive,distance=..5] at @s on attacker if entity @s[scores={of_origin=1,of_job=2,DamageDealt=10..}] run scoreboard players add @n[type=!#ss_lib:not_alive,distance=0] bleeding_timer 10
execute as @s[scores={DamageDealt=10..},predicate=ss_lib:crit] as @e[type=!#ss_lib:not_alive,distance=..5] at @s on attacker if entity @s[scores={of_origin=1,of_job=2,DamageDealt=10..},predicate=ss_lib:crit] run scoreboard players add @n[type=!#ss_lib:not_alive,distance=0] bleeding_timer 20