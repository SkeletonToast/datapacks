$execute as $(s) unless score @s InWater matches -1 run return fail
$execute as $(s) if entity @s[scores={InWater=0}] at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s InWater 1
$execute as $(s) if entity @s[scores={InWater=0}] at @s if block ~ ~1 ~ minecraft:water run scoreboard players set @s InWater 1
$execute as $(s) if entity @s[scores={InWater=0}] at @s if block ~ ~ ~ minecraft:water_cauldron run scoreboard players set @s InWater 1
$execute as $(s) if entity @s[scores={InWater=..1}] at @s anchored eyes if block ^ ^ ^ minecraft:water run scoreboard players set @s InWater 2
$execute as $(s) run scoreboard players set @s[scores={InWater=0},predicate=ss_lib:waterlogged_block_check_bottom] InWater 1
$execute as $(s) run scoreboard players set @s[scores={InWater=1},predicate=ss_lib:is/swimming] InWater 2
$execute as $(s) if entity @s[scores={InWater=1..}] on vehicle if entity @s[type=#minecraft:boat] on passengers run scoreboard players set @s InWater 0