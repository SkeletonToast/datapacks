# manually enable/disable
execute if entity @s[scores={variantMonsters=0..}] store result storage gamerule_variant_monsters toggle int 1 run scoreboard players get @s variantMonsters

# if toggled
execute if entity @s[scores={variantMonsters=0..}] run return fail
execute store result score @s variantMonsters run data get storage gamerule_variant_monsters toggle
scoreboard players add @s variantMonsters 1
scoreboard players set @s[scores={variantMonsters=2..}] variantMonsters 0
execute store result storage gamerule_variant_monsters toggle int 1 run scoreboard players get @s variantMonsters

# setting phantom player
execute store result score $variantMonsters true run data get storage gamerule_variant_monsters toggle