# weapon_proficiency: swords, scythes, medium, superheavy+
scoreboard players add @s[scores={WeaponType=1}] weapon_proficiency 4
scoreboard players add @s[scores={WeaponType=4}] weapon_proficiency 4
scoreboard players add @s[scores={WeaponWeight=2}] weapon_proficiency 3
scoreboard players add @s[scores={WeaponWeight=4..}] weapon_proficiency 5

scoreboard players add @s WeaponDexterity 10
scoreboard players add @s WeaponStrength 10

# armor_proficiency: medium armor
scoreboard players add @s[scores={ArmorType=5..10}] armor_proficiency 25

# creature contract
execute as @s[scores={DamageDealt=1..}] as @e[type=#ss_lib:tameable,distance=..5] at @s on owner if entity @s[scores={of_origin=3,of_job=2,DamageDealt=1..}] as @n[type=#ss_lib:tameable,distance=0] run effect give @s strength 10 0 true
execute as @s[scores={DamageTaken=1..}] as @e[type=#ss_lib:tameable,distance=..5] at @s on owner if entity @s[scores={of_origin=3,of_job=2,DamageTaken=1..}] as @n[type=#ss_lib:tameable,distance=0] run effect give @s resistance 10 2 true

# combat art: prod
attribute @s[scores={SneakTime=1..10}] entity_interaction_range modifier add praetor_prod_entity_interaction_range 1 add_value
attribute @s[scores={SneakTime=1..10}] attack_damage modifier add praetor_prod_attack_damage -2 add_multiplied_total
attribute @s[scores={SneakTime=11..}] entity_interaction_range modifier remove praetor_prod_entity_interaction_range
attribute @s[scores={SneakTime=11..}] attack_damage modifier remove praetor_prod_attack_damage
attribute @s[scores={SneakTime=0}] entity_interaction_range modifier remove praetor_prod_entity_interaction_range
attribute @s[scores={SneakTime=0}] attack_damage modifier remove praetor_prod_attack_damage
execute at @s[scores={SneakTime=1..10,DamageDealt=1..}] anchored eyes positioned ^ ^ ^ run function of_characters:fighter/praetor/damage_effects
scoreboard players add @s[scores={SneakTime=1..10,DamageDealt=1..}] praetor_combo 40

# combat art: lunge
attribute @s[scores={praetor_sprint=1..10}] entity_interaction_range modifier add praetor_lunge_entity_interaction_range 0.5 add_value
attribute @s[scores={praetor_sprint=1..10}] attack_knockback modifier add praetor_lunge_attack_knockback 1 add_value
attribute @s[scores={praetor_sprint=11..}] entity_interaction_range modifier remove praetor_lunge_entity_interaction_range
attribute @s[scores={praetor_sprint=11..}] attack_knockback modifier remove praetor_lunge_attack_knockback
attribute @s[scores={praetor_sprint=0}] entity_interaction_range modifier remove praetor_lunge_entity_interaction_range
attribute @s[scores={praetor_sprint=0}] attack_knockback modifier remove praetor_lunge_attack_knockback
execute at @s[scores={praetor_sprint=1..10,DamageDealt=1..}] anchored eyes positioned ^ ^ ^ run function of_characters:fighter/praetor/damage_effects
scoreboard players operation @s praetor_sprint = @s SprintTime

# combat art: reposition
attribute @s gravity modifier remove praetor_reposition_gravity
scoreboard players remove @s[scores={OnGround=0,UsingShield=1,praetor_combo=1..}] praetor_combo 100
execute as @s[scores={OnGround=0,UsingShield=1,praetor_combo=1..}] at @s anchored eyes positioned ^ ^ ^2 run function ss_raycast:entity {"particle":"particle small_gust ~ ~ ~ 0.05 0.05 0.05 0 3 normal @a","max_lifetime":"40","increment_distance":"0.25","run_on_success":"function of_characters:fighter/praetor/reposition with entity @s"}

# combat art: repel
execute as @s[scores={SprintTime=1..20,OnGround=1,UsingShield=1,praetor_combo=1..}] at @s anchored feet rotated ~90 0 positioned ^1 ^ ^ positioned ~ ~1 ~ run function of_characters:fighter/praetor/repel_check with entity @s

# combo abilities
scoreboard players operation @s[scores={DamageDealt=1..}] praetor_combo += @s DamageDealt
effect give @s[scores={praetor_combo=20..}] speed 1 1 true
scoreboard players add @s[scores={praetor_combo=51..100}] aggressive_amount 10
scoreboard players add @s[scores={praetor_combo=101..150}] aggressive_amount 20
scoreboard players add @s[scores={praetor_combo=151..}] aggressive_amount 30
scoreboard players operation @s[scores={DamageTaken=1..}] praetor_combo -= @s DamageTaken

# combo_proficiency
scoreboard players operation @s[scores={praetor_combo=1..19}] weapon_proficiency += @s praetor_combo
scoreboard players add @s[scores={praetor_combo=20..}] weapon_proficiency 20