tag @s add VariantMonster
tag @s add Fogtouched

data merge entity @s {Silent:1b}
# data merge entity @s {PersistenceRequired:1b}

execute as @a[distance=..100] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.3 0.5

# attributes
attribute @s armor base set 30
attribute @s step_height base set 2
attribute @s knockback_resistance base set 100
attribute @s max_health base set 200
data merge entity @s {Health:200f}
attribute @s fall_damage_multiplier base set 0
attribute @s scale base set 1.5
attribute @s follow_range base set 50
attribute @s movement_speed modifier add fogtouched_movement_speed 0.5 add_multiplied_base
attribute @s attack_damage modifier add fogtouched_attack_damage 1 add_multiplied_base
data merge entity @s[type=creeper] {Fuse:1000}

# loot
execute if predicate ss_lib:random_50_percent run data merge entity @s {DeathLootTable:"minecraft:chests/abandoned_mineshaft"}
execute if predicate ss_lib:random_50_percent run data merge entity @s {DeathLootTable:"minecraft:chests/underwater_ruin_small"}
execute if predicate ss_lib:random_50_percent run data merge entity @s {DeathLootTable:"minecraft:chests/jungle_temple"}

execute if predicate ss_lib:random_50_percent if predicate ss_lib:random_50_percent run data merge entity @s {DeathLootTable:"chests/trial_chambers/reward_rare"}
execute if predicate ss_lib:random_50_percent if predicate ss_lib:random_50_percent run data merge entity @s {DeathLootTable:"minecraft:chests/end_city_treasure"}
execute if predicate ss_lib:random_50_percent if predicate ss_lib:random_50_percent run data merge entity @s {DeathLootTable:"minecraft:chests/ancient_city"}